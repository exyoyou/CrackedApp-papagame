.class Lcom/join/mgps/activity/UpdateLodingActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/UpdateLodingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/UpdateLodingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/UpdateLodingActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->b:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "service"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->b:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 2
    .line 3
    check-cast p2, Lcom/join/mgps/service/UpdateLodingService$c;

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/join/mgps/activity/UpdateLodingActivity;->access$002(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/service/UpdateLodingService$c;)Lcom/join/mgps/service/UpdateLodingService$c;

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->b:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/service/UpdateLodingService$c;->getService()Lcom/join/mgps/service/UpdateLodingService;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p1, p2}, Lcom/join/mgps/activity/UpdateLodingActivity;->access$102(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService;

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->b:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/activity/UpdateLodingActivity;->access$100(Lcom/join/mgps/activity/UpdateLodingActivity;)Lcom/join/mgps/service/UpdateLodingService;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->b:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/join/mgps/service/UpdateLodingService;->l(Lcom/join/mgps/service/UpdateLodingService$d;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->b:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 29
    .line 30
    iget-boolean p2, p1, Lcom/join/mgps/activity/UpdateLodingActivity;->romeNewUpdate:Z

    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    const/4 p2, 0x0

    .line 35
    invoke-static {p1, p2}, Lcom/join/mgps/activity/UpdateLodingActivity;->access$202(Lcom/join/mgps/activity/UpdateLodingActivity;I)I

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->b:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/join/mgps/activity/UpdateLodingActivity;->access$000(Lcom/join/mgps/activity/UpdateLodingActivity;)Lcom/join/mgps/service/UpdateLodingService$c;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->b:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/join/mgps/activity/UpdateLodingActivity;->simpleDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/service/UpdateLodingService$c;->setDownData(Ljava/lang/String;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-boolean p2, p1, Lcom/join/mgps/activity/UpdateLodingActivity;->peizhiNewUpdate:Z

    .line 57
    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    const/4 p2, 0x1

    .line 61
    invoke-static {p1, p2}, Lcom/join/mgps/activity/UpdateLodingActivity;->access$202(Lcom/join/mgps/activity/UpdateLodingActivity;I)I

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->b:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/join/mgps/activity/UpdateLodingActivity;->access$000(Lcom/join/mgps/activity/UpdateLodingActivity;)Lcom/join/mgps/service/UpdateLodingService$c;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->b:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/join/mgps/activity/UpdateLodingActivity;->simpleDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/service/UpdateLodingService$c;->setDownData(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-boolean p2, p1, Lcom/join/mgps/activity/UpdateLodingActivity;->sourceNewUpdate:Z

    .line 83
    .line 84
    if-eqz p2, :cond_2

    .line 85
    .line 86
    const/4 p2, 0x2

    .line 87
    invoke-static {p1, p2}, Lcom/join/mgps/activity/UpdateLodingActivity;->access$202(Lcom/join/mgps/activity/UpdateLodingActivity;I)I

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->b:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/join/mgps/activity/UpdateLodingActivity;->access$000(Lcom/join/mgps/activity/UpdateLodingActivity;)Lcom/join/mgps/service/UpdateLodingService$c;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->b:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/join/mgps/activity/UpdateLodingActivity;->simpleDownloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/service/UpdateLodingService$c;->setDownData(Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    :cond_2
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/UpdateLodingActivity$a;->b:Lcom/join/mgps/activity/UpdateLodingActivity;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-static {p1, v0}, Lcom/join/mgps/activity/UpdateLodingActivity;->access$102(Lcom/join/mgps/activity/UpdateLodingActivity;Lcom/join/mgps/service/UpdateLodingService;)Lcom/join/mgps/service/UpdateLodingService;

    .line 5
    .line 6
    .line 7
    return-void
.end method
