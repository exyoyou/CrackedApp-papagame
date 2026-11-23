.class Lcom/BaseFragmentActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseFragmentActivity;->initPopData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic c:Lcom/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/BaseFragmentActivity;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$downloadTask"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/BaseFragmentActivity$e;->c:Lcom/BaseFragmentActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/BaseFragmentActivity$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/BaseFragmentActivity$e;->c:Lcom/BaseFragmentActivity;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/BaseFragmentActivity;->isSo:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/papa/sim/statistic/Event;->onclickSoGameStart:Lcom/papa/sim/statistic/Event;

    .line 16
    .line 17
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v3, p0, Lcom/BaseFragmentActivity$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 23
    .line 24
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sget-object v1, Lcom/papa/sim/statistic/Event;->onclickSinGameStart:Lcom/papa/sim/statistic/Event;

    .line 45
    .line 46
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 47
    .line 48
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 49
    .line 50
    .line 51
    iget-object v3, p0, Lcom/BaseFragmentActivity$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/BaseFragmentActivity$e;->b:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 69
    .line 70
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->k4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/BaseFragmentActivity$e;->c:Lcom/BaseFragmentActivity;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/BaseFragmentActivity$e;->c:Lcom/BaseFragmentActivity;

    .line 81
    .line 82
    const/4 v0, 0x0

    .line 83
    iput-object v0, p1, Lcom/BaseFragmentActivity;->popupWindow:Landroid/widget/PopupWindow;

    .line 84
    .line 85
    return-void
.end method
