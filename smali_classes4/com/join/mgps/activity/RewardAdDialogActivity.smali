.class public Lcom/join/mgps/activity/RewardAdDialogActivity;
.super Lcom/join/mgps/base/dialog/BaseDialogActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/RewardAdDialogActivity$MyReceiver;
    }
.end annotation


# static fields
.field public static final KEY_REWARD_PARAMS:Ljava/lang/String; = "_RewardAdParams"


# instance fields
.field private adError:Z

.field adVideoCallBack:Lcom/join/mgps/ad/n;

.field private hasNet:Z

.field hasNoNet:Z

.field icon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field iv_close:Landroid/widget/ImageView;

.field private mAdID:Ljava/lang/String;

.field private mAdType:I

.field private mAppID:Ljava/lang/String;

.field private mCfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

.field private mDuration:I

.field private mGameId:Ljava/lang/String;

.field private mResourceId:Ljava/lang/String;

.field myReceiver:Lcom/join/mgps/activity/RewardAdDialogActivity$MyReceiver;

.field netBroadcastReceiver:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

.field rewardAdParams:Lcom/join/mgps/ad/RewardAdParams;

.field rl_opt_vip:Landroid/widget/RelativeLayout;

.field tv_ad_tip:Landroid/widget/TextView;

.field tv_ad_vip:Landroid/widget/TextView;

.field tv_ad_vip_tip:Landroid/widget/TextView;

.field tv_opt_launch:Landroid/widget/TextView;

.field tv_opt_view_ad:Landroid/widget/TextView;

