.class public Lcom/join/android/app/common/manager/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static k:Lcom/join/android/app/common/manager/a; = null

.field public static final l:I = 0x50

.field public static final m:I = 0x11

.field public static final n:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x3


# instance fields
.field private a:Landroid/widget/PopupWindow;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/content/Context;

.field private h:Landroid/widget/Toast;

.field private i:I

.field private j:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x50

    .line 5
    .line 6
    iput v0, p0, Lcom/join/android/app/common/manager/a;->i:I

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v1, Lcom/join/android/app/common/manager/a$a;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/android/app/common/manager/a$a;-><init>(Lcom/join/android/app/common/manager/a;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/android/app/common/manager/a;->j:Landroid/os/Handler;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    .line 22
    .line 23
    return-void
.end method

.method static synthetic a(Lcom/join/android/app/common/manager/a;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/android/app/common/manager/a;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    return-object p0
.end method

.method private g(Landroid/app/Activity;)Landroid/util/DisplayMetrics;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static h()Lcom/join/android/app/common/manager/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/android/app/common/manager/a;->k:Lcom/join/android/app/common/manager/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/android/app/common/manager/a;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/join/android/app/common/manager/a;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/join/android/app/common/manager/a;->k:Lcom/join/android/app/common/manager/a;

    .line 11
    .line 12
    :cond_0
    sget-object v0, Lcom/join/android/app/common/manager/a;->k:Lcom/join/android/app/common/manager/a;

    .line 13
    .line 14
    return-object v0
.end method

.method private n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;IIIILandroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "width",
            "height",
            "x",
            "y",
            "parent"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/PopupWindow;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/join/android/app/common/manager/a;->n()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    .line 12
    .line 13
    const/16 p2, 0x33

    .line 14
    .line 15
    invoke-virtual {p1, p6, p2, p4, p5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "title",
            "message"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const v0, 0x7f0d00c6

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    .line 14
    .line 15
    const v0, 0x7f0a1956

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->d:Landroid/widget/TextView;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    .line 27
    .line 28
    const v0, 0x7f0a1955

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->e:Landroid/widget/TextView;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->d:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->e:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    .line 50
    .line 51
    const p2, 0x7f0a0295

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/Button;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->c:Landroid/widget/Button;

    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    .line 63
    .line 64
    const p2, 0x7f0a0296

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/Button;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->b:Landroid/widget/Button;

    .line 74
    .line 75
    new-instance p1, Landroid/widget/PopupWindow;

    .line 76
    .line 77
    iget-object p2, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    .line 78
    .line 79
    const/4 p3, -0x1

    .line 80
    invoke-direct {p1, p2, p3, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    .line 84
    .line 85
    invoke-direct {p0}, Lcom/join/android/app/common/manager/a;->n()V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->j:Landroid/os/Handler;

    .line 89
    .line 90
    const/4 p2, 0x0

    .line 91
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "title",
            "message"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const v0, 0x7f0d00c6

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    .line 14
    .line 15
    const v0, 0x7f0a1956

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->d:Landroid/widget/TextView;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    .line 27
    .line 28
    const v0, 0x7f0a1955

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->e:Landroid/widget/TextView;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->d:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->e:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    .line 50
    .line 51
    const p2, 0x7f0a0295

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/Button;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->c:Landroid/widget/Button;

    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    .line 63
    .line 64
    const p2, 0x7f0a0296

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Landroid/widget/Button;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->b:Landroid/widget/Button;

    .line 74
    .line 75
    new-instance p1, Landroid/widget/PopupWindow;

    .line 76
    .line 77
    iget-object p2, p0, Lcom/join/android/app/common/manager/a;->f:Landroid/view/View;

    .line 78
    .line 79
    const/4 p3, -0x1

    .line 80
    invoke-direct {p1, p2, p3, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 81
    .line 82
    .line 83
    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    .line 84
    .line 85
    invoke-direct {p0}, Lcom/join/android/app/common/manager/a;->n()V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/android/app/common/manager/a;->j:Landroid/os/Handler;

    .line 89
    .line 90
    const/4 p2, 0x0

    .line 91
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/manager/a;->a:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public i(Landroid/app/Activity;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 15
    .line 16
    .line 17
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 18
    .line 19
    return p1
.end method

.method public j(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "message",
            "dialogType"
        }
    .end annotation

    .line 1
    const/4 p3, 0x0

    .line 2
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public k(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "click"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/manager/a;->c:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/join/android/app/common/manager/a;->c:Landroid/widget/Button;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public l(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/join/android/app/common/manager/a;->g:Landroid/content/Context;

    .line 2
    .line 3
    return-void
.end method

.method public m(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "click"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/manager/a;->b:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/join/android/app/common/manager/a;->b:Landroid/widget/Button;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public o(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/android/app/common/manager/a;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public p(Landroid/app/Activity;)I
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
    invoke-direct {p0, p1}, Lcom/join/android/app/common/manager/a;->g(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 6
    .line 7
    return p1
.end method

.method public q(Landroid/app/Activity;)I
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
    invoke-direct {p0, p1}, Lcom/join/android/app/common/manager/a;->g(Landroid/app/Activity;)Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 6
    .line 7
    return p1
.end method
