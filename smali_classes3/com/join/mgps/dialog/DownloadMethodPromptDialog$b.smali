.class Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/DownloadMethodPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/DownloadMethodPromptDialog;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "handler"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;->a:Lcom/join/mgps/dialog/DownloadMethodPromptDialog;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selfChange"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;->a:Lcom/join/mgps/dialog/DownloadMethodPromptDialog;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->isNavigationBarShow()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;->a:Lcom/join/mgps/dialog/DownloadMethodPromptDialog;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->constraintLayout:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;->a:Lcom/join/mgps/dialog/DownloadMethodPromptDialog;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->access$000(Lcom/join/mgps/dialog/DownloadMethodPromptDialog;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {}, Lcom/join/mgps/Util/v1;->e()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;->a:Lcom/join/mgps/dialog/DownloadMethodPromptDialog;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->constraintLayout:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;->a:Lcom/join/mgps/dialog/DownloadMethodPromptDialog;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->constraintLayout:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$b;->a:Lcom/join/mgps/dialog/DownloadMethodPromptDialog;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->constraintLayout:Landroid/view/View;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method
