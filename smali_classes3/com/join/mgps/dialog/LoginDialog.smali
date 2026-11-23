.class public Lcom/join/mgps/dialog/LoginDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/LoginDialog$d;,
        Lcom/join/mgps/dialog/LoginDialog$c;,
        Lcom/join/mgps/dialog/LoginDialog$StyleType;
    }
.end annotation


# static fields
.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x3

.field public static final l:I = 0x4


# instance fields
.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:I

.field private f:Z

.field private g:Lcom/join/mgps/dialog/LoginDialog$d;

.field private h:Lcom/join/mgps/dialog/LoginDialog$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
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
    const v0, 0x7f1301bd

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/join/mgps/dialog/LoginDialog;->e:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/join/mgps/dialog/LoginDialog;->f:Z

    .line 12
    .line 13
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/LoginDialog;)Lcom/join/mgps/dialog/LoginDialog$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/LoginDialog;->h:Lcom/join/mgps/dialog/LoginDialog$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/LoginDialog;)Lcom/join/mgps/dialog/LoginDialog$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/LoginDialog;->g:Lcom/join/mgps/dialog/LoginDialog$d;

    .line 2
    .line 3
    return-object p0
.end method

.method public static e(Landroid/content/Context;)Lcom/join/mgps/dialog/LoginDialog;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
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
    new-instance v0, Lcom/join/mgps/dialog/LoginDialog;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/LoginDialog;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public c(Z)Lcom/join/mgps/dialog/LoginDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cancelable"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dialog/LoginDialog;->f:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public d(Lcom/join/mgps/dialog/LoginDialog$c;)Lcom/join/mgps/dialog/LoginDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->h:Lcom/join/mgps/dialog/LoginDialog$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Lcom/join/mgps/dialog/LoginDialog$d;)Lcom/join/mgps/dialog/LoginDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->g:Lcom/join/mgps/dialog/LoginDialog$d;

    .line 2
    .line 3
    return-object p0
.end method

.method public g(I)Lcom/join/mgps/dialog/LoginDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dialog/LoginDialog;->e:I

    .line 2
    .line 3
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/join/mgps/dialog/LoginDialog;->f:Z

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 7
    .line 8
    .line 9
    const p1, 0x7f0d067f

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    const p1, 0x7f0a0fee

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->b:Landroid/view/View;

    .line 23
    .line 24
    const p1, 0x7f0a1b24

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->c:Landroid/view/View;

    .line 32
    .line 33
    const p1, 0x7f0a1b22

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->d:Landroid/view/View;

    .line 41
    .line 42
    iget p1, p0, Lcom/join/mgps/dialog/LoginDialog;->e:I

    .line 43
    .line 44
    const/4 v0, 0x1

    .line 45
    if-eq p1, v0, :cond_3

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    if-eq p1, v0, :cond_2

    .line 49
    .line 50
    const/4 v0, 0x3

    .line 51
    if-eq p1, v0, :cond_1

    .line 52
    .line 53
    const/4 v0, 0x4

    .line 54
    if-eq p1, v0, :cond_0

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->b:Landroid/view/View;

    .line 58
    .line 59
    const v0, 0x7f0802f1

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->b:Landroid/view/View;

    .line 67
    .line 68
    const v0, 0x7f0802f0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->b:Landroid/view/View;

    .line 76
    .line 77
    const v0, 0x7f0802ef

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->b:Landroid/view/View;

    .line 85
    .line 86
    const v0, 0x7f0802f2

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 90
    .line 91
    .line 92
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->d:Landroid/view/View;

    .line 93
    .line 94
    new-instance v0, Lcom/join/mgps/dialog/LoginDialog$a;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/LoginDialog$a;-><init>(Lcom/join/mgps/dialog/LoginDialog;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/join/mgps/dialog/LoginDialog;->c:Landroid/view/View;

    .line 103
    .line 104
    new-instance v0, Lcom/join/mgps/dialog/LoginDialog$b;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/LoginDialog$b;-><init>(Lcom/join/mgps/dialog/LoginDialog;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/join/mgps/dialog/LoginDialog;->f:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method
