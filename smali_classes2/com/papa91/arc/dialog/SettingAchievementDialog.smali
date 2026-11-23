.class public Lcom/papa91/arc/dialog/SettingAchievementDialog;
.super Lcom/papa91/arc/dialog/SettingDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter;,
        Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;
    }
.end annotation


# instance fields
.field private allAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;

.field private allPage:I

.field private context:Landroid/content/Context;

.field private defaultType:I

.field private isTourist:Z

.field private ivAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private ivTips:Landroid/widget/ImageView;

.field private llUserInfo:Landroid/widget/LinearLayout;

.field private ll_empty:Landroid/widget/LinearLayout;

.field private lockAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;

.field private lockPage:I

.field private lv_achievement_all:Lcom/papa91/arc/widget/listview/ListViewFinal;

.field private lv_achievement_lock:Lcom/papa91/arc/widget/listview/ListViewFinal;

.field private lv_achievement_unlock:Lcom/papa91/arc/widget/listview/ListViewFinal;

.field private lv_type:Landroid/widget/ListView;

.field private oldSelIndex:I

.field private progressBar:Landroid/widget/ProgressBar;

.field private tvProgress:Landroid/widget/TextView;

.field private tvUsername:Landroid/widget/TextView;

.field private tv_back_game:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;

.field private typeAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter;

.field private typeBeans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/papa91/arc/bean/TypeBean;",
            ">;"
        }
    .end annotation
.end field

.field private unlockAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;

