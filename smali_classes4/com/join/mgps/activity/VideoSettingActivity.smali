.class public Lcom/join/mgps/activity/VideoSettingActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d089d
.end annotation


# instance fields
.field homevideoAllNet:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field homevideoAllNetSwitch:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field homevideoNotPlay:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field homevideoNotPlaySwitch:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field homevideoOnlyWifi:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field homevideoOnlyWifiSwitch:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field videoAllNet:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field videoAllNetSwitch:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field videoNotPlay:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field videoNotPlaySwitch:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field videoOnlyWifi:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field videoOnlyWifiSwitch:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private updateUI()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->videoAllNetSwitch:Landroid/widget/ImageView;

    .line 2
    .line 3
    const v1, 0x7f08009c

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->videoOnlyWifiSwitch:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->videoNotPlaySwitch:Landroid/widget/ImageView;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->homevideoAllNetSwitch:Landroid/widget/ImageView;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->homevideoOnlyWifiSwitch:Landroid/widget/ImageView;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->homevideoNotPlaySwitch:Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 32
    .line 33
    .line 34
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->e()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/join/mgps/pref/h;->z()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    const/4 v2, 0x2

    .line 51
    const/4 v3, 0x1

    .line 52
    const v4, 0x7f080a88

    .line 53
    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    if-eq v0, v3, :cond_1

    .line 58
    .line 59
    if-eq v0, v2, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->videoNotPlaySwitch:Landroid/widget/ImageView;

    .line 63
    .line 64
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->videoOnlyWifiSwitch:Landroid/widget/ImageView;

    .line 69
    .line 70
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->videoAllNetSwitch:Landroid/widget/ImageView;

    .line 75
    .line 76
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    .line 78
    .line 79
    :goto_0
    if-eqz v1, :cond_5

    .line 80
    .line 81
    if-eq v1, v3, :cond_4

    .line 82
    .line 83
    if-eq v1, v2, :cond_3

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->homevideoNotPlaySwitch:Landroid/widget/ImageView;

    .line 87
    .line 88
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->homevideoOnlyWifiSwitch:Landroid/widget/ImageView;

    .line 93
    .line 94
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->homevideoAllNetSwitch:Landroid/widget/ImageView;

    .line 99
    .line 100
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 101
    .line 102
    .line 103
    :goto_1
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/VideoSettingActivity;->title_textview:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "\u89c6\u9891\u64ad\u653e\u8bbe\u7f6e"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/join/mgps/activity/VideoSettingActivity;->updateUI()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method back_image()V
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

.method homevideoAllNet()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->n0(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/join/mgps/activity/VideoSettingActivity;->updateUI()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method homevideoNotPlay()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->n0(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/join/mgps/activity/VideoSettingActivity;->updateUI()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method homevideoOnlyWifi()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->n0(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/join/mgps/activity/VideoSettingActivity;->updateUI()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method videoAllNet()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->T(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/join/mgps/activity/VideoSettingActivity;->updateUI()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method videoNotPlay()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->T(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/join/mgps/activity/VideoSettingActivity;->updateUI()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method videoOnlyWifi()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->T(I)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/join/mgps/activity/VideoSettingActivity;->updateUI()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
