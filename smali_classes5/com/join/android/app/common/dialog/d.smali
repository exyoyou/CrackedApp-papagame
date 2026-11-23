.class public Lcom/join/android/app/common/dialog/d;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/content/Context;

.field private e:Z

.field private f:Ljava/lang/String;


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
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/android/app/common/dialog/d;->e:Z

    const-string v0, "0"

    .line 3
    iput-object v0, p0, Lcom/join/android/app/common/dialog/d;->f:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/join/android/app/common/dialog/d;->d:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "gameId"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/join/android/app/common/dialog/d;->e:Z

    .line 7
    iput-object p1, p0, Lcom/join/android/app/common/dialog/d;->d:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/join/android/app/common/dialog/d;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/join/android/app/common/dialog/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/android/app/common/dialog/d;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/join/android/app/common/dialog/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/common/dialog/d;->e:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic c(Lcom/join/android/app/common/dialog/d;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/d;->d:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const v0, 0x106000d

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 16
    .line 17
    .line 18
    const/16 v0, 0x11

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 21
    .line 22
    .line 23
    const p1, 0x7f0d01b3

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 27
    .line 28
    .line 29
    const p1, 0x7f0a1537

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/ImageView;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/join/android/app/common/dialog/d;->b:Landroid/widget/ImageView;

    .line 39
    .line 40
    const p1, 0x7f0a1538

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/join/android/app/common/dialog/d;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d;->d:Landroid/content/Context;

    .line 52
    .line 53
    const-string v0, "showGuideAddIconModal"

    .line 54
    .line 55
    invoke-static {p1, v0}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d;->d:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object v1, p0, Lcom/join/android/app/common/dialog/d;->f:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/join/android/app/common/dialog/d;->d:Landroid/content/Context;

    .line 67
    .line 68
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {p1, v0, v1, v2}, Lcom/papa/sim/statistic/t;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d;->b:Landroid/widget/ImageView;

    .line 80
    .line 81
    new-instance v0, Lcom/join/android/app/common/dialog/d$a;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lcom/join/android/app/common/dialog/d$a;-><init>(Lcom/join/android/app/common/dialog/d;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/android/app/common/dialog/d;->c:Landroid/widget/TextView;

    .line 90
    .line 91
    new-instance v0, Lcom/join/android/app/common/dialog/d$b;

    .line 92
    .line 93
    invoke-direct {v0, p0}, Lcom/join/android/app/common/dialog/d$b;-><init>(Lcom/join/android/app/common/dialog/d;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method
