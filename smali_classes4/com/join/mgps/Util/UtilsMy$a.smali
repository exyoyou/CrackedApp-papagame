.class Lcom/join/mgps/Util/UtilsMy$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/UtilsMy;->I4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;


# direct methods
.method constructor <init>(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$downloadTask",
            "val$context",
            "val$dialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/UtilsMy$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/UtilsMy$a;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/UtilsMy$a;->c:Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public callback1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$a;->b:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->J4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$a;->c:Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public callback2()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/APKUtils;->P(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$a;->b:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/APKUtils;->w(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/q;->x()Landroid/app/Activity;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity_;

    .line 22
    .line 23
    const-string v1, "modStdDialog"

    .line 24
    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    invoke-static {}, Lcom/join/android/app/common/utils/q;->x()Landroid/app/Activity;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    instance-of v0, v0, Lcom/join/mgps/activity/CloudGameIndexActivity_;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getModInfoBean()Lcom/join/mgps/dto/ModInfoBean;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/ModInfoBean;->getMain_game_id()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v0, ""

    .line 50
    .line 51
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$a;->b:Landroid/content/Context;

    .line 52
    .line 53
    invoke-static {v2}, Lcom/join/mgps/activity/ModGameIndexActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ModGameIndexActivity_$e0;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v2, v1}, Lcom/join/mgps/activity/ModGameIndexActivity_$e0;->a(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$e0;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/join/mgps/Util/UtilsMy$a;->a:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/ModGameIndexActivity_$e0;->b(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$e0;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity_$e0;->d(Ljava/lang/String;)Lcom/join/mgps/activity/ModGameIndexActivity_$e0;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    :goto_1
    new-instance v0, Landroid/content/Intent;

    .line 80
    .line 81
    const-string v2, "com.wufun.game.start.std.game"

    .line 82
    .line 83
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v2, "from"

    .line 87
    .line 88
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/join/mgps/Util/UtilsMy$a;->b:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    .line 95
    .line 96
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/Util/UtilsMy$a;->c:Lcom/join/kotlin/ui/cloudarchive/dialog/ModPromptNormalDialog;

    .line 97
    .line 98
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 99
    .line 100
    .line 101
    return-void
.end method
