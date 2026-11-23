.class public Lcom/join/mgps/activity/CopyDialogActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field b:Ljava/lang/String;

.field c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field d:Landroid/content/Context;

.field e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/activity/CopyDialogActivity$a;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/CopyDialogActivity$a;-><init>(Lcom/join/mgps/activity/CopyDialogActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/join/mgps/activity/CopyDialogActivity;->e:Landroid/os/Handler;

    .line 15
    .line 16
    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CopyDialogActivity$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CopyDialogActivity$b;-><init>(Lcom/join/mgps/activity/CopyDialogActivity;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->J1(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    const p1, 0x7f0d0652

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "gameid"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/join/mgps/activity/CopyDialogActivity;->b:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p0, p0, Lcom/join/mgps/activity/CopyDialogActivity;->d:Landroid/content/Context;

    .line 26
    .line 27
    const p1, 0x7f0a16b1

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/widget/TextView;

    .line 35
    .line 36
    const-string v0, "\u6b63\u5728\u62f7\u8d1d\u4e2d\u8bf7\u7a0d\u540e"

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/CopyDialogActivity;->b:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/join/mgps/activity/CopyDialogActivity;->c:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 52
    .line 53
    if-nez p1, :cond_0

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/CopyDialogActivity;->a()V

    .line 60
    .line 61
    .line 62
    return-void
.end method
