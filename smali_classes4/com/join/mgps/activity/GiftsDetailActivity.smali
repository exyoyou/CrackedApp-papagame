.class public Lcom/join/mgps/activity/GiftsDetailActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d036f
.end annotation


# instance fields
.field Uid:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

.field private dialog:Lcom/join/mgps/dialog/f1;

.field private dialog_button_cancel:Landroid/widget/Button;

.field private downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

.field gameId:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
        value = ""
    .end annotation
.end field

.field giftContent:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field giftIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field giftMethod:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field giftNameTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field giftTime:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mDialog:Lcom/join/mgps/customview/t;

.field private mGiftDialog:Lcom/join/mgps/customview/t;

.field mVipDialog:Lcom/join/mgps/customview/t;

.field private moneyText:Landroid/widget/TextView;

.field private myDialog:Landroid/app/Dialog;

.field rpcClient:Lcom/join/mgps/rpc/e;

.field saveCodeContent:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field saveCodeTv:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field scrollView:Landroid/widget/ScrollView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
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
    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

    .line 6
    .line 7
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/GiftsDetailActivity;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/github/snowdream/android/app/downloader/DownloadTask;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/GiftsDetailActivity;)Lcom/join/mgps/dto/DetailResultBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/GiftsDetailActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private checkRight(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finalType"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 15
    .line 16
    const v2, 0x7f120544

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return v1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v2, "6"

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    invoke-static {v0}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->showVipDialog()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const-string v2, "7"

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getSVIPLevel()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-lez p1, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->showSvipGiftDialog()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_4
    :goto_0
    const/4 v1, 0x1

    .line 76
    :goto_1
    return v1
.end method

.method private dismissVipDialog()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    iput-object p0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->title_textview:Landroid/widget/TextView;

    .line 17
    .line 18
    const-string v1, "\u793c\u5305\u8be6\u60c5"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftNameTv:Landroid/widget/TextView;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->saveCodeContent:Landroid/widget/TextView;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftTime:Landroid/widget/TextView;

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_begin()J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    invoke-static {v2, v3}, Lcom/join/mgps/Util/e0;->C(J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v2, " \u81f3 "

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_end()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    invoke-static {v2, v3}, Lcom/join/mgps/Util/e0;->C(J)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 91
    .line 92
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 99
    .line 100
    invoke-static {v2}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    const v3, 0x7f08018d

    .line 105
    .line 106
    .line 107
    invoke-static {v0, v3, v1, v2}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->setSaveCodeTv()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->showLoading2()V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 117
    .line 118
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 129
    .line 130
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->setResult4Request()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method getDownloadStatus()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadtaskDown()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getTag_info()Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 51
    .line 52
    sget-object v2, Lcom/join/mgps/enums/Dtype;->android:Lcom/join/mgps/enums/Dtype;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFileType(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getPackage_name()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v0, v2, v3}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getPackage_name()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getVer()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_0

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getVer()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-ge v0, v1, :cond_0

    .line 134
    .line 135
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 136
    .line 137
    const/16 v1, 0x9

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 144
    .line 145
    const/4 v1, 0x5

    .line 146
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 153
    .line 154
    .line 155
    goto :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setStatus(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDownloadType()I

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setDownloadType(I)V

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 172
    .line 173
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 174
    .line 175
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getScreenshot_pic()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setScreenshot_pic(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->showDownloadUi()V

    .line 183
    .line 184
    .line 185
    :cond_4
    return-void
.end method

.method getGameGiftPackageInfo()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->getRequestBean()Lcom/join/mgps/dto/CommonRequestBean;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 14
    .line 15
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/e;->k1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GiftPackageInfoBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageInfoBean;->getMessages()Lcom/join/mgps/dto/GiftPackageInfoMessageBean;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageInfoMessageBean;->getData()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->showMain()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->loadFailed()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->loadFailed()V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method getGiftPackageOperation()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "\u9886\u53d6\u5931\u8d25"

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->Uid:I

    .line 14
    .line 15
    iget-object v3, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-object v4, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->gameId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v2, v3, v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getGiftPackageOperationRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 28
    .line 29
    invoke-interface {v2, v0}, Lcom/join/mgps/rpc/e;->N0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GiftPackageOperationBean;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getFlag()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "0"

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getError_info()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getCode()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v2, "1001"

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GiftsDetailActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->goneLoding()V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationBean;->getMessages()Lcom/join/mgps/dto/GiftPackageOperationMessageBean;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageOperationMessageBean;->getData()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-lez v2, :cond_2

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lcom/join/mgps/dto/GiftPackageDataOperationBean;

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GiftsDetailActivity;->showDialog(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_4

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/GiftsDetailActivity;->setEdtitextCode(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GiftsDetailActivity;->showToast(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GiftsDetailActivity;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    goto :goto_1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 124
    .line 125
    .line 126
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->goneLoding()V

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->goneLoding()V

    .line 131
    .line 132
    .line 133
    throw v0

    .line 134
    :cond_5
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/GiftsDetailActivity;->showToast(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->goneLoding()V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method public getRequestBean()Lcom/join/mgps/dto/CommonRequestBean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->Uid:I

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->Uid:I

    .line 26
    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_id()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getGiftPackageInfoRequestBean(II)Lcom/join/mgps/dto/CommonRequestBean;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method goneLoding()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method loadFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->scrollView:Landroid/widget/ScrollView;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->setResult4Request()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->dismissVipDialog()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-super {p0}, Lcom/BaseActivity;->onDestroy()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 3
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
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 8
    .line 9
    if-eqz v1, :cond_3

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v1, 0x5

    .line 34
    if-eq p1, v1, :cond_2

    .line 35
    .line 36
    const/16 v1, 0x8

    .line 37
    .line 38
    if-eq p1, v1, :cond_0

    .line 39
    .line 40
    const/16 v1, 0xb

    .line 41
    .line 42
    if-eq p1, v1, :cond_2

    .line 43
    .line 44
    const/16 v1, 0x30

    .line 45
    .line 46
    if-eq p1, v1, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 66
    .line 67
    if-eqz p1, :cond_3

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_3

    .line 84
    .line 85
    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 86
    .line 87
    :cond_3
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->getGameGiftPackageInfo()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->showLoading2()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->getGameGiftPackageInfo()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method saveCodeTv()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_overdue()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "\u8be5\u793c\u5305\u5df2\u8fc7\u671f"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 31
    .line 32
    const-string v1, "clipboard"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/content/ClipboardManager;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 61
    .line 62
    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, "\u5df2\u590d\u5236\u5230\u526a\u8d34\u677f"

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1, p0}, Lcom/join/mgps/Util/IntentUtil;->goLoginNetGame(Landroid/content/Context;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_3

    .line 101
    .line 102
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_type()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-direct {p0, v1}, Lcom/join/mgps/activity/GiftsDetailActivity;->checkRight(Ljava/lang/String;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->Uid:I

    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->dialog:Lcom/join/mgps/dialog/f1;

    .line 121
    .line 122
    if-eqz v0, :cond_2

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/join/mgps/dialog/f1;->b()V

    .line 125
    .line 126
    .line 127
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->getGiftPackageOperation()V

    .line 128
    .line 129
    .line 130
    :cond_3
    :goto_0
    return-void
.end method

.method setEdtitextCode(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->saveCodeContent:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->saveCodeTv:Landroid/widget/TextView;

    .line 7
    .line 8
    const-string v0, "\u590d\u5236"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method setResult4Request()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "receivedOemDetail"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x64

    .line 27
    .line 28
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method setSaveCodeTv()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_status()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x7f080f97

    .line 8
    .line 9
    .line 10
    const v2, -0x577e7

    .line 11
    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v0, v3, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_overdue()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne v0, v3, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->saveCodeTv:Landroid/widget/TextView;

    .line 25
    .line 26
    const-string v1, "\u5df2\u8fc7\u671f"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->saveCodeTv:Landroid/widget/TextView;

    .line 32
    .line 33
    const v1, -0x767677

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->saveCodeTv:Landroid/widget/TextView;

    .line 40
    .line 41
    const v1, 0x7f080f93

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->saveCodeTv:Landroid/widget/TextView;

    .line 49
    .line 50
    const-string v3, "\u590d\u5236"

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->saveCodeTv:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->saveCodeTv:Landroid/widget/TextView;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->saveCodeTv:Landroid/widget/TextView;

    .line 67
    .line 68
    const-string v3, "\u9886\u53d6"

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->saveCodeTv:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->saveCodeTv:Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method

.method showDialog(Lcom/join/mgps/dto/GiftPackageDataOperationBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGift_info()Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_status(I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_overdue()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_overdue(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->setGift_package_code(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->saveCodeTv:Landroid/widget/TextView;

    .line 30
    .line 31
    const v1, 0x7f080f97

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/join/mgps/customview/t;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 40
    .line 41
    const v2, 0x7f1301b0

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 48
    .line 49
    const v1, 0x7f0d0814

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 56
    .line 57
    const v1, 0x7f0a04b2

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/Button;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->dialog_button_cancel:Landroid/widget/Button;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 69
    .line 70
    const v1, 0x7f0a04b8

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Landroid/widget/Button;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 80
    .line 81
    const v2, 0x7f0a1762

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Landroid/widget/TextView;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 91
    .line 92
    const v3, 0x7f0a146f

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Landroid/widget/TextView;

    .line 100
    .line 101
    iget-object v3, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 102
    .line 103
    const v4, 0x7f0a107a

    .line 104
    .line 105
    .line 106
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Landroid/widget/TextView;

    .line 111
    .line 112
    iput-object v3, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->moneyText:Landroid/widget/TextView;

    .line 113
    .line 114
    iget-object v3, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 115
    .line 116
    const v4, 0x7f0a146e

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Landroid/widget/TextView;

    .line 124
    .line 125
    const-string v4, "\u9886\u53d6"

    .line 126
    .line 127
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    const-string v4, "\u9886\u53f7\u6210\u529f"

    .line 131
    .line 132
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    const-string v1, "\u5173\u95ed"

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->dialog_button_cancel:Landroid/widget/Button;

    .line 150
    .line 151
    new-instance v3, Lcom/join/mgps/activity/GiftsDetailActivity$a;

    .line 152
    .line 153
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/GiftsDetailActivity$a;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    new-instance v1, Lcom/join/mgps/activity/GiftsDetailActivity$b;

    .line 160
    .line 161
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GiftsDetailActivity$b;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    new-instance v1, Lcom/join/mgps/activity/GiftsDetailActivity$c;

    .line 168
    .line 169
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GiftsDetailActivity$c;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 176
    .line 177
    new-instance v1, Lcom/join/mgps/activity/GiftsDetailActivity$d;

    .line 178
    .line 179
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GiftsDetailActivity$d;-><init>(Lcom/join/mgps/activity/GiftsDetailActivity;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/join/mgps/dto/GiftPackageDataOperationBean;->getGame_info()Lcom/join/mgps/dto/DetailResultBean;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    iput-object p1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->getDownloadStatus()V

    .line 192
    .line 193
    .line 194
    return-void
.end method

.method showDownloadUi()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->downloadTask:Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/16 v2, 0x2b

    .line 28
    .line 29
    if-lez v1, :cond_1

    .line 30
    .line 31
    const/16 v0, 0x2b

    .line 32
    .line 33
    :cond_1
    if-eqz v0, :cond_3

    .line 34
    .line 35
    const/4 v1, 0x5

    .line 36
    if-eq v0, v1, :cond_2

    .line 37
    .line 38
    const/16 v1, 0x9

    .line 39
    .line 40
    if-eq v0, v1, :cond_3

    .line 41
    .line 42
    if-eq v0, v2, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->dialog_button_cancel:Landroid/widget/Button;

    .line 45
    .line 46
    const-string v1, "\u4e0b\u8f7d\u4e2d.."

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->dialog_button_cancel:Landroid/widget/Button;

    .line 53
    .line 54
    const-string v1, "\u542f\u52a8\u6e38\u620f"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->dialog_button_cancel:Landroid/widget/Button;

    .line 61
    .line 62
    const-string v1, "\u4e0b\u8f7d\u6e38\u620f"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->dialog_button_cancel:Landroid/widget/Button;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetailResultBean;->getDown_status()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 93
    .line 94
    invoke-virtual {v2}, Lcom/join/mgps/dto/DetailResultBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget-object v3, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 99
    .line 100
    invoke-virtual {v3}, Lcom/join/mgps/dto/DetailResultBean;->getCrc_sign_id()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->I3(Landroid/widget/Button;ILcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->detailResultBean:Lcom/join/mgps/dto/DetailResultBean;

    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/join/mgps/dto/DetailResultBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->moneyText:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->B3(Lcom/join/mgps/dto/TipNew;Landroid/widget/TextView;)V

    .line 116
    .line 117
    .line 118
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->saveCodeContent:Landroid/widget/TextView;

    .line 119
    .line 120
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 130
    .line 131
    if-eqz v0, :cond_6

    .line 132
    .line 133
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-eqz v0, :cond_5

    .line 138
    .line 139
    return-void

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->myDialog:Landroid/app/Dialog;

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 143
    .line 144
    .line 145
    :cond_6
    return-void
.end method

.method showLoading2()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method showMain()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->scrollView:Landroid/widget/ScrollView;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftNameTv:Landroid/widget/TextView;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_title()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->saveCodeContent:Landroid/widget/TextView;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_code()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_pic()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 50
    .line 51
    invoke-static {v2}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const v3, 0x7f08018d

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v3, v1, v2}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftContent:Landroid/widget/TextView;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_content()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftTime:Landroid/widget/TextView;

    .line 73
    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 80
    .line 81
    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_begin()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    invoke-static {v2, v3}, Lcom/join/mgps/Util/e0;->C(J)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v2, " \u81f3 "

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_times_end()J

    .line 100
    .line 101
    .line 102
    move-result-wide v2

    .line 103
    invoke-static {v2, v3}, Lcom/join/mgps/Util/e0;->C(J)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftMethod:Landroid/widget/TextView;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->giftPackageDataInfoBean:Lcom/join/mgps/dto/GiftPackageDataInfoBean;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/join/mgps/dto/GiftPackageDataInfoBean;->getGift_package_explain()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/join/mgps/activity/GiftsDetailActivity;->setSaveCodeTv()V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method showSvipGiftDialog()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->mGiftDialog:Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->e0(Landroid/content/Context;)Lcom/join/mgps/customview/t;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->mGiftDialog:Lcom/join/mgps/customview/t;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->mGiftDialog:Lcom/join/mgps/customview/t;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method showVipDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->g0(Landroid/content/Context;)Lcom/join/mgps/customview/t;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/GiftsDetailActivity;->mVipDialog:Lcom/join/mgps/customview/t;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
