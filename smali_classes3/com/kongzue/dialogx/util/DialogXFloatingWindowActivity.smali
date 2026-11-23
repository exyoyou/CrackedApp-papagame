.class public Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field static dialogXFloatingWindowActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field fromActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field fromActivityHashCode:I

.field isScreenshot:Z

.field shownDialogXList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->shownDialogXList:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static getDialogXFloatingWindowActivity()Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;
    .locals 1

    .line 1
    sget-object v0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->dialogXFloatingWindowActivity:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 9
    sget-object v0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->dialogXFloatingWindowActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->dialogXFloatingWindowActivity:Ljava/lang/ref/WeakReference;

    .line 12
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method public finish(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->shownDialogXList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->shownDialogXList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->dialogXFloatingWindowActivity:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    :cond_0
    const/4 p1, 0x0

    .line 5
    sput-object p1, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->dialogXFloatingWindowActivity:Ljava/lang/ref/WeakReference;

    .line 6
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 7
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_1

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method public getFromActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->fromActivity:Ljava/lang/ref/WeakReference;

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
    check-cast v0, Landroid/app/Activity;

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method

.method public getFromActivityHashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->fromActivityHashCode:I

    .line 2
    .line 3
    return v0
.end method

.method public isSameFrom(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->fromActivityHashCode:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public isScreenshot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->isScreenshot:Z

    .line 2
    .line 3
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->dialogXFloatingWindowActivity:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    sget p1, Lcom/kongzue/dialogx/R$layout;->layout_dialogx_empty:I

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "fromActivityUiStatus"

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/16 v0, 0x200

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    or-int/2addr p1, v0

    .line 52
    invoke-virtual {v2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 53
    .line 54
    .line 55
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "from"

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-virtual {p0, p1}, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->setFromActivityHashCode(I)Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v0, "dialogXKey"

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->t(Ljava/lang/String;)Lcom/kongzue/dialogx/util/a;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    invoke-virtual {p0}, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->finish()V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    iget-object v1, p0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->shownDialogXList:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    invoke-interface {v0, p0}, Lcom/kongzue/dialogx/util/a;->a(Landroid/app/Activity;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    new-instance v0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity$a;

    .line 105
    .line 106
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity$a;-><init>(Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method public setFromActivity(Landroid/app/Activity;)Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->fromActivity:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    return-object p0
.end method

.method public setFromActivityHashCode(I)Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;
    .locals 0

    .line 1
    iput p1, p0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->fromActivityHashCode:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setScreenshot(Z)Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->isScreenshot:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public showDialogX(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->t(Ljava/lang/String;)Lcom/kongzue/dialogx/util/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->shownDialogXList:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, p0}, Lcom/kongzue/dialogx/util/a;->a(Landroid/app/Activity;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
