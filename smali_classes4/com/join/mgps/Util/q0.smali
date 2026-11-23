.class public Lcom/join/mgps/Util/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/q0$c;,
        Lcom/join/mgps/Util/q0$d;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "FloatBallPrefs"

.field private static final B:Ljava/lang/String; = "lastX"

.field private static final C:Ljava/lang/String; = "lastY"

.field private static final D:Ljava/lang/String; = "isHalfShow"

.field private static final E:J = 0x7d0L

.field private static final z:Ljava/lang/String; = "FloatBallManager"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/WindowManager;

.field private c:Landroid/view/WindowManager$LayoutParams;

.field private d:Landroid/view/WindowManager$LayoutParams;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/content/SharedPreferences;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/join/mgps/Util/q0$d;

.field private m:Z

.field private n:Z

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:I

.field private t:I

.field private u:Lcom/join/mgps/Util/q0$c;

.field private v:Landroid/os/Handler;

.field private w:Lcom/join/mgps/pref/PrefDef_;

.field private x:Z

.field y:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/Util/q0;->m:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/Util/q0;->n:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/Util/q0;->x:Z

    .line 10
    .line 11
    new-instance v1, Lcom/join/mgps/Util/q0$b;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/join/mgps/Util/q0$b;-><init>(Lcom/join/mgps/Util/q0;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/join/mgps/Util/q0;->y:Ljava/lang/Runnable;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/join/mgps/Util/q0;->a:Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const v2, 0x7f071294

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    float-to-int v1, v1

    .line 50
    iput v1, p0, Lcom/join/mgps/Util/q0;->j:I

    .line 51
    .line 52
    const-string v1, "window"

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroid/view/WindowManager;

    .line 59
    .line 60
    iput-object v1, p0, Lcom/join/mgps/Util/q0;->b:Landroid/view/WindowManager;

    .line 61
    .line 62
    const-string v1, "FloatBallPrefs"

    .line 63
    .line 64
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/join/mgps/Util/q0;->g:Landroid/content/SharedPreferences;

    .line 69
    .line 70
    new-instance v0, Landroid/os/Handler;

    .line 71
    .line 72
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/join/mgps/Util/q0;->v:Landroid/os/Handler;

    .line 76
    .line 77
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 78
    .line 79
    invoke-direct {v0, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/join/mgps/Util/q0;->w:Lcom/join/mgps/pref/PrefDef_;

    .line 83
    .line 84
    new-instance p1, Lcom/join/mgps/Util/q0$c;

    .line 85
    .line 86
    const/4 v0, 0x0

    .line 87
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/Util/q0$c;-><init>(Lcom/join/mgps/Util/q0;Lcom/join/mgps/Util/q0$a;)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lcom/join/mgps/Util/q0;->u:Lcom/join/mgps/Util/q0$c;

    .line 91
    .line 92
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->p()V

    .line 93
    .line 94
    .line 95
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->n()V

    .line 96
    .line 97
    .line 98
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->o()V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->s()V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/Util/q0;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/Util/q0;->l(Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic b(Lcom/join/mgps/Util/q0;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/q0;->f:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/Util/q0;)Landroid/view/WindowManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/q0;->b:Landroid/view/WindowManager;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/Util/q0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/Util/q0;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lcom/join/mgps/Util/q0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/Util/q0;->n:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lcom/join/mgps/Util/q0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget v1, p0, Lcom/join/mgps/Util/q0;->j:I

    .line 8
    .line 9
    neg-int v1, v1

    .line 10
    div-int/lit8 v1, v1, 0x2

    .line 11
    .line 12
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget v2, p0, Lcom/join/mgps/Util/q0;->h:I

    .line 16
    .line 17
    iget v3, p0, Lcom/join/mgps/Util/q0;->j:I

    .line 18
    .line 19
    sub-int v4, v2, v3

    .line 20
    .line 21
    if-ne v1, v4, :cond_1

    .line 22
    .line 23
    div-int/lit8 v3, v3, 0x2

    .line 24
    .line 25
    sub-int/2addr v2, v3

    .line 26
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 30
    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    neg-int v1, v3

    .line 34
    div-int/lit8 v1, v1, 0x2

    .line 35
    .line 36
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget v2, p0, Lcom/join/mgps/Util/q0;->i:I

    .line 40
    .line 41
    sub-int v4, v2, v3

    .line 42
    .line 43
    if-ne v1, v4, :cond_3

    .line 44
    .line 45
    div-int/lit8 v3, v3, 0x2

    .line 46
    .line 47
    sub-int/2addr v2, v3

    .line 48
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 49
    .line 50
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/join/mgps/Util/q0;->n:Z

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->x()V

    .line 54
    .line 55
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v1, "\u5e94\u7528\u534a\u663e\u793a\u4f4d\u7f6e: x="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 67
    .line 68
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", y="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 79
    .line 80
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/content/Context;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method private h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 4
    .line 5
    iget v2, p0, Lcom/join/mgps/Util/q0;->h:I

    .line 6
    .line 7
    iget v3, p0, Lcom/join/mgps/Util/q0;->j:I

    .line 8
    .line 9
    add-int v4, v1, v3

    .line 10
    .line 11
    sub-int/2addr v2, v4

    .line 12
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 13
    .line 14
    iget v4, p0, Lcom/join/mgps/Util/q0;->i:I

    .line 15
    .line 16
    add-int/2addr v3, v0

    .line 17
    sub-int/2addr v4, v3

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    if-ne v3, v1, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 34
    .line 35
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-ne v3, v2, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    iget v1, p0, Lcom/join/mgps/Util/q0;->h:I

    .line 43
    .line 44
    iget v2, p0, Lcom/join/mgps/Util/q0;->j:I

    .line 45
    .line 46
    sub-int/2addr v1, v2

    .line 47
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    if-ne v3, v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 53
    .line 54
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 58
    .line 59
    iget v1, p0, Lcom/join/mgps/Util/q0;->i:I

    .line 60
    .line 61
    iget v2, p0, Lcom/join/mgps/Util/q0;->j:I

    .line 62
    .line 63
    sub-int/2addr v1, v2

    .line 64
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 65
    .line 66
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->x()V

    .line 67
    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v1, "\u5438\u9644\u5230\u6700\u8fd1\u8fb9\u7f18: x="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 80
    .line 81
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", y="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 92
    .line 93
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method private i(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dpValue"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 22
    .line 23
    mul-float p1, p1, v0

    .line 24
    .line 25
    const/high16 v0, 0x3f000000    # 0.5f

    .line 26
    .line 27
    add-float/2addr p1, v0

    .line 28
    float-to-int p1, p1

    .line 29
    return p1
.end method

.method private k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->l:Lcom/join/mgps/Util/q0$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/join/mgps/Util/q0$d;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private l(Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    if-eq v0, v2, :cond_3

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v0, v3, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget v1, p0, Lcom/join/mgps/Util/q0;->o:F

    .line 20
    .line 21
    sub-float/2addr v0, v1

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget v1, p0, Lcom/join/mgps/Util/q0;->p:F

    .line 27
    .line 28
    sub-float/2addr p1, v1

    .line 29
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/high16 v3, 0x40a00000    # 5.0f

    .line 34
    .line 35
    cmpl-float v1, v1, v3

    .line 36
    .line 37
    if-gtz v1, :cond_1

    .line 38
    .line 39
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    cmpl-float v1, v1, v3

    .line 44
    .line 45
    if-lez v1, :cond_2

    .line 46
    .line 47
    :cond_1
    iput-boolean v2, p0, Lcom/join/mgps/Util/q0;->m:Z

    .line 48
    .line 49
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 50
    .line 51
    iget v3, p0, Lcom/join/mgps/Util/q0;->q:F

    .line 52
    .line 53
    add-float/2addr v3, v0

    .line 54
    float-to-int v0, v3

    .line 55
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 56
    .line 57
    iget v0, p0, Lcom/join/mgps/Util/q0;->r:F

    .line 58
    .line 59
    add-float/2addr v0, p1

    .line 60
    float-to-int p1, v0

    .line 61
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->x()V

    .line 64
    .line 65
    .line 66
    :cond_2
    return v2

    .line 67
    :cond_3
    iget-boolean p1, p0, Lcom/join/mgps/Util/q0;->m:Z

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->h()V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->t()V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->k()V

    .line 79
    .line 80
    .line 81
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/Util/q0;->v:Landroid/os/Handler;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->u:Lcom/join/mgps/Util/q0$c;

    .line 84
    .line 85
    const-wide/16 v3, 0x7d0

    .line 86
    .line 87
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 88
    .line 89
    .line 90
    iput-boolean v1, p0, Lcom/join/mgps/Util/q0;->m:Z

    .line 91
    .line 92
    return v2

    .line 93
    :cond_5
    iput-boolean v1, p0, Lcom/join/mgps/Util/q0;->m:Z

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iput v0, p0, Lcom/join/mgps/Util/q0;->o:F

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    iput p1, p0, Lcom/join/mgps/Util/q0;->p:F

    .line 106
    .line 107
    iget-object p1, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 108
    .line 109
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 110
    .line 111
    int-to-float v0, v0

    .line 112
    iput v0, p0, Lcom/join/mgps/Util/q0;->q:F

    .line 113
    .line 114
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 115
    .line 116
    int-to-float p1, p1

    .line 117
    iput p1, p0, Lcom/join/mgps/Util/q0;->r:F

    .line 118
    .line 119
    iget-object p1, p0, Lcom/join/mgps/Util/q0;->v:Landroid/os/Handler;

    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->u:Lcom/join/mgps/Util/q0$c;

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 124
    .line 125
    .line 126
    iget-boolean p1, p0, Lcom/join/mgps/Util/q0;->n:Z

    .line 127
    .line 128
    if-eqz p1, :cond_6

    .line 129
    .line 130
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->r()V

    .line 131
    .line 132
    .line 133
    :cond_6
    iget-boolean p1, p0, Lcom/join/mgps/Util/q0;->x:Z

    .line 134
    .line 135
    if-eqz p1, :cond_7

    .line 136
    .line 137
    iget-object p1, p0, Lcom/join/mgps/Util/q0;->v:Landroid/os/Handler;

    .line 138
    .line 139
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->y:Ljava/lang/Runnable;

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/join/mgps/Util/q0;->y:Ljava/lang/Runnable;

    .line 145
    .line 146
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 147
    .line 148
    .line 149
    iput-boolean v1, p0, Lcom/join/mgps/Util/q0;->x:Z

    .line 150
    .line 151
    :cond_7
    return v2
.end method

.method private n()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    const v3, 0x7f0d0599

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/join/mgps/Util/q0;->e:Landroid/view/View;

    .line 22
    .line 23
    new-instance v1, Lcom/join/mgps/Util/q0$a;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/join/mgps/Util/q0$a;-><init>(Lcom/join/mgps/Util/q0;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private o()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 7
    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v2, 0x1a

    .line 11
    .line 12
    if-lt v1, v2, :cond_0

    .line 13
    .line 14
    const/16 v1, 0x3e8

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v1, 0x7d5

    .line 18
    .line 19
    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 20
    .line 21
    const v1, 0x4000208

    .line 22
    .line 23
    .line 24
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 25
    .line 26
    const v1, 0x800033

    .line 27
    .line 28
    .line 29
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 30
    .line 31
    const/4 v1, -0x3

    .line 32
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 33
    .line 34
    iget v1, p0, Lcom/join/mgps/Util/q0;->j:I

    .line 35
    .line 36
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 37
    .line 38
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 39
    .line 40
    return-void
.end method

.method private p()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InternalInsetResource"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->b:Landroid/view/WindowManager;

    .line 9
    .line 10
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iput v1, p0, Lcom/join/mgps/Util/q0;->h:I

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->b:Landroid/view/WindowManager;

    .line 21
    .line 22
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    iput v1, p0, Lcom/join/mgps/Util/q0;->i:I

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "dimen"

    .line 37
    .line 38
    const-string v2, "android"

    .line 39
    .line 40
    const-string v3, "status_bar_height"

    .line 41
    .line 42
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-lez v0, :cond_1

    .line 47
    .line 48
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iput v0, p0, Lcom/join/mgps/Util/q0;->k:I

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/join/mgps/Util/q0;->k:I

    .line 65
    .line 66
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v1, "\u5c4f\u5e55\u5c3a\u5bf8\u521d\u59cb\u5316: width="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget v1, p0, Lcom/join/mgps/Util/q0;->h:I

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v1, ", height="

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget v1, p0, Lcom/join/mgps/Util/q0;->i:I

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, ", \u72b6\u6001\u680f\u9ad8\u5ea6="

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget v1, p0, Lcom/join/mgps/Util/q0;->k:I

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method private r()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/Util/q0;->n:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 7
    .line 8
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 9
    .line 10
    iget v2, p0, Lcom/join/mgps/Util/q0;->j:I

    .line 11
    .line 12
    neg-int v3, v2

    .line 13
    div-int/lit8 v3, v3, 0x2

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    if-ne v1, v3, :cond_1

    .line 17
    .line 18
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget v3, p0, Lcom/join/mgps/Util/q0;->h:I

    .line 22
    .line 23
    div-int/lit8 v5, v2, 0x2

    .line 24
    .line 25
    sub-int v5, v3, v5

    .line 26
    .line 27
    if-ne v1, v5, :cond_2

    .line 28
    .line 29
    sub-int/2addr v3, v2

    .line 30
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 34
    .line 35
    neg-int v3, v2

    .line 36
    div-int/lit8 v3, v3, 0x2

    .line 37
    .line 38
    if-ne v1, v3, :cond_3

    .line 39
    .line 40
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    iget v3, p0, Lcom/join/mgps/Util/q0;->i:I

    .line 44
    .line 45
    div-int/lit8 v5, v2, 0x2

    .line 46
    .line 47
    sub-int v5, v3, v5

    .line 48
    .line 49
    if-ne v1, v5, :cond_4

    .line 50
    .line 51
    sub-int/2addr v3, v2

    .line 52
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 53
    .line 54
    :cond_4
    :goto_0
    iput-boolean v4, p0, Lcom/join/mgps/Util/q0;->n:Z

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->x()V

    .line 57
    .line 58
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v1, "\u6062\u590d\u5b8c\u5168\u663e\u793a\u4f4d\u7f6e: x="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 70
    .line 71
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", y="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 82
    .line 83
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->g:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/Util/q0;->h:I

    .line 4
    .line 5
    iget v2, p0, Lcom/join/mgps/Util/q0;->j:I

    .line 6
    .line 7
    sub-int/2addr v1, v2

    .line 8
    const-string v2, "lastX"

    .line 9
    .line 10
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/join/mgps/Util/q0;->s:I

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->g:Landroid/content/SharedPreferences;

    .line 17
    .line 18
    iget v1, p0, Lcom/join/mgps/Util/q0;->i:I

    .line 19
    .line 20
    div-int/lit8 v1, v1, 0x2

    .line 21
    .line 22
    const-string v2, "lastY"

    .line 23
    .line 24
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/join/mgps/Util/q0;->t:I

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->g:Landroid/content/SharedPreferences;

    .line 31
    .line 32
    const-string v1, "isHalfShow"

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iput-boolean v0, p0, Lcom/join/mgps/Util/q0;->n:Z

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 42
    .line 43
    iget v1, p0, Lcom/join/mgps/Util/q0;->s:I

    .line 44
    .line 45
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 46
    .line 47
    iget v1, p0, Lcom/join/mgps/Util/q0;->t:I

    .line 48
    .line 49
    iget v2, p0, Lcom/join/mgps/Util/q0;->k:I

    .line 50
    .line 51
    sub-int/2addr v1, v2

    .line 52
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v1, "\u6062\u590d\u4e0a\u6b21\u4f4d\u7f6e: x="

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v1, p0, Lcom/join/mgps/Util/q0;->s:I

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v1, ", y="

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    iget v1, p0, Lcom/join/mgps/Util/q0;->t:I

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, ", \u534a\u663e\u793a\u72b6\u6001="

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-boolean v1, p0, Lcom/join/mgps/Util/q0;->n:Z

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method private t()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 4
    .line 5
    iget v1, p0, Lcom/join/mgps/Util/q0;->k:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->g:Landroid/content/SharedPreferences;

    .line 9
    .line 10
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 15
    .line 16
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 17
    .line 18
    const-string v3, "lastX"

    .line 19
    .line 20
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    const-string v2, "lastY"

    .line 24
    .line 25
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 26
    .line 27
    .line 28
    const-string v2, "isHalfShow"

    .line 29
    .line 30
    iget-boolean v3, p0, Lcom/join/mgps/Util/q0;->n:Z

    .line 31
    .line 32
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    .line 35
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 39
    .line 40
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 41
    .line 42
    iput v1, p0, Lcom/join/mgps/Util/q0;->s:I

    .line 43
    .line 44
    iput v0, p0, Lcom/join/mgps/Util/q0;->t:I

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "\u4fdd\u5b58\u5f53\u524d\u4f4d\u7f6e: x="

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 57
    .line 58
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v2, ", y="

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, ", \u534a\u663e\u793a\u72b6\u6001="

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-boolean v0, p0, Lcom/join/mgps/Util/q0;->n:Z

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method private x()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->b:Landroid/view/WindowManager;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->e:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->b:Landroid/view/WindowManager;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->e:Landroid/view/View;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 27
    .line 28
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->b:Landroid/view/WindowManager;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->e:Landroid/view/View;

    .line 35
    .line 36
    iget-object v2, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 37
    .line 38
    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "\u66f4\u65b0\u60ac\u6d6e\u7403\u4f4d\u7f6e\u5931\u8d25: "

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public j()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->e:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->v:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->e:Landroid/view/View;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->b:Landroid/view/WindowManager;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->e:Landroid/view/View;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->f:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->b:Landroid/view/WindowManager;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->f:Landroid/view/View;

    .line 43
    .line 44
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v2, "\u9690\u85cf\u60ac\u6d6e\u7403\u5931\u8d25: "

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/Util/q0;->a:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/Util/q0;->b:Landroid/view/WindowManager;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/Util/q0;->e:Landroid/view/View;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/Util/q0;->v:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method

.method public u(Lcom/join/mgps/Util/q0$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/q0;->l:Lcom/join/mgps/Util/q0$d;

    .line 2
    .line 3
    return-void
.end method

.method public v(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 18
    .line 19
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 20
    .line 21
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->p()V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Lcom/join/mgps/Util/q0;->h:I

    .line 27
    .line 28
    div-int/lit8 v2, v0, 0x4

    .line 29
    .line 30
    if-le v1, v2, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 33
    .line 34
    iget v2, p0, Lcom/join/mgps/Util/q0;->j:I

    .line 35
    .line 36
    sub-int/2addr v0, v2

    .line 37
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget v1, p0, Lcom/join/mgps/Util/q0;->i:I

    .line 41
    .line 42
    if-le v0, v1, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 45
    .line 46
    iget v1, p0, Lcom/join/mgps/Util/q0;->k:I

    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x5

    .line 49
    .line 50
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 57
    .line 58
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 59
    .line 60
    iget v1, p0, Lcom/join/mgps/Util/q0;->i:I

    .line 61
    .line 62
    div-int/lit8 v1, v1, 0x2

    .line 63
    .line 64
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/join/mgps/Util/q0;->x()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/q0;->w(Landroid/app/Activity;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public w(Landroid/app/Activity;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->w:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->hasTipCloudBall()Lorg/androidannotations/api/sharedpreferences/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_4

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->w:Lcom/join/mgps/pref/PrefDef_;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->hasTipCloudBall()Lorg/androidannotations/api/sharedpreferences/d;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->f:Landroid/view/View;

    .line 31
    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->a:Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Landroid/content/Context;

    .line 41
    .line 42
    const v1, 0x7f0d0598

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/join/mgps/Util/q0;->f:Landroid/view/View;

    .line 51
    .line 52
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 53
    .line 54
    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 55
    .line 56
    .line 57
    iput-object v0, p0, Lcom/join/mgps/Util/q0;->d:Landroid/view/WindowManager$LayoutParams;

    .line 58
    .line 59
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->a:Ljava/lang/ref/WeakReference;

    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/content/Context;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const v1, 0x7f0714b6

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    float-to-int v0, v0

    .line 79
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->a:Ljava/lang/ref/WeakReference;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const v2, 0x7f0713f8

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    float-to-int v1, v1

    .line 99
    iget-object v2, p0, Lcom/join/mgps/Util/q0;->d:Landroid/view/WindowManager$LayoutParams;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 114
    .line 115
    iget-object p1, p0, Lcom/join/mgps/Util/q0;->d:Landroid/view/WindowManager$LayoutParams;

    .line 116
    .line 117
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 118
    .line 119
    const/16 v3, 0x1a

    .line 120
    .line 121
    if-lt v2, v3, :cond_1

    .line 122
    .line 123
    const/16 v2, 0x3e8

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_1
    const/16 v2, 0x7d5

    .line 127
    .line 128
    :goto_0
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 129
    .line 130
    const v2, 0x4000208

    .line 131
    .line 132
    .line 133
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 134
    .line 135
    const v2, 0x800033

    .line 136
    .line 137
    .line 138
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 139
    .line 140
    const/4 v2, -0x3

    .line 141
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 142
    .line 143
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 144
    .line 145
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 146
    .line 147
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->c:Landroid/view/WindowManager$LayoutParams;

    .line 148
    .line 149
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 150
    .line 151
    sub-int/2addr v2, v1

    .line 152
    iget v1, p0, Lcom/join/mgps/Util/q0;->j:I

    .line 153
    .line 154
    div-int/lit8 v3, v1, 0x5

    .line 155
    .line 156
    mul-int/lit8 v3, v3, 0x4

    .line 157
    .line 158
    add-int/2addr v2, v3

    .line 159
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 160
    .line 161
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 162
    .line 163
    add-int/2addr v0, v1

    .line 164
    const/high16 v1, 0x40a00000    # 5.0f

    .line 165
    .line 166
    invoke-direct {p0, v1}, Lcom/join/mgps/Util/q0;->i(F)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    add-int/2addr v0, v1

    .line 171
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 172
    .line 173
    iget-object p1, p0, Lcom/join/mgps/Util/q0;->b:Landroid/view/WindowManager;

    .line 174
    .line 175
    if-eqz p1, :cond_4

    .line 176
    .line 177
    iget-object p1, p0, Lcom/join/mgps/Util/q0;->f:Landroid/view/View;

    .line 178
    .line 179
    if-nez p1, :cond_2

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    if-nez p1, :cond_3

    .line 187
    .line 188
    iget-object p1, p0, Lcom/join/mgps/Util/q0;->b:Landroid/view/WindowManager;

    .line 189
    .line 190
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->f:Landroid/view/View;

    .line 191
    .line 192
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->d:Landroid/view/WindowManager$LayoutParams;

    .line 193
    .line 194
    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/Util/q0;->b:Landroid/view/WindowManager;

    .line 199
    .line 200
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->f:Landroid/view/View;

    .line 201
    .line 202
    iget-object v1, p0, Lcom/join/mgps/Util/q0;->d:Landroid/view/WindowManager$LayoutParams;

    .line 203
    .line 204
    invoke-interface {p1, v0, v1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .line 206
    .line 207
    goto :goto_1

    .line 208
    :catch_0
    move-exception p1

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    const-string v1, "\u66f4\u65b0\u60ac\u6d6e\u7403\u4f4d\u7f6e\u5931\u8d25: "

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    :goto_1
    const/4 p1, 0x1

    .line 227
    iput-boolean p1, p0, Lcom/join/mgps/Util/q0;->x:Z

    .line 228
    .line 229
    iget-object p1, p0, Lcom/join/mgps/Util/q0;->v:Landroid/os/Handler;

    .line 230
    .line 231
    iget-object v0, p0, Lcom/join/mgps/Util/q0;->y:Ljava/lang/Runnable;

    .line 232
    .line 233
    const-wide/16 v1, 0xbb8

    .line 234
    .line 235
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    .line 237
    .line 238
    nop

    .line 239
    :cond_4
    :goto_2
    return-void
.end method
