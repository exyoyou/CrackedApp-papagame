.class Lcom/join/mgps/activity/UninstallWufunGameActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/UninstallWufunGameActivity;->apkInstalRecver(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/join/mgps/activity/UninstallWufunGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/UninstallWufunGameActivity;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$e;->c:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$e;->b:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$e;->b:Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "packageName"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$e;->b:Landroid/content/Intent;

    .line 10
    .line 11
    const-string v2, "actionFrom"

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$e;->c:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->access$400(Lcom/join/mgps/activity/UninstallWufunGameActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$e;->c:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->access$400(Lcom/join/mgps/activity/UninstallWufunGameActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$e;->c:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 54
    .line 55
    iget-object v1, v1, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameId:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/4 v1, 0x7

    .line 68
    if-ne v0, v1, :cond_0

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$e;->c:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->access$508(Lcom/join/mgps/activity/UninstallWufunGameActivity;)I

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$e;->c:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->access$500(Lcom/join/mgps/activity/UninstallWufunGameActivity;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    const/4 v1, 0x3

    .line 83
    if-gt v0, v1, :cond_2

    .line 84
    .line 85
    new-instance v0, Landroid/os/Handler;

    .line 86
    .line 87
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 88
    .line 89
    .line 90
    const-wide/16 v1, 0x3e8

    .line 91
    .line 92
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$e;->c:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->gameStatus2:Landroid/widget/TextView;

    .line 99
    .line 100
    const/4 v1, 0x0

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$e;->c:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 107
    .line 108
    const/16 v2, 0x8

    .line 109
    .line 110
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$e;->c:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/join/mgps/activity/UninstallWufunGameActivity;->checkbox2:Landroid/widget/ImageView;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$e;->c:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->resetBtn()V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/mgps/activity/UninstallWufunGameActivity$e;->c:Lcom/join/mgps/activity/UninstallWufunGameActivity;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/join/mgps/activity/UninstallWufunGameActivity;->resetBtn2()V

    .line 128
    .line 129
    .line 130
    :cond_2
    :goto_1
    return-void
.end method