.field private unlockPage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->allPage:I

    .line 6
    .line 7
    iput v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->unlockPage:I

    .line 8
    .line 9
    iput v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lockPage:I

    .line 10
    .line 11
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->context:Landroid/content/Context;

    .line 12
    .line 13
    iput p2, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->defaultType:I

    .line 14
    .line 15
    iput-boolean p3, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->isTourist:Z

    .line 16
    .line 17
    sget p1, Lorg/ppsspp/ppsspp/R$id;->tv_back_game:I

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->tv_back_game:Landroid/widget/TextView;

    .line 26
    .line 27
    sget p1, Lorg/ppsspp/ppsspp/R$id;->ivAvatar:I

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->ivAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 36
    .line 37
    sget p1, Lorg/ppsspp/ppsspp/R$id;->tvUsername:I

    .line 38
    .line 39
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Landroid/widget/TextView;

    .line 44
    .line 45
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->tvUsername:Landroid/widget/TextView;

    .line 46
    .line 47
    sget p1, Lorg/ppsspp/ppsspp/R$id;->llUserInfo:I

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/widget/LinearLayout;

    .line 54
    .line 55
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->llUserInfo:Landroid/widget/LinearLayout;

    .line 56
    .line 57
    sget p1, Lorg/ppsspp/ppsspp/R$id;->lv_type:I

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/widget/ListView;

    .line 64
    .line 65
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_type:Landroid/widget/ListView;

    .line 66
    .line 67
    sget p1, Lorg/ppsspp/ppsspp/R$id;->lv_achievement_all:I

    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 74
    .line 75
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_all:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 76
    .line 77
    sget p1, Lorg/ppsspp/ppsspp/R$id;->lv_achievement_unlock:I

    .line 78
    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 84
    .line 85
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_unlock:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 86
    .line 87
    sget p1, Lorg/ppsspp/ppsspp/R$id;->lv_achievement_lock:I

    .line 88
    .line 89
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    check-cast p1, Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 94
    .line 95
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_lock:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 96
    .line 97
    sget p1, Lorg/ppsspp/ppsspp/R$id;->tv_title:I

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Landroid/widget/TextView;

    .line 104
    .line 105
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->tv_title:Landroid/widget/TextView;

    .line 106
    .line 107
    sget p1, Lorg/ppsspp/ppsspp/R$id;->ivTips:I

    .line 108
    .line 109
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Landroid/widget/ImageView;

    .line 114
    .line 115
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->ivTips:Landroid/widget/ImageView;

    .line 116
    .line 117
    sget p1, Lorg/ppsspp/ppsspp/R$id;->tvProgress:I

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Landroid/widget/TextView;

    .line 124
    .line 125
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->tvProgress:Landroid/widget/TextView;

    .line 126
    .line 127
    sget p1, Lorg/ppsspp/ppsspp/R$id;->progressBar:I

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Landroid/widget/ProgressBar;

    .line 134
    .line 135
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 136
    .line 137
    sget p1, Lorg/ppsspp/ppsspp/R$id;->ll_empty:I

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Landroid/widget/LinearLayout;

    .line 144
    .line 145
    iput-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->ll_empty:Landroid/widget/LinearLayout;

    .line 146
    .line 147
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->tv_title:Landroid/widget/TextView;

    .line 148
    .line 149
    const-string p2, "\u6210\u5c31"

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    const/4 p1, 0x2

    .line 155
    new-array p1, p1, [Landroid/view/View;

    .line 156
    .line 157
    const/4 p2, 0x0

    .line 158
    iget-object p3, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->tv_back_game:Landroid/widget/TextView;

    .line 159
    .line 160
    aput-object p3, p1, p2

    .line 161
    .line 162
    iget-object p2, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->ivTips:Landroid/widget/ImageView;

    .line 163
    .line 164
    aput-object p2, p1, v0

    .line 165
    .line 166
    invoke-virtual {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->setOnListener([Landroid/view/View;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public static synthetic a(Lcom/papa91/arc/dialog/SettingAchievementDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lambda$initData$1()V

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/dialog/SettingAchievementDialog;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->oldSelIndex:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$002(Lcom/papa91/arc/dialog/SettingAchievementDialog;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->oldSelIndex:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcom/papa91/arc/dialog/SettingAchievementDialog;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->typeBeans:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/papa91/arc/dialog/SettingAchievementDialog;)Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->typeAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/papa91/arc/dialog/SettingAchievementDialog;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->setTab(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/papa91/arc/dialog/SettingAchievementDialog;ILcom/papa91/arc/bean/Response;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lambda$getData$4(ILcom/papa91/arc/bean/Response;I)V

    return-void
.end method

.method public static synthetic c(Lcom/papa91/arc/dialog/SettingAchievementDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lambda$refreshUserStatus$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/papa91/arc/dialog/SettingAchievementDialog;Lcom/papa91/arc/bean/Request;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lambda$getData$5(Lcom/papa91/arc/bean/Request;II)V

    return-void
.end method

.method public static synthetic e(Lcom/papa91/arc/dialog/SettingAchievementDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lambda$initData$2()V

    return-void
.end method

.method public static synthetic f(Lcom/papa91/arc/dialog/SettingAchievementDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lambda$initData$0()V

    return-void
.end method

.method private getData(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->allPage:I

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->unlockPage:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lockPage:I

    .line 14
    .line 15
    :goto_0
    new-instance v1, Lcom/papa91/arc/bean/RequestAchievementArgs;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/papa91/arc/bean/RequestAchievementArgs;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/papa91/arc/bean/RequestAchievementArgs;->setPage(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getGameId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/RequestAchievementArgs;->setGameId(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getUserId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/RequestAchievementArgs;->setUid(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getPlugVerCode()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/RequestAchievementArgs;->setPlugVersion(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p1}, Lcom/papa91/arc/bean/RequestAchievementArgs;->setType(I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->getToken()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/RequestAchievementArgs;->setToken(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v2, v1}, Lcom/papa91/arc/bean/Request;->getRequest(Landroid/content/Context;Ljava/lang/Object;)Lcom/papa91/arc/bean/Request;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Lcom/papa91/arc/util/SignUtil;->getSignForAPP(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Lcom/papa91/arc/bean/Request;->setSign(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Lcom/papa91/arc/dialog/m;

    .line 70
    .line 71
    invoke-direct {v2, p0, v1, p1, v0}, Lcom/papa91/arc/dialog/m;-><init>(Lcom/papa91/arc/dialog/SettingAchievementDialog;Lcom/papa91/arc/bean/Request;II)V

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Lcom/papa91/arc/ext/ThreadManager;->runOnWriteThread(Ljava/lang/Runnable;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method private initData()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->refreshUserStatus()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->typeAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter;-><init>(Lcom/papa91/arc/dialog/SettingAchievementDialog;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->typeAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->typeAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter;

    .line 16
    .line 17
    new-instance v1, Lcom/papa91/arc/dialog/SettingAchievementDialog$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/SettingAchievementDialog$1;-><init>(Lcom/papa91/arc/dialog/SettingAchievementDialog;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setItemClickListener(Lcom/papa91/arc/interfaces/IOnItemClickListener;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_type:Landroid/widget/ListView;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->typeAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->typeBeans:Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance v7, Lcom/papa91/arc/bean/TypeBean;

    .line 40
    .line 41
    const/4 v2, 0x1

    .line 42
    const-string v3, "\u5168\u90e8\u6210\u5c31"

    .line 43
    .line 44
    iget v1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->defaultType:I

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v9, 0x1

    .line 48
    if-ne v1, v9, :cond_1

    .line 49
    .line 50
    const/4 v4, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/4 v4, 0x0

    .line 53
    :goto_0
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    move-object v1, v7

    .line 56
    invoke-direct/range {v1 .. v6}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->typeBeans:Ljava/util/ArrayList;

    .line 63
    .line 64
    new-instance v7, Lcom/papa91/arc/bean/TypeBean;

    .line 65
    .line 66
    const/4 v2, 0x2

    .line 67
    const-string v3, "\u5df2\u89e3\u9501"

    .line 68
    .line 69
    iget v1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->defaultType:I

    .line 70
    .line 71
    const/4 v10, 0x2

    .line 72
    if-ne v1, v10, :cond_2

    .line 73
    .line 74
    const/4 v4, 0x1

    .line 75
    goto :goto_1

    .line 76
    :cond_2
    const/4 v4, 0x0

    .line 77
    :goto_1
    const/4 v5, 0x0

    .line 78
    const/4 v6, 0x0

    .line 79
    move-object v1, v7

    .line 80
    invoke-direct/range {v1 .. v6}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->typeBeans:Ljava/util/ArrayList;

    .line 87
    .line 88
    new-instance v7, Lcom/papa91/arc/bean/TypeBean;

    .line 89
    .line 90
    const/4 v2, 0x3

    .line 91
    const-string v3, "\u672a\u89e3\u9501"

    .line 92
    .line 93
    iget v1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->defaultType:I

    .line 94
    .line 95
    const/4 v11, 0x3

    .line 96
    if-ne v1, v11, :cond_3

    .line 97
    .line 98
    const/4 v4, 0x1

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    const/4 v4, 0x0

    .line 101
    :goto_2
    const/4 v5, 0x0

    .line 102
    const/4 v6, 0x0

    .line 103
    move-object v1, v7

    .line 104
    invoke-direct/range {v1 .. v6}, Lcom/papa91/arc/bean/TypeBean;-><init>(ILjava/lang/String;ZII)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->typeAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$TypeAdapter;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->typeBeans:Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->setDatas(Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    new-instance v0, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;

    .line 118
    .line 119
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;-><init>(Lcom/papa91/arc/dialog/SettingAchievementDialog;)V

    .line 120
    .line 121
    .line 122
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->allAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_all:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Lcom/papa91/arc/widget/listview/ListViewFinal;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_all:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 130
    .line 131
    new-instance v1, Lcom/papa91/arc/dialog/o;

    .line 132
    .line 133
    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/o;-><init>(Lcom/papa91/arc/dialog/SettingAchievementDialog;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v1}, Lcom/papa91/arc/widget/listview/ListViewFinal;->setOnLoadMoreListener(Lcom/papa91/arc/widget/listview/OnLoadMoreListener;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, v9}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->getData(I)V

    .line 140
    .line 141
    .line 142
    new-instance v0, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;

    .line 143
    .line 144
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;-><init>(Lcom/papa91/arc/dialog/SettingAchievementDialog;)V

    .line 145
    .line 146
    .line 147
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->unlockAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;

    .line 148
    .line 149
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_unlock:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 150
    .line 151
    invoke-virtual {v1, v0}, Lcom/papa91/arc/widget/listview/ListViewFinal;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_unlock:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 155
    .line 156
    new-instance v1, Lcom/papa91/arc/dialog/p;

    .line 157
    .line 158
    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/p;-><init>(Lcom/papa91/arc/dialog/SettingAchievementDialog;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v1}, Lcom/papa91/arc/widget/listview/ListViewFinal;->setOnLoadMoreListener(Lcom/papa91/arc/widget/listview/OnLoadMoreListener;)V

    .line 162
    .line 163
    .line 164
    invoke-direct {p0, v10}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->getData(I)V

    .line 165
    .line 166
    .line 167
    new-instance v0, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;

    .line 168
    .line 169
    invoke-direct {v0, p0}, Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;-><init>(Lcom/papa91/arc/dialog/SettingAchievementDialog;)V

    .line 170
    .line 171
    .line 172
    iput-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lockAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;

    .line 173
    .line 174
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_lock:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 175
    .line 176
    invoke-virtual {v1, v0}, Lcom/papa91/arc/widget/listview/ListViewFinal;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_lock:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 180
    .line 181
    new-instance v1, Lcom/papa91/arc/dialog/q;

    .line 182
    .line 183
    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/q;-><init>(Lcom/papa91/arc/dialog/SettingAchievementDialog;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v1}, Lcom/papa91/arc/widget/listview/ListViewFinal;->setOnLoadMoreListener(Lcom/papa91/arc/widget/listview/OnLoadMoreListener;)V

    .line 187
    .line 188
    .line 189
    invoke-direct {p0, v11}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->getData(I)V

    .line 190
    .line 191
    .line 192
    iget v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->defaultType:I

    .line 193
    .line 194
    invoke-direct {p0, v0}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->setTab(I)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method private synthetic lambda$getData$4(ILcom/papa91/arc/bean/Response;I)V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ne p1, v1, :cond_0

    .line 4
    .line 5
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_all:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_unlock:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_lock:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 14
    .line 15
    :goto_0
    if-eqz p2, :cond_9

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/papa91/arc/bean/Response;->getCode()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/16 v4, 0xc8

    .line 22
    .line 23
    if-ne v3, v4, :cond_9

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const/4 v4, 0x0

    .line 30
    if-eqz v3, :cond_8

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/papa91/arc/bean/Response;->getData()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Lcom/papa91/arc/bean/AchievementBean;

    .line 37
    .line 38
    if-ne p3, v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/papa91/arc/bean/AchievementBean;->getAchievement_list()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {p2}, Lcom/papa91/arc/bean/AchievementBean;->getAchievement_list()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-lez v3, :cond_2

    .line 55
    .line 56
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    iget-object v3, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->ll_empty:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    const/16 v5, 0x8

    .line 62
    .line 63
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v3, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->tvProgress:Landroid/widget/TextView;

    .line 67
    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v6, "\u60a8\u5df2\u5b8c\u6210"

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Lcom/papa91/arc/bean/AchievementBean;->getDone()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v6, "/"

    .line 86
    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/papa91/arc/bean/AchievementBean;->getTarget()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/papa91/arc/bean/AchievementBean;->getTarget()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 111
    .line 112
    .line 113
    iget-object v3, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 114
    .line 115
    invoke-virtual {p2}, Lcom/papa91/arc/bean/AchievementBean;->getDone()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 120
    .line 121
    .line 122
    if-ne p1, v1, :cond_3

    .line 123
    .line 124
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->allAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;

    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_3
    if-ne p1, v0, :cond_4

    .line 128
    .line 129
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->unlockAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_4
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lockAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;

    .line 133
    .line 134
    :goto_1
    if-eqz p1, :cond_5

    .line 135
    .line 136
    invoke-virtual {p2}, Lcom/papa91/arc/bean/AchievementBean;->getAchievement_list()Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {p1, v0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->addDatas(Ljava/util/List;)V

    .line 141
    .line 142
    .line 143
    :cond_5
    if-le p3, v1, :cond_6

    .line 144
    .line 145
    invoke-virtual {v2}, Lcom/papa91/arc/widget/listview/ListViewFinal;->onLoadMoreComplete()V

    .line 146
    .line 147
    .line 148
    :cond_6
    invoke-virtual {p2}, Lcom/papa91/arc/bean/AchievementBean;->getAchievement_list()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    if-eqz p1, :cond_7

    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/papa91/arc/bean/AchievementBean;->getAchievement_list()Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-lez p1, :cond_7

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_7
    const/4 v1, 0x0

    .line 166
    :goto_2
    invoke-virtual {v2, v1}, Lcom/papa91/arc/widget/listview/ListViewFinal;->setHasLoadMore(Z)V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_8
    invoke-virtual {v2, v4}, Lcom/papa91/arc/widget/listview/ListViewFinal;->setHasLoadMore(Z)V

    .line 171
    .line 172
    .line 173
    :cond_9
    :goto_3
    return-void
.end method

.method private synthetic lambda$getData$5(Lcom/papa91/arc/bean/Request;II)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/papa91/arc/http/HttpUtils;->getAchievements(Lcom/papa91/arc/bean/Request;)Lcom/papa91/arc/bean/Response;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/papa91/arc/dialog/r;

    .line 6
    .line 7
    invoke-direct {v0, p0, p2, p1, p3}, Lcom/papa91/arc/dialog/r;-><init>(Lcom/papa91/arc/dialog/SettingAchievementDialog;ILcom/papa91/arc/bean/Response;I)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/papa91/arc/ext/ThreadManager;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private synthetic lambda$initData$0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->allPage:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->allPage:I

    .line 6
    .line 7
    invoke-direct {p0, v1}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->getData(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic lambda$initData$1()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->unlockPage:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->unlockPage:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-direct {p0, v0}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->getData(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$initData$2()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lockPage:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lockPage:I

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    invoke-direct {p0, v0}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->getData(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private synthetic lambda$refreshUserStatus$3(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->isTourist:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->goLogin()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private refreshUserStatus()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->context:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "Papa_Stat_SharedPreferences"

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "userAvatarForSimulator"

    .line 11
    .line 12
    const-string v2, ""

    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v3, "userNameForSimulator"

    .line 19
    .line 20
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->ivAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 25
    .line 26
    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/facebook/drawee/generic/a;

    .line 31
    .line 32
    sget v3, Lorg/ppsspp/ppsspp/R$drawable;->icon_noraml:I

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/a;->J(I)V

    .line 35
    .line 36
    .line 37
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->ivAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/facebook/drawee/generic/a;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/a;->C(I)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->ivAvatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 49
    .line 50
    iget-boolean v4, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->isTourist:Z

    .line 51
    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v4, "res:///"

    .line 60
    .line 61
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v2, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->tvUsername:Landroid/widget/TextView;

    .line 79
    .line 80
    iget-boolean v2, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->isTourist:Z

    .line 81
    .line 82
    if-eqz v2, :cond_1

    .line 83
    .line 84
    const-string v0, "\u70b9\u51fb\u767b\u5f55"

    .line 85
    .line 86
    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->llUserInfo:Landroid/widget/LinearLayout;

    .line 90
    .line 91
    new-instance v1, Lcom/papa91/arc/dialog/n;

    .line 92
    .line 93
    invoke-direct {v1, p0}, Lcom/papa91/arc/dialog/n;-><init>(Lcom/papa91/arc/dialog/SettingAchievementDialog;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method private setTab(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_all:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x8

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne p1, v3, :cond_0

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v4, 0x8

    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_unlock:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 17
    .line 18
    const/4 v4, 0x2

    .line 19
    if-ne p1, v4, :cond_1

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/16 v5, 0x8

    .line 24
    .line 25
    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_lock:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 29
    .line 30
    const/4 v5, 0x3

    .line 31
    if-ne p1, v5, :cond_2

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    const/16 v5, 0x8

    .line 36
    .line 37
    :goto_2
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    if-ne p1, v3, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_all:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    if-ne p1, v4, :cond_4

    .line 46
    .line 47
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_unlock:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_4
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lv_achievement_lock:Lcom/papa91/arc/widget/listview/ListViewFinal;

    .line 51
    .line 52
    :goto_3
    if-ne p1, v3, :cond_5

    .line 53
    .line 54
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->allAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_5
    if-ne p1, v4, :cond_6

    .line 58
    .line 59
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->unlockAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;

    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_6
    iget-object p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lockAdapter:Lcom/papa91/arc/dialog/SettingAchievementDialog$AchievementAdapter;

    .line 63
    .line 64
    :goto_4
    invoke-virtual {p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getCount()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_7

    .line 69
    .line 70
    const/16 v3, 0x8

    .line 71
    .line 72
    goto :goto_5

    .line 73
    :cond_7
    const/4 v3, 0x0

    .line 74
    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->ll_empty:Landroid/widget/LinearLayout;

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getCount()I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-nez p1, :cond_8

    .line 84
    .line 85
    goto :goto_6

    .line 86
    :cond_8
    const/16 v1, 0x8

    .line 87
    .line 88
    :goto_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method private updateListView(Lcom/papa91/arc/bean/AchievementBean;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lorg/ppsspp/ppsspp/R$layout;->dialog_setting_achievement:I

    .line 2
    .line 3
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/papa91/arc/dialog/SettingDialog;->onClick(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sget v1, Lorg/ppsspp/ppsspp/R$id;->tv_back_game:I

    .line 9
    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->dismiss()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/papa91/arc/dialog/SettingDialog;->showAdVideo()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    sget v0, Lorg/ppsspp/ppsspp/R$id;->ivTips:I

    .line 24
    .line 25
    if-ne p1, v0, :cond_1

    .line 26
    .line 27
    new-instance p1, Lcom/papa91/arc/dialog/AchievmentTipsDialog;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->context:Landroid/content/Context;

    .line 30
    .line 31
    invoke-direct {p1, v0}, Lcom/papa91/arc/dialog/AchievmentTipsDialog;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->ivTips:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    div-int/lit8 v1, v1, 0x2

    .line 41
    .line 42
    int-to-float v1, v1

    .line 43
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->context:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sget v3, Lorg/ppsspp/ppsspp/R$dimen;->wdp336:I

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    sub-float/2addr v1, v2

    .line 56
    float-to-int v1, v1

    .line 57
    iget-object v2, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->context:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    sget v3, Lorg/ppsspp/ppsspp/R$dimen;->wdp10:I

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    neg-float v2, v2

    .line 70
    float-to-int v2, v2

    .line 71
    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    return-void
.end method

.method public setTourist(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->isTourist:Z

    .line 2
    .line 3
    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/papa91/arc/dialog/SettingDialog;->show()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->allPage:I

    .line 6
    .line 7
    iput v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->unlockPage:I

    .line 8
    .line 9
    iput v0, p0, Lcom/papa91/arc/dialog/SettingAchievementDialog;->lockPage:I

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/papa91/arc/dialog/SettingAchievementDialog;->initData()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
