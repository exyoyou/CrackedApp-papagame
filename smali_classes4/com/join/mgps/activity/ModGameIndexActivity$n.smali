.class Lcom/join/mgps/activity/ModGameIndexActivity$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->showDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$n;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$n;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$2100(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x2

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$n;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$n;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-ne p1, v0, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$n;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$n;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$n;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$n;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-ne p1, v0, :cond_2

    .line 69
    .line 70
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$n;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showProgress(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$n;->b:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method
