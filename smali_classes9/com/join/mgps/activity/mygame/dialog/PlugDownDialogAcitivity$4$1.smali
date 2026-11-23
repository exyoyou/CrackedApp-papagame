.class Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->onStart(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$1;->this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$1;->this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->progressBar:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$1;->this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->info:Landroid/widget/TextView;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "\u52a0\u8f7d\u6e38\u620f\u9700\u521d\u59cb\u5316"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$1;->this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 30
    .line 31
    iget-object v2, v2, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-static {v2}, Lcom/join/mgps/Util/UtilsMy;->d2(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v2, "\u8d44\u6e90\u6587\u4ef6\uff0c\u8bf7\u7a0d\u540e\u2026"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$1;->this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->appSize:Landroid/widget/TextView;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\uff08"

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$1;->this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;

    .line 77
    .line 78
    iget-object v2, v2, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 79
    .line 80
    iget-object v2, v2, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_currentSize()J

    .line 83
    .line 84
    .line 85
    move-result-wide v2

    .line 86
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v2, "/"

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4$1;->this$1:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;

    .line 99
    .line 100
    iget-object v2, v2, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity$4;->this$0:Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;

    .line 101
    .line 102
    iget-object v2, v2, Lcom/join/mgps/activity/mygame/dialog/PlugDownDialogAcitivity;->gameTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getRes_actual_size()J

    .line 105
    .line 106
    .line 107
    move-result-wide v2

    .line 108
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v2, ")"

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method
