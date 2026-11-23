.class public Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0265
.end annotation


# instance fields
.field apkTable:Lcom/join/mgps/db/tables/EMUApkTable;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field dialog_button_cancle:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field dialog_button_keep:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field dialog_button_ok:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field dialog_content:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isUpdate:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field showContent:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field textView:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tip_title:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->isUpdate:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->isUpdate:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->tip_title:Landroid/widget/TextView;

    .line 6
    .line 7
    const-string v1, "\u6b63\u5728\u4f7f\u7528\u6d41\u91cf\u66f4\u65b0\u6e38\u620f"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->dialog_button_ok:Landroid/widget/Button;

    .line 13
    .line 14
    const-string v1, "\u9a6c\u4e0a\u66f4\u65b0"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->tip_title:Landroid/widget/TextView;

    .line 21
    .line 22
    const-string v1, "\u6b63\u5728\u4f7f\u7528\u6d41\u91cf\u4e0b\u8f7d"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->dialog_button_ok:Landroid/widget/Button;

    .line 28
    .line 29
    const-string v1, "\u9a6c\u4e0a\u4e0b\u8f7d"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->dialog_content:Landroid/widget/TextView;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->showContent:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->textView:Landroid/widget/TextView;

    .line 42
    .line 43
    const-string v1, "\u53ef\u5728\u6211\u7684>\u7ba1\u7406>\u8bbe\u7f6e \u91cc\u4fee\u6539\u63d0\u9192"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->dialog_button_cancle:Landroid/widget/Button;

    .line 49
    .line 50
    const-string v1, "\u4e0b\u6b21\u518d\u8bf4"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method dialog_button_cancle()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method dialog_button_ok()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->apkTable:Lcom/join/mgps/db/tables/EMUApkTable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p0}, Lcom/join/mgps/Util/UtilsMy;->s1(Lcom/join/mgps/db/tables/EMUApkTable;Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->isUpdate:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->updateIntentDataBean:Lcom/join/mgps/dto/UpdateIntentDataBean;

    .line 13
    .line 14
    invoke-static {p0, v0}, Lcom/join/mgps/Util/UtilsMy;->u1(Landroid/content/Context;Lcom/join/mgps/dto/UpdateIntentDataBean;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GprsNoticeDialogAlphActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 19
    .line 20
    invoke-static {v0, p0}, Lcom/php25/PDownload/d;->f(Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