.field tv_opt_vip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->hasNet:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mAdType:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->adError:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->hasNoNet:Z

    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/RewardAdDialogActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/RewardAdDialogActivity;->initCallBack()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/RewardAdDialogActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mAdType:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$1000(Lcom/join/mgps/activity/RewardAdDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Lcom/join/mgps/activity/RewardAdDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1200(Lcom/join/mgps/activity/RewardAdDialogActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/RewardAdDialogActivity;->sendData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/RewardAdDialogActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mAppID:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/RewardAdDialogActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mAdID:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/RewardAdDialogActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/RewardAdDialogActivity;->updateNetState()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/RewardAdDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/RewardAdDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$702(Lcom/join/mgps/activity/RewardAdDialogActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->adError:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$800(Lcom/join/mgps/activity/RewardAdDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/join/mgps/activity/RewardAdDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method private initCallBack()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->adVideoCallBack:Lcom/join/mgps/ad/n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/activity/RewardAdDialogActivity$c;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/RewardAdDialogActivity$c;-><init>(Lcom/join/mgps/activity/RewardAdDialogActivity;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->adVideoCallBack:Lcom/join/mgps/ad/n;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private sendData()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/dto/RequestInfoArgs;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/RequestInfoArgs;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestInfoArgs;->setUid(I)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/join/mgps/dto/RequestInfoArgs$RequestInfoinfo;

    .line 22
    .line 23
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestInfoArgs$RequestInfoinfo;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/dto/RequestInfoArgs$RequestInfoinfo;->setTime(J)V

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestInfoArgs$RequestInfoinfo;->setType(I)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, ""

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestInfoArgs$RequestInfoinfo;->setUid(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v2, v1}, Lcom/join/android/app/common/utils/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1}, Lcom/papa/sim/statistic/http/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/RequestInfoArgs;->setInfo(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getDefalutRequestBean(Ljava/lang/Object;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/d;->N1()Lb7/d;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v1, v0}, Lb7/d;->N1(Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Lcom/join/mgps/activity/RewardAdDialogActivity$b;

    .line 105
    .line 106
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/RewardAdDialogActivity$b;-><init>(Lcom/join/mgps/activity/RewardAdDialogActivity;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method private updateNetState()V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->hasNet:Z

    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_ad_vip_tip:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_opt_vip:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const v3, 0x7f071224

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    float-to-int v2, v2

    .line 36
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_opt_vip:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mCfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getFree_receive_vip()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-ne v1, v0, :cond_0

    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_ad_tip:Landroid/widget/TextView;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mCfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getF_tip_text()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_opt_vip:Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mCfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getF_btn_text()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_opt_view_ad:Landroid/widget/TextView;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mCfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getB_btn_text()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_ad_vip_tip:Landroid/widget/TextView;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mCfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getF_ic_text()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mCfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getF_ic_text()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    new-instance v1, Lcom/papa91/wrapper/UserPrefs;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/papa91/wrapper/UserPrefs;-><init>(Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/papa91/wrapper/UserPrefs;->getAdGamesHasSeeCount()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    sub-int/2addr v0, v1

    .line 117
    if-lez v0, :cond_1

    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_ad_vip_tip:Landroid/widget/TextView;

    .line 120
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v3, "\u4ec5\u9700"

    .line 127
    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v1, "\u6b21"

    .line 135
    .line 136
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_ad_tip:Landroid/widget/TextView;

    .line 148
    .line 149
    iget-object v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mCfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getTip_text()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_opt_vip:Landroid/widget/TextView;

    .line 159
    .line 160
    iget-object v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mCfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 161
    .line 162
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getT_btn_text()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_opt_view_ad:Landroid/widget/TextView;

    .line 170
    .line 171
    iget-object v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mCfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getB_btn_text()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    :catch_0
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 181
    .line 182
    iget-object v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mCfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 183
    .line 184
    invoke-virtual {v1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getF_play_ic()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    const v2, 0x7f08090a

    .line 189
    .line 190
    .line 191
    invoke-static {v0, v2, v1}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_2
    iput-boolean v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->hasNet:Z

    .line 196
    .line 197
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_ad_vip_tip:Landroid/widget/TextView;

    .line 198
    .line 199
    const/16 v2, 0x8

    .line 200
    .line 201
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_opt_vip:Landroid/widget/TextView;

    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 211
    .line 212
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 213
    .line 214
    iget-object v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_opt_vip:Landroid/widget/TextView;

    .line 215
    .line 216
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_ad_tip:Landroid/widget/TextView;

    .line 220
    .line 221
    const-string v1, "\u89c2\u770b\u89c6\u9891\u5e7f\u544a\u53ef\u4ee5\u652f\u6301\u609f\u996d\u66f4\u597d\n\u66f4\u5feb\u4e0a\u4f20\u5355\u673a\u6e38\u620f\u8d44\u6e90"

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_opt_vip:Landroid/widget/TextView;

    .line 227
    .line 228
    const-string v1, "\u5f00\u542f\u7f51\u7edc\u770b\u5e7f\u544a"

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_opt_view_ad:Landroid/widget/TextView;

    .line 234
    .line 235
    const-string v1, "\u72e0\u5fc3\u62d2\u7edd\uff0c\u79bb\u7ebf\u6e38\u620f"

    .line 236
    .line 237
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    .line 239
    .line 240
    :goto_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->iv_close:Landroid/widget/ImageView;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 6
    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->rl_opt_vip:Landroid/widget/RelativeLayout;

    .line 11
    .line 12
    if-ne p1, v0, :cond_4

    .line 13
    .line 14
    iget-boolean p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->hasNet:Z

    .line 15
    .line 16
    if-eqz p1, :cond_3

    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mCfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getFree_receive_vip()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 v0, 0x1

    .line 27
    if-ne p1, v0, :cond_1

    .line 28
    .line 29
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mCfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getF_btn_url()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, p0, v0}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mCfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getT_btn_url()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    new-instance p1, Landroid/content/Intent;

    .line 58
    .line 59
    const-string v0, "com.tools.AdBroadcast"

    .line 60
    .line 61
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v0, "action"

    .line 65
    .line 66
    const/4 v1, 0x3

    .line 67
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mCfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/join/mgps/dto/SingleGameAdCfgBean;->getT_btn_url()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v1, "url"

    .line 77
    .line 78
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    sget-object v0, Lcom/papa/sim/statistic/Event;->onMemberAdvert23:Lcom/papa/sim/statistic/Event;

    .line 89
    .line 90
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 91
    .line 92
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 96
    .line 97
    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :cond_3
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    sget-object v0, Lcom/papa/sim/statistic/Event;->onAdvert23_offline:Lcom/papa/sim/statistic/Event;

    .line 105
    .line 106
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 107
    .line 108
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 112
    .line 113
    .line 114
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 115
    .line 116
    .line 117
    goto/16 :goto_2

    .line 118
    .line 119
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_opt_view_ad:Landroid/widget/TextView;

    .line 120
    .line 121
    if-ne p1, v0, :cond_8

    .line 122
    .line 123
    iget-boolean p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->hasNet:Z

    .line 124
    .line 125
    if-eqz p1, :cond_6

    .line 126
    .line 127
    iget-boolean v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->adError:Z

    .line 128
    .line 129
    if-nez v0, :cond_6

    .line 130
    .line 131
    sget-object p1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_5

    .line 138
    .line 139
    invoke-static {p0}, Lcom/join/mgps/ad/a;->g(Landroid/content/Context;)Lcom/join/mgps/ad/a;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0, p1}, Lcom/join/mgps/ad/a;->i(Landroid/app/Activity;)V

    .line 144
    .line 145
    .line 146
    :cond_5
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    sget-object v0, Lcom/papa/sim/statistic/Event;->onAdvert23:Lcom/papa/sim/statistic/Event;

    .line 151
    .line 152
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 153
    .line 154
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 161
    .line 162
    instance-of v0, p1, Le6/b;

    .line 163
    .line 164
    if-eqz v0, :cond_9

    .line 165
    .line 166
    check-cast p1, Le6/b;

    .line 167
    .line 168
    invoke-interface {p1}, Le6/b;->onAdShow()V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_6
    if-eqz p1, :cond_7

    .line 173
    .line 174
    iget-boolean p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->adError:Z

    .line 175
    .line 176
    if-eqz p1, :cond_7

    .line 177
    .line 178
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    const-string v0, "\u89c6\u9891\u52a0\u8f7d\u5931\u8d25"

    .line 183
    .line 184
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_7
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    sget-object v0, Lcom/papa/sim/statistic/Event;->gameAdvert23_offline:Lcom/papa/sim/statistic/Event;

    .line 193
    .line 194
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 195
    .line 196
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 200
    .line 201
    .line 202
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 206
    .line 207
    instance-of v0, p1, Le6/b;

    .line 208
    .line 209
    if-eqz v0, :cond_9

    .line 210
    .line 211
    check-cast p1, Le6/b;

    .line 212
    .line 213
    invoke-interface {p1}, Le6/b;->onAdClose()V

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_opt_launch:Landroid/widget/TextView;

    .line 218
    .line 219
    if-ne p1, v0, :cond_9

    .line 220
    .line 221
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 226
    .line 227
    new-instance v1, Lcom/join/mgps/dto/ExtBean;

    .line 228
    .line 229
    invoke-direct {v1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 230
    .line 231
    .line 232
    const-string v2, "\u5355\u673a\u542f\u52a8\u5f39\u7a97"

    .line 233
    .line 234
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mGameId:Ljava/lang/String;

    .line 239
    .line 240
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setGameId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    iget-object v2, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mResourceId:Ljava/lang/String;

    .line 245
    .line 246
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 262
    .line 263
    .line 264
    iget-object p1, p0, Lcom/join/mgps/base/dialog/BaseDialogActivity;->callback:Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 265
    .line 266
    instance-of v0, p1, Le6/b;

    .line 267
    .line 268
    if-eqz v0, :cond_9

    .line 269
    .line 270
    check-cast p1, Le6/b;

    .line 271
    .line 272
    invoke-interface {p1}, Le6/b;->onDirectLaunch()V

    .line 273
    .line 274
    .line 275
    :cond_9
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d009f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    const p1, 0x7f0a0a22

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/ImageView;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->iv_close:Landroid/widget/ImageView;

    .line 23
    .line 24
    const p1, 0x7f0a1911

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/widget/TextView;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_ad_tip:Landroid/widget/TextView;

    .line 34
    .line 35
    const p1, 0x7f0a13f1

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->rl_opt_vip:Landroid/widget/RelativeLayout;

    .line 45
    .line 46
    const p1, 0x7f0a19ef

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_opt_vip:Landroid/widget/TextView;

    .line 56
    .line 57
    const p1, 0x7f0a1912

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_ad_vip_tip:Landroid/widget/TextView;

    .line 67
    .line 68
    const p1, 0x7f0a19ee

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/widget/TextView;

    .line 76
    .line 77
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_opt_view_ad:Landroid/widget/TextView;

    .line 78
    .line 79
    const p1, 0x7f0a19ea

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Landroid/widget/TextView;

    .line 87
    .line 88
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_opt_launch:Landroid/widget/TextView;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaintFlags()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    or-int/lit8 v0, v0, 0x8

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 97
    .line 98
    .line 99
    const p1, 0x7f0a084f

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 107
    .line 108
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->icon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 109
    .line 110
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->iv_close:Landroid/widget/ImageView;

    .line 111
    .line 112
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_ad_vip_tip:Landroid/widget/TextView;

    .line 116
    .line 117
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_opt_view_ad:Landroid/widget/TextView;

    .line 121
    .line 122
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->tv_opt_launch:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->rl_opt_vip:Landroid/widget/RelativeLayout;

    .line 131
    .line 132
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-eqz p1, :cond_0

    .line 140
    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const-string v0, "_RewardAdParams"

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    check-cast p1, Lcom/join/mgps/ad/RewardAdParams;

    .line 152
    .line 153
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->rewardAdParams:Lcom/join/mgps/ad/RewardAdParams;

    .line 154
    .line 155
    if-eqz p1, :cond_0

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/join/mgps/ad/RewardAdParams;->getAdType()I

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    iput p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mAdType:I

    .line 162
    .line 163
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->rewardAdParams:Lcom/join/mgps/ad/RewardAdParams;

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/join/mgps/ad/RewardAdParams;->getCfgBean()Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mCfgBean:Lcom/join/mgps/dto/SingleGameAdCfgBean;

    .line 170
    .line 171
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->rewardAdParams:Lcom/join/mgps/ad/RewardAdParams;

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/join/mgps/ad/RewardAdParams;->getAdId()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mAdID:Ljava/lang/String;

    .line 178
    .line 179
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->rewardAdParams:Lcom/join/mgps/ad/RewardAdParams;

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/join/mgps/ad/RewardAdParams;->getAppId()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mAppID:Ljava/lang/String;

    .line 186
    .line 187
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->rewardAdParams:Lcom/join/mgps/ad/RewardAdParams;

    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/join/mgps/ad/RewardAdParams;->getDuration()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    iput p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mDuration:I

    .line 194
    .line 195
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->rewardAdParams:Lcom/join/mgps/ad/RewardAdParams;

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/join/mgps/ad/RewardAdParams;->getGameId()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mGameId:Ljava/lang/String;

    .line 202
    .line 203
    iget-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->rewardAdParams:Lcom/join/mgps/ad/RewardAdParams;

    .line 204
    .line 205
    invoke-virtual {p1}, Lcom/join/mgps/ad/RewardAdParams;->getResourceId()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mResourceId:Ljava/lang/String;

    .line 210
    .line 211
    :cond_0
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 212
    .line 213
    .line 214
    move-result p1

    .line 215
    if-eqz p1, :cond_1

    .line 216
    .line 217
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    sget-object v0, Lcom/papa/sim/statistic/Event;->showAdvert23:Lcom/papa/sim/statistic/Event;

    .line 222
    .line 223
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 224
    .line 225
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 229
    .line 230
    .line 231
    goto :goto_0

    .line 232
    :cond_1
    const/4 p1, 0x1

    .line 233
    iput-boolean p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->hasNoNet:Z

    .line 234
    .line 235
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    sget-object v0, Lcom/papa/sim/statistic/Event;->showAdvert23_offline:Lcom/papa/sim/statistic/Event;

    .line 240
    .line 241
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 242
    .line 243
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 247
    .line 248
    .line 249
    :goto_0
    invoke-direct {p0}, Lcom/join/mgps/activity/RewardAdDialogActivity;->updateNetState()V

    .line 250
    .line 251
    .line 252
    invoke-direct {p0}, Lcom/join/mgps/activity/RewardAdDialogActivity;->initCallBack()V

    .line 253
    .line 254
    .line 255
    invoke-static {p0}, Lcom/join/mgps/ad/a;->g(Landroid/content/Context;)Lcom/join/mgps/ad/a;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    iget v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mAdType:I

    .line 260
    .line 261
    iget-object v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mAppID:Ljava/lang/String;

    .line 262
    .line 263
    iget-object v2, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->mAdID:Ljava/lang/String;

    .line 264
    .line 265
    iget-object v3, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->adVideoCallBack:Lcom/join/mgps/ad/n;

    .line 266
    .line 267
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/join/mgps/ad/a;->h(ILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/ad/n;)V

    .line 268
    .line 269
    .line 270
    new-instance p1, Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    .line 271
    .line 272
    invoke-direct {p1}, Lcom/join/mgps/broadcast/NetBroadcastReceiver;-><init>()V

    .line 273
    .line 274
    .line 275
    iput-object p1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->netBroadcastReceiver:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    .line 276
    .line 277
    new-instance v0, Lcom/join/mgps/activity/RewardAdDialogActivity$a;

    .line 278
    .line 279
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/RewardAdDialogActivity$a;-><init>(Lcom/join/mgps/activity/RewardAdDialogActivity;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, v0}, Lcom/join/mgps/broadcast/NetBroadcastReceiver;->a(Lcom/join/mgps/broadcast/NetBroadcastReceiver$a;)V

    .line 283
    .line 284
    .line 285
    new-instance p1, Landroid/content/IntentFilter;

    .line 286
    .line 287
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    .line 289
    .line 290
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 291
    .line 292
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->netBroadcastReceiver:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    .line 296
    .line 297
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    .line 299
    .line 300
    invoke-virtual {p0}, Lcom/join/mgps/activity/RewardAdDialogActivity;->registerMyReceiver()V

    .line 301
    .line 302
    .line 303
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->netBroadcastReceiver:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->netBroadcastReceiver:Lcom/join/mgps/broadcast/NetBroadcastReceiver;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->myReceiver:Lcom/join/mgps/activity/RewardAdDialogActivity$MyReceiver;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->myReceiver:Lcom/join/mgps/activity/RewardAdDialogActivity$MyReceiver;

    .line 22
    .line 23
    :cond_1
    invoke-static {p0}, Lcom/join/mgps/ad/a;->g(Landroid/content/Context;)Lcom/join/mgps/ad/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/ad/a;->b()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method registerMyReceiver()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/activity/RewardAdDialogActivity$MyReceiver;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/RewardAdDialogActivity$MyReceiver;-><init>(Lcom/join/mgps/activity/RewardAdDialogActivity;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->myReceiver:Lcom/join/mgps/activity/RewardAdDialogActivity$MyReceiver;

    .line 7
    .line 8
    new-instance v0, Landroid/content/IntentFilter;

    .line 9
    .line 10
    const-string v1, "com.join.android.app.mgsim.wufun.broadcast.action_raise_vip_success"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "com.join.android.app.mgsim.wufan.mha.broadcast.action_raise_vip_success"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/RewardAdDialogActivity;->myReceiver:Lcom/join/mgps/activity/RewardAdDialogActivity$MyReceiver;

    .line 21
    .line 22
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    return-void
.end method
