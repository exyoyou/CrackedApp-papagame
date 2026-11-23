.class public Lcom/join/mgps/dialog/PlugInstallDialog;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private icon:Landroid/widget/ImageView;

.field private skip:Landroid/widget/TextView;

.field private state:I

.field status:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private subTitle:Landroid/widget/TextView;

.field private submit:Landroid/widget/TextView;

.field table:Lcom/join/mgps/db/tables/EMUApkTable;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->state:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public dismiss()V
    .locals 0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public dismiss(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagId"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->table:Lcom/join/mgps/db/tables/EMUApkTable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugInstallDialog;->dismiss()V

    :cond_1
    return-void

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugInstallDialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f0a15b0

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugInstallDialog;->dismiss()V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v0, p1, v1}, Lcom/join/mgps/Util/UtilsMy;->l4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const v0, 0x7f0a1648

    .line 25
    .line 26
    .line 27
    if-ne p1, v0, :cond_3

    .line 28
    .line 29
    iget p1, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->state:I

    .line 30
    .line 31
    if-ne p1, v1, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugInstallDialog;->setInstalling()V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p1, v0}, Lq5/f;->c0(I)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/16 v1, 0xb

    .line 59
    .line 60
    if-ne v0, v1, :cond_1

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const/4 v1, 0x2

    .line 67
    if-ne v0, v1, :cond_1

    .line 68
    .line 69
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, p0, p1}, Lcom/join/android/app/common/servcie/j;->w(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->table:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->context:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {p1, v0}, Lcom/join/mgps/Util/UtilsMy;->q1(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    const/4 v0, 0x3

    .line 86
    if-ne p1, v0, :cond_3

    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugInstallDialog;->dismiss()V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/high16 p1, 0x22000000

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/p2;->r(Landroid/app/Activity;IZ)V

    .line 8
    .line 9
    .line 10
    iput-object p0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->context:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const v0, 0x7f0d05be

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const v0, 0x7f0a084f

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/ImageView;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->icon:Landroid/widget/ImageView;

    .line 34
    .line 35
    const v0, 0x7f0a1648

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/TextView;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->submit:Landroid/widget/TextView;

    .line 45
    .line 46
    const v0, 0x7f0a15b0

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->skip:Landroid/widget/TextView;

    .line 56
    .line 57
    const v0, 0x7f0a1767

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->title:Landroid/widget/TextView;

    .line 67
    .line 68
    const v0, 0x7f0a1641

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/TextView;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->subTitle:Landroid/widget/TextView;

    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->skip:Landroid/widget/TextView;

    .line 80
    .line 81
    const/16 v1, 0x8

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->submit:Landroid/widget/TextView;

    .line 87
    .line 88
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->skip:Landroid/widget/TextView;

    .line 92
    .line 93
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/PlugInstallDialog;->setContentView(Landroid/view/View;)V

    .line 97
    .line 98
    .line 99
    iget p1, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->status:I

    .line 100
    .line 101
    const/4 v0, 0x1

    .line 102
    if-eq p1, v0, :cond_1

    .line 103
    .line 104
    const/4 v0, 0x2

    .line 105
    if-ne p1, v0, :cond_0

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugInstallDialog;->setInstalling()V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugInstallDialog;->setPreDownloaded()V

    .line 113
    .line 114
    .line 115
    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x5

    .line 13
    if-eq p1, v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/dialog/PlugInstallDialog;->setFinished()V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    return p1

    .line 6
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public setContentView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    const/high16 p1, 0x22000000

    const/4 v0, 0x0

    .line 3
    invoke-static {p0, p1, v0}, Lcom/join/mgps/Util/p2;->r(Landroid/app/Activity;IZ)V

    return-void
.end method

.method public setFinished()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->icon:Landroid/widget/ImageView;

    .line 2
    .line 3
    const v1, 0x7f080539

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->submit:Landroid/widget/TextView;

    .line 10
    .line 11
    const-string v1, "\u5b8c\u6210"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->submit:Landroid/widget/TextView;

    .line 17
    .line 18
    const v1, 0x7f08119e

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->submit:Landroid/widget/TextView;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->skip:Landroid/widget/TextView;

    .line 31
    .line 32
    const/16 v1, 0x8

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->subTitle:Landroid/widget/TextView;

    .line 38
    .line 39
    const-string v1, "\u8bf7\u4eab\u53d7\u6e38\u620f\u4e4b\u65c5"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/join/mgps/enums/ConstantIntEnum;->values()[Lcom/join/mgps/enums/ConstantIntEnum;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x0

    .line 49
    :goto_0
    array-length v2, v0

    .line 50
    const-string v3, "\u5df2\u5b89\u88c5\u5b8c\u6210"

    .line 51
    .line 52
    if-ge v1, v2, :cond_1

    .line 53
    .line 54
    iget-object v2, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->table:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    aget-object v5, v0, v1

    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v5, ""

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_0

    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    aget-object v0, v0, v1

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    goto :goto_1

    .line 111
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->title:Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    .line 118
    .line 119
    const/4 v0, 0x3

    .line 120
    iput v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->state:I

    .line 121
    .line 122
    return-void
.end method

.method public setInstalling()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->icon:Landroid/widget/ImageView;

    .line 2
    .line 3
    const v1, 0x7f08053a

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->submit:Landroid/widget/TextView;

    .line 10
    .line 11
    const-string v1, "\u5b8c\u6210"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->submit:Landroid/widget/TextView;

    .line 17
    .line 18
    const v1, 0x7f08119f

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->submit:Landroid/widget/TextView;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->skip:Landroid/widget/TextView;

    .line 31
    .line 32
    const/16 v2, 0x8

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->subTitle:Landroid/widget/TextView;

    .line 38
    .line 39
    const-string v2, "\u5927\u7ea6\u9700\u8981\u51e0\u79d2\u949f"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/join/mgps/enums/ConstantIntEnum;->values()[Lcom/join/mgps/enums/ConstantIntEnum;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :goto_0
    array-length v2, v0

    .line 49
    const-string v3, "\u63d2\u4ef6\u5b89\u88c5\u4e2d"

    .line 50
    .line 51
    if-ge v1, v2, :cond_1

    .line 52
    .line 53
    iget-object v2, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->table:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    new-instance v4, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    aget-object v5, v0, v1

    .line 65
    .line 66
    invoke-virtual {v5}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v5, ""

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_0

    .line 87
    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    aget-object v0, v0, v1

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    goto :goto_1

    .line 110
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->title:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    const/4 v0, 0x2

    .line 119
    iput v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->state:I

    .line 120
    .line 121
    return-void
.end method

.method public setPreDownloaded()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->icon:Landroid/widget/ImageView;

    .line 2
    .line 3
    const v1, 0x7f08053b

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->submit:Landroid/widget/TextView;

    .line 10
    .line 11
    const-string v1, "\u4e00\u952e\u5b89\u88c5"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->submit:Landroid/widget/TextView;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->submit:Landroid/widget/TextView;

    .line 23
    .line 24
    const v2, 0x7f08119e

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 28
    .line 29
    .line 30
    iget v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->status:I

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    const/4 v3, 0x0

    .line 34
    if-ne v0, v2, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->skip:Landroid/widget/TextView;

    .line 37
    .line 38
    const/16 v2, 0x8

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->skip:Landroid/widget/TextView;

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->subTitle:Landroid/widget/TextView;

    .line 50
    .line 51
    const-string v2, "\u6211\u4eec\u5df2\u4e3a\u4f60\u51c6\u5907\u597d\u5b89\u88c5\u5305"

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/join/mgps/enums/ConstantIntEnum;->values()[Lcom/join/mgps/enums/ConstantIntEnum;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_1
    array-length v2, v0

    .line 61
    const-string v4, "\u63d2\u4ef6\u53ef\u66f4\u65b0"

    .line 62
    .line 63
    if-ge v3, v2, :cond_2

    .line 64
    .line 65
    iget-object v2, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->table:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/join/mgps/db/tables/EMUApkTable;->getTag_id()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    aget-object v6, v0, v3

    .line 77
    .line 78
    invoke-virtual {v6}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v6, ""

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_1

    .line 99
    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    aget-object v0, v0, v3

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/join/mgps/enums/ConstantIntEnum;->nickName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    goto :goto_2

    .line 122
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->title:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    iput v1, p0, Lcom/join/mgps/dialog/PlugInstallDialog;->state:I

    .line 131
    .line 132
    return-void
.end method
