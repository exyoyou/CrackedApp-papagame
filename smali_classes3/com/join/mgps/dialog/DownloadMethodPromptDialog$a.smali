.class Lcom/join/mgps/dialog/DownloadMethodPromptDialog$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dialog/DownloadMethodPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/DownloadMethodPromptDialog;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/DownloadMethodPromptDialog;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "handler"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$a;->a:Lcom/join/mgps/dialog/DownloadMethodPromptDialog;

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
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$a;->a:Lcom/join/mgps/dialog/DownloadMethodPromptDialog;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "navigationbar_is_min"

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 v0, 0x1

    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$a;->a:Lcom/join/mgps/dialog/DownloadMethodPromptDialog;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->constraintLayout:Landroid/view/View;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 26
    .line 27
    iput v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$a;->a:Lcom/join/mgps/dialog/DownloadMethodPromptDialog;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->constraintLayout:Landroid/view/View;

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$a;->a:Lcom/join/mgps/dialog/DownloadMethodPromptDialog;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->constraintLayout:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 46
    .line 47
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$a;->a:Lcom/join/mgps/dialog/DownloadMethodPromptDialog;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/join/mgps/dialog/DownloadMethodPromptDialog;->access$000(Lcom/join/mgps/dialog/DownloadMethodPromptDialog;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/dialog/DownloadMethodPromptDialog$a;->a:Lcom/join/mgps/dialog/DownloadMethodPromptDialog;

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
