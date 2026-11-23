.class Lcom/join/mgps/activity/WebViewSearchActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flipboard/bottomsheet/custom/SimpleSheetView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/WebViewSearchActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/WebViewSearchActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/WebViewSearchActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$a;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$a;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "onItemClicked "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object p1, p1, Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public b(Lcom/flipboard/bottomsheet/custom/SimpleSheetView$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$a;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x2

    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/4 v0, 0x5

    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$a;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "\u4e0b\u8f7d\u5df2\u5b8c\u6210"

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$a;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "\u5df2\u521b\u5efa\u4e0b\u8f7d\u4efb\u52a1"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$a;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 65
    .line 66
    iget-object v0, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->simpleSheetView:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {v0, p1}, Lcom/php25/PDownload/d;->c(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$a;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r()V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public onClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$a;->a:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->r()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
