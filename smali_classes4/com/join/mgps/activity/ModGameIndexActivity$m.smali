.class Lcom/join/mgps/activity/ModGameIndexActivity$m;
.super Lcom/join/mgps/dialog/h1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;->showDialog(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic C:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/join/mgps/dialog/h1;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$2100(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/16 v0, 0x2a

    .line 8
    .line 9
    const/16 v1, 0x9

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$2200(Lcom/join/mgps/activity/ModGameIndexActivity;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-ne p1, v2, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eq p1, v2, :cond_0

    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eq p1, v1, :cond_0

    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eq p1, v0, :cond_0

    .line 65
    .line 66
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 67
    .line 68
    iget-object v0, p1, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 69
    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->standInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 79
    .line 80
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->startDownload(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1500(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$2200(Lcom/join/mgps/activity/ModGameIndexActivity;)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-ne p1, v2, :cond_2

    .line 100
    .line 101
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eq p1, v2, :cond_2

    .line 120
    .line 121
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eq p1, v1, :cond_2

    .line 132
    .line 133
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    if-eq p1, v0, :cond_2

    .line 144
    .line 145
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 146
    .line 147
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 152
    .line 153
    iget-object v1, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->modInfoBean:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 154
    .line 155
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->startDownload(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 156
    .line 157
    .line 158
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$m;->C:Lcom/join/mgps/activity/ModGameIndexActivity;

    .line 159
    .line 160
    invoke-static {p1}, Lcom/join/mgps/activity/ModGameIndexActivity;->access$1300(Lcom/join/mgps/activity/ModGameIndexActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->showInstallButn(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 165
    .line 166
    .line 167
    :goto_0
    return-void
.end method
