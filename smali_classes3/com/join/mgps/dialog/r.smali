.class public Lcom/join/mgps/dialog/r;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/r$c;
    }
.end annotation


# instance fields
.field private b:Lcom/join/mgps/dialog/r$c;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/dialog/r;->e:Landroid/widget/EditText;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dialog/r;->c:Landroid/content/Context;

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
            "theme"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/join/mgps/dialog/r;->e:Landroid/widget/EditText;

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dialog/r;->c:Landroid/content/Context;

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

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Lcom/join/mgps/dialog/r;->e:Landroid/widget/EditText;

    .line 9
    iput-object p1, p0, Lcom/join/mgps/dialog/r;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/r;)Landroid/widget/EditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/r;->e:Landroid/widget/EditText;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/r;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/r;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/dialog/r;)Lcom/join/mgps/dialog/r$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/r;->b:Lcom/join/mgps/dialog/r$c;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public d(Lcom/join/mgps/dialog/r$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickSave"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/r;->b:Lcom/join/mgps/dialog/r$c;

    .line 2
    .line 3
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nameS"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/r;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
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
    const p1, 0x7f0d0116

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0a10d8

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/EditText;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/join/mgps/dialog/r;->e:Landroid/widget/EditText;

    .line 20
    .line 21
    const p1, 0x7f0a0337

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/TextView;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/dialog/r;->e:Landroid/widget/EditText;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/dialog/r;->d:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    const p1, 0x7f0a1474

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/TextView;

    .line 45
    .line 46
    new-instance v0, Lcom/join/mgps/dialog/r$a;

    .line 47
    .line 48
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/r$a;-><init>(Lcom/join/mgps/dialog/r;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/dialog/r;->e:Landroid/widget/EditText;

    .line 55
    .line 56
    const/4 v0, 0x1

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/dialog/r;->e:Landroid/widget/EditText;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Timer;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/join/mgps/dialog/r$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/r$b;-><init>(Lcom/join/mgps/dialog/r;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v2, 0x190

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
