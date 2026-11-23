.class public Lcom/join/mgps/dialog/x;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/x$c;
    }
.end annotation


# instance fields
.field b:Landroid/content/Context;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/ProgressBar;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Lcom/join/mgps/dialog/x$c;

.field n:Lcom/join/mgps/dialog/x$c;

.field o:Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "themeResId"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->b:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cancelable",
            "cancelListener"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/x$c;)Lcom/join/mgps/dialog/x;
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
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->n:Lcom/join/mgps/dialog/x$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/join/mgps/dialog/x;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cancleText"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dialog/x;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "downsize",
            "downSpeed",
            "progress"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/x;->g:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/dialog/x;->h:Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/dialog/x;->d:Landroid/widget/ProgressBar;

    .line 12
    .line 13
    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 14
    .line 15
    .line 16
    return-object p0
.end method

.method public d(Lcom/join/mgps/dialog/x$c;)Lcom/join/mgps/dialog/x;
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
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->m:Lcom/join/mgps/dialog/x$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/join/mgps/dialog/x;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "okString"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/join/mgps/dialog/x;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
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
    iget-object p1, p0, Lcom/join/mgps/dialog/x;->b:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const v0, 0x7f0d01c6

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 23
    .line 24
    .line 25
    const p1, 0x7f0a1188

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Landroid/widget/TextView;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->e:Landroid/widget/TextView;

    .line 35
    .line 36
    const p1, 0x7f0a02fb

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->c:Landroid/widget/TextView;

    .line 46
    .line 47
    const p1, 0x7f0a1767

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroid/widget/TextView;

    .line 55
    .line 56
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->f:Landroid/widget/TextView;

    .line 57
    .line 58
    const p1, 0x7f0a0507

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/widget/TextView;

    .line 66
    .line 67
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->h:Landroid/widget/TextView;

    .line 68
    .line 69
    const p1, 0x7f0a0536

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroid/widget/TextView;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->g:Landroid/widget/TextView;

    .line 79
    .line 80
    const p1, 0x7f0a129d

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Landroid/widget/ProgressBar;

    .line 88
    .line 89
    iput-object p1, p0, Lcom/join/mgps/dialog/x;->d:Landroid/widget/ProgressBar;

    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/dialog/x;->f:Landroid/widget/TextView;

    .line 92
    .line 93
    iget-object v0, p0, Lcom/join/mgps/dialog/x;->j:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/join/mgps/dialog/x;->e:Landroid/widget/TextView;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/dialog/x;->i:Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/join/mgps/dialog/x;->e:Landroid/widget/TextView;

    .line 106
    .line 107
    new-instance v0, Lcom/join/mgps/dialog/x$a;

    .line 108
    .line 109
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/x$a;-><init>(Lcom/join/mgps/dialog/x;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/join/mgps/dialog/x;->c:Landroid/widget/TextView;

    .line 116
    .line 117
    iget-object v0, p0, Lcom/join/mgps/dialog/x;->l:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/join/mgps/dialog/x;->c:Landroid/widget/TextView;

    .line 123
    .line 124
    new-instance v0, Lcom/join/mgps/dialog/x$b;

    .line 125
    .line 126
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/x$b;-><init>(Lcom/join/mgps/dialog/x;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method
