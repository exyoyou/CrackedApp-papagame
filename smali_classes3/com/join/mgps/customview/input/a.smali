.class public Lcom/join/mgps/customview/input/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Landroid/view/Window;

.field private c:Lcom/join/mgps/customview/input/InputNumView;

.field private d:Landroid/content/Context;

.field private e:Lcom/join/mgps/customview/input/InputNumView$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "title",
            "numLength",
            "isPwd"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/customview/input/a;->d:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Lcom/join/mgps/customview/input/InputNumView;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/join/mgps/customview/input/InputNumView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/customview/input/a;->c:Lcom/join/mgps/customview/input/InputNumView;

    .line 12
    .line 13
    invoke-virtual {v0, p3, p4}, Lcom/join/mgps/customview/input/InputNumView;->setNumLengthAndIsPwd(IZ)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/customview/input/a;->c:Lcom/join/mgps/customview/input/InputNumView;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/input/InputNumView;->setTitle(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/join/mgps/customview/input/a;->d()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/input/a;)Lcom/join/mgps/customview/input/InputNumView$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/input/a;->e:Lcom/join/mgps/customview/input/InputNumView$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/input/a;)Lcom/join/mgps/customview/input/InputNumView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/input/a;->c:Lcom/join/mgps/customview/input/InputNumView;

    .line 2
    .line 3
    return-object p0
.end method

.method private d()V
    .locals 5

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/input/a;->d:Landroid/content/Context;

    .line 4
    .line 5
    const v2, 0x7f130584

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    .line 12
    .line 13
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/16 v3, 0x1c

    .line 17
    .line 18
    if-lt v1, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0, v2}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 29
    .line 30
    .line 31
    iget-object v4, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/join/mgps/customview/input/a;->c:Lcom/join/mgps/customview/input/InputNumView;

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    if-lt v1, v3, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0, v2}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    .line 63
    .line 64
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Lcom/join/mgps/customview/input/a;->b:Landroid/view/Window;

    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const/4 v1, -0x1

    .line 84
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 85
    .line 86
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->b:Landroid/view/Window;

    .line 89
    .line 90
    const/16 v1, 0x50

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->c:Lcom/join/mgps/customview/input/InputNumView;

    .line 96
    .line 97
    new-instance v1, Lcom/join/mgps/customview/input/a$a;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/input/a$a;-><init>(Lcom/join/mgps/customview/input/a;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/input/InputNumView;->setListener(Lcom/join/mgps/customview/input/InputNumView$d;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    .line 106
    .line 107
    new-instance v1, Lcom/join/mgps/customview/input/a$b;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/input/a$b;-><init>(Lcom/join/mgps/customview/input/a;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    .line 116
    .line 117
    new-instance v1, Lcom/join/mgps/customview/input/a$c;

    .line 118
    .line 119
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/input/a$c;-><init>(Lcom/join/mgps/customview/input/a;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pwd"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->c:Lcom/join/mgps/customview/input/InputNumView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/input/InputNumView;->setCurrentPwd(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(Lcom/join/mgps/customview/input/InputNumView$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/input/a;->e:Lcom/join/mgps/customview/input/InputNumView$d;

    .line 2
    .line 3
    return-void
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/input/a;->a:Landroid/app/Dialog;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
