.class public Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private c:Lcom/byazt/s/t;

.field private tt:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private c(Lcom/byazt/t/DownloadInfo;I)V
    .locals 3

    .line 6
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/z/uj;->ve()Lcom/byazt/s/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1}, Lcom/byazt/s/n;->c(Lcom/byazt/t/DownloadInfo;)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/byazt/zz/Downloader;->getDownloadNotificationEventListener(I)Lcom/byazt/c/yv;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0xa

    const-string v2, ""

    .line 9
    invoke-interface {v0, v1, p1, v2, v2}, Lcom/byazt/c/yv;->c(ILcom/byazt/t/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    invoke-static {}, Lcom/byazt/zz/ve;->ic()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/byazt/zz/Downloader;->cancel(I)V

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;Lcom/byazt/t/DownloadInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->c(Lcom/byazt/t/DownloadInfo;I)V

    return-void
.end method

.method private tt()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->c:Lcom/byazt/s/t;

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->tt:Landroid/content/Intent;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    :try_start_0
    const-string v1, "extra_click_download_ids"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Lcom/byazt/zz/Downloader;->getInstance(Landroid/content/Context;)Lcom/byazt/zz/Downloader;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1, v0}, Lcom/byazt/zz/Downloader;->getDownloadInfo(I)Lcom/byazt/t/DownloadInfo;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getTitle()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    const-string v0, "DeleteActivity"

    .line 44
    .line 45
    const-string v1, "Missing appName; skipping handle"

    .line 46
    .line 47
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    const-string v4, "\u786e\u8ba4\u8981\u5220\u9664%1$s\u7684\u4e0b\u8f7d\u4efb\u52a1\u5417\uff1f"

    .line 52
    .line 53
    const/4 v5, 0x1

    .line 54
    new-array v6, v5, [Ljava/lang/Object;

    .line 55
    .line 56
    aput-object v3, v6, v2

    .line 57
    .line 58
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {}, Lcom/byazt/z/uj;->sl()Lcom/byazt/z/uj;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v4}, Lcom/byazt/z/uj;->tt()Lcom/byazt/s/uj;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    invoke-interface {v4, p0}, Lcom/byazt/s/uj;->c(Landroid/content/Context;)Lcom/byazt/s/u;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    const/4 v4, 0x0

    .line 78
    :goto_0
    if-nez v4, :cond_4

    .line 79
    .line 80
    new-instance v4, Lcom/byazt/r/c;

    .line 81
    .line 82
    invoke-direct {v4, p0}, Lcom/byazt/r/c;-><init>(Landroid/content/Context;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    const-string v6, "\u63d0\u793a"

    .line 86
    .line 87
    const-string v7, "\u786e\u5b9a"

    .line 88
    .line 89
    const-string v8, "\u53d6\u6d88"

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 92
    .line 93
    .line 94
    move-result v9

    .line 95
    invoke-static {v9}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    const-string v10, "cancel_with_net_opt"

    .line 100
    .line 101
    invoke-virtual {v9, v10, v2}, Lcom/byazt/k/c;->c(Ljava/lang/String;I)I

    .line 102
    .line 103
    .line 104
    move-result v9

    .line 105
    if-ne v9, v5, :cond_5

    .line 106
    .line 107
    invoke-static {}, Lcom/byazt/w/a;->x()Z

    .line 108
    .line 109
    .line 110
    move-result v9

    .line 111
    if-eqz v9, :cond_5

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    .line 114
    .line 115
    .line 116
    move-result-wide v9

    .line 117
    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    .line 118
    .line 119
    .line 120
    move-result-wide v11

    .line 121
    cmp-long v13, v9, v11

    .line 122
    .line 123
    if-eqz v13, :cond_5

    .line 124
    .line 125
    const/4 v2, 0x1

    .line 126
    :cond_5
    if-eqz v2, :cond_6

    .line 127
    .line 128
    const-string v7, "Wi-Fi\u4e0b\u6062\u590d"

    .line 129
    .line 130
    const-string v8, "\u76f4\u63a5\u53d6\u6d88"

    .line 131
    .line 132
    const-string v3, "\u60a8\u5f53\u524d\u5904\u4e8e\u79fb\u52a8\u7f51\u7edc\uff0c\u662f\u5426\u9700\u8981\u5728Wi-Fi\u73af\u5883\u4e0b\u6062\u590d\u4e0b\u8f7d\uff1f"

    .line 133
    .line 134
    :cond_6
    invoke-interface {v4, v6}, Lcom/byazt/s/u;->c(Ljava/lang/CharSequence;)Lcom/byazt/s/u;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-interface {v5, v3}, Lcom/byazt/s/u;->c(Ljava/lang/String;)Lcom/byazt/s/u;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    new-instance v5, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;

    .line 143
    .line 144
    invoke-direct {v5, p0, v2, v1, v0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$3;-><init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;ZLcom/byazt/t/DownloadInfo;I)V

    .line 145
    .line 146
    .line 147
    invoke-interface {v3, v7, v5}, Lcom/byazt/s/u;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/byazt/s/u;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    new-instance v5, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$2;

    .line 152
    .line 153
    invoke-direct {v5, p0, v2, v1, v0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$2;-><init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;ZLcom/byazt/t/DownloadInfo;I)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v3, v8, v5}, Lcom/byazt/s/u;->tt(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/byazt/s/u;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    new-instance v1, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$1;

    .line 161
    .line 162
    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity$1;-><init>(Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;)V

    .line 163
    .line 164
    .line 165
    invoke-interface {v0, v1}, Lcom/byazt/s/u;->c(Landroid/content/DialogInterface$OnCancelListener;)Lcom/byazt/s/u;

    .line 166
    .line 167
    .line 168
    invoke-interface {v4}, Lcom/byazt/s/u;->c()Lcom/byazt/s/t;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->c:Lcom/byazt/s/t;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->c()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->tt:Landroid/content/Intent;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->tt()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->c:Lcom/byazt/s/t;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/byazt/s/t;->tt()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->c:Lcom/byazt/s/t;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/byazt/s/t;->c()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/view/DownloadTaskDeleteActivity;->c:Lcom/byazt/s/t;

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method
