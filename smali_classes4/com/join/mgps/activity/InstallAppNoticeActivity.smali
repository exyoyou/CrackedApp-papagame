.class public Lcom/join/mgps/activity/InstallAppNoticeActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/InstallAppNoticeActivity$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d03a9
.end annotation


# instance fields
.field adJson:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field adapter:Lcom/join/mgps/activity/InstallAppNoticeActivity$b;

.field downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field indicator:Lme/relex/circleindicator/CircleIndicator;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field message:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field more:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field popupAdBean:Lcom/join/mgps/dto/BootPageData;

.field viewPager:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;
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

.method static synthetic access$000(Lcom/join/mgps/activity/InstallAppNoticeActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/InstallAppNoticeActivity;->installApk()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private installApk()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGameZipPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, p0, v0}, Lcom/join/android/app/common/utils/APKUtils;->z(Landroid/content/Context;Ljava/io/File;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->adJson:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-class v2, Lcom/join/mgps/dto/BootPageData;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/dto/BootPageData;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->popupAdBean:Lcom/join/mgps/dto/BootPageData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    :goto_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->gameId:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->popupAdBean:Lcom/join/mgps/dto/BootPageData;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->popupAdBean:Lcom/join/mgps/dto/BootPageData;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageItem;->getTitle()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->popupAdBean:Lcom/join/mgps/dto/BootPageData;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/dto/BootPageItem;->getPic()[Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    array-length v0, v0

    .line 75
    if-nez v0, :cond_1

    .line 76
    .line 77
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 78
    .line 79
    .line 80
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->message:Landroid/widget/TextView;

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v2, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->popupAdBean:Lcom/join/mgps/dto/BootPageData;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Lcom/join/mgps/dto/BootPageItem;->getTitle()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210\uff0c\u8bf7\u6309\u4e0b\u56fe\u64cd\u4f5c"

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->popupAdBean:Lcom/join/mgps/dto/BootPageData;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/join/mgps/dto/BootPageData;->getGame_setup_boot()Lcom/join/mgps/dto/BootPageItem;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/join/mgps/dto/BootPageItem;->getPic()[Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    array-length v2, v1

    .line 128
    const/4 v3, 0x0

    .line 129
    :goto_1
    if-ge v3, v2, :cond_2

    .line 130
    .line 131
    aget-object v4, v1, v3

    .line 132
    .line 133
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    add-int/lit8 v3, v3, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    new-instance v1, Lcom/join/mgps/activity/InstallAppNoticeActivity$b;

    .line 140
    .line 141
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/InstallAppNoticeActivity$b;-><init>(Lcom/join/mgps/activity/InstallAppNoticeActivity;)V

    .line 142
    .line 143
    .line 144
    iput-object v1, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->adapter:Lcom/join/mgps/activity/InstallAppNoticeActivity$b;

    .line 145
    .line 146
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/InstallAppNoticeActivity$b;->c(Ljava/util/List;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->viewPager:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 150
    .line 151
    iget-object v1, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->adapter:Lcom/join/mgps/activity/InstallAppNoticeActivity$b;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->indicator:Lme/relex/circleindicator/CircleIndicator;

    .line 157
    .line 158
    iget-object v1, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->viewPager:Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Lme/relex/circleindicator/CircleIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 161
    .line 162
    .line 163
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/activity/InstallAppNoticeActivity;->more:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 164
    .line 165
    new-instance v1, Lcom/join/mgps/activity/InstallAppNoticeActivity$a;

    .line 166
    .line 167
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/InstallAppNoticeActivity$a;-><init>(Lcom/join/mgps/activity/InstallAppNoticeActivity;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :catch_1
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    :goto_2
    return-void
.end method

.method public goIntent(Landroid/content/Context;Lcom/join/mgps/dto/AppBeanMain;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "bean"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v7, Lcom/join/mgps/Util/IntentDateBean;

    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getJump_type()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getLink_type_val()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getCrc_link_type_val()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBeanMain;->getTpl_type()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    const/4 v6, 0x0

    .line 27
    move-object v0, v7

    .line 28
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/Util/IntentDateBean;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p2, p1, v7}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method isHomePopupAdLocalCached(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/z;->b(Landroid/content/Context;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {p1}, Lcom/join/mgps/Util/o0;->t(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method
