.class public Lcom/join/mgps/adapter/o7;
.super Lcom/join/mgps/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/o7$a;,
        Lcom/join/mgps/adapter/o7$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/join/mgps/base/a<",
        "Lcom/join/mgps/dto/SimulatorExitListBean<",
        "TT;>;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:I = 0x1

.field public static final l:I = 0x2

.field public static final m:I = 0x3

.field public static final n:I = 0x4

.field public static final o:I = 0x5


# instance fields
.field h:Landroid/content/Context;

.field private i:Lcom/join/mgps/adapter/o7$a;

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/join/mgps/base/a;-><init>(Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/adapter/o7;->j:Ljava/util/HashMap;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/join/mgps/adapter/o7;->h:Landroid/content/Context;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    const v0, 0x7f0d0857

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    const v0, 0x7f0d0856

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x3

    .line 29
    const v0, 0x7f0d0449

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x4

    .line 36
    const v0, 0x7f0d044a

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 40
    .line 41
    .line 42
    const/4 p1, 0x5

    .line 43
    const v0, 0x7f0d0855

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static synthetic A(Lcom/join/mgps/dto/GamedetialModleFourBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/adapter/o7;->H(Lcom/join/mgps/dto/GamedetialModleFourBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcom/join/mgps/adapter/o7;Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o7;->G(Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;Landroid/view/View;)V

    return-void
.end method

.method private synthetic E(Lcom/join/mgps/dto/DomainInfoBean;Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/o7;->h:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "simulato_game_out"

    .line 8
    .line 9
    invoke-static {p2, v0, v1}, Lcom/join/mgps/Util/UtilsMy;->D4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/adapter/o7;->h:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    sget-object v0, Lcom/papa/sim/statistic/Event;->pdSimulatorOutClick:Lcom/papa/sim/statistic/Event;

    .line 19
    .line 20
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getGameId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getIs_join()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {p1}, Lcom/join/mgps/dto/DomainInfoBean;->getAb_test_number()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v1, p1}, Lcom/papa/sim/statistic/Ext;->setTestAbNumber(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private synthetic F(Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/o7;->i:Lcom/join/mgps/adapter/o7$a;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getUid()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/o7$a;->onAddFriend(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private synthetic G(Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/o7;->i:Lcom/join/mgps/adapter/o7$a;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getUid()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/o7$a;->like(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private static synthetic H(Lcom/join/mgps/dto/GamedetialModleFourBean;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getCrc_sign_id()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_info_tpl_type()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getSp_tpl_two_position()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    const/16 v5, 0x332d

    .line 22
    .line 23
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private I(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorExitListBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "mData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/base/b;",
            "Lcom/join/mgps/dto/SimulatorExitListBean<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorExitListBean;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/dto/DomainInfoBean;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const v0, 0x7f0a08cf

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/join/mgps/dto/DomainInfoBean;->getPic()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 27
    .line 28
    new-instance v0, Lcom/join/mgps/adapter/k7;

    .line 29
    .line 30
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/k7;-><init>(Lcom/join/mgps/adapter/o7;Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private J(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorExitListBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "mData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/base/b;",
            "Lcom/join/mgps/dto/SimulatorExitListBean<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorExitListBean;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const v1, 0x7f0a10a3

    .line 12
    .line 13
    .line 14
    const v2, 0x7f0a04e1

    .line 15
    .line 16
    .line 17
    const v3, 0x7f0a1066

    .line 18
    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x1

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p1, v3, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v2, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    sub-int/2addr v6, v5

    .line 43
    if-ne v0, v6, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1, v3, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v2, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v1, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1, v3, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v2, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v1, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getLevel()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    const v1, 0x7f0a0841

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const v2, 0x7f0a0840

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    check-cast v2, Landroid/widget/ImageView;

    .line 83
    .line 84
    invoke-virtual {p0, v1, v2, v0}, Lcom/join/mgps/adapter/o7;->P(Landroid/view/View;Landroid/widget/ImageView;I)V

    .line 85
    .line 86
    .line 87
    const v0, 0x7f0a0134

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getAvatar()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const v0, 0x7f0a10d8

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getNickName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getLevelName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    const v1, 0x7f0a0dd8

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 121
    .line 122
    .line 123
    const v0, 0x7f0a1ba1

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->isVip()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-virtual {p1, v0, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getMemberTitle()Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-eqz v0, :cond_3

    .line 138
    .line 139
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getMemberTitle()Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;->getBattleColor()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_2

    .line 152
    .line 153
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getMemberTitle()Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;->getBattleColor()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_2
    const-string v0, "#FFFFB543"

    .line 170
    .line 171
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .line 177
    .line 178
    goto :goto_1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 181
    .line 182
    .line 183
    :goto_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->getMemberTitle()Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBackGameRspBean$MemberTitle;->getBattleTitle()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 192
    .line 193
    .line 194
    :cond_3
    const v0, 0x7f0a0249

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Landroid/widget/TextView;

    .line 202
    .line 203
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->isAddFriendStatus()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    const/4 v2, 0x0

    .line 208
    if-nez v1, :cond_4

    .line 209
    .line 210
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->isSendFriendRequestStatus()Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-nez v1, :cond_4

    .line 215
    .line 216
    const/4 v1, 0x4

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_4
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->isSendFriendRequestStatus()Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->isSendFriendRequestStatus()Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-eqz v1, :cond_5

    .line 236
    .line 237
    const-string v1, "\u5df2\u53d1\u9001"

    .line 238
    .line 239
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_5
    const-string v1, "\u6dfb\u52a0\u597d\u53cb"

    .line 247
    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    new-instance v1, Lcom/join/mgps/adapter/l7;

    .line 252
    .line 253
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/l7;-><init>(Lcom/join/mgps/adapter/o7;Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    .line 258
    .line 259
    :goto_2
    const v0, 0x7f0a0e5d

    .line 260
    .line 261
    .line 262
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    check-cast p1, Landroid/widget/ImageView;

    .line 267
    .line 268
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;->isLikeStatus()Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_6

    .line 273
    .line 274
    const v0, 0x7f080c54

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 278
    .line 279
    .line 280
    new-instance v0, Lcom/join/mgps/adapter/m7;

    .line 281
    .line 282
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/m7;-><init>(Lcom/join/mgps/adapter/o7;Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_6
    const p2, 0x7f080c55

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    .line 297
    .line 298
    :goto_3
    return-void
.end method

.method private K(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorExitListBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "mData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/base/b;",
            "Lcom/join/mgps/dto/SimulatorExitListBean<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorExitListBean;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/qq/e/ads/nativ/NativeExpressADView;

    .line 6
    .line 7
    const v0, 0x7f0a05ca

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/ViewGroup;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/adapter/o7;->j:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/view/ViewGroup;

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 48
    .line 49
    .line 50
    const p1, 0x7f08022d

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method private L(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorExitListBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "mData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/base/b;",
            "Lcom/join/mgps/dto/SimulatorExitListBean<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorExitListBean;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game_big_gif()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x2

    .line 20
    const v3, 0x7f0a08cf

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    const/4 v5, 0x0

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game_big_gif()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 38
    .line 39
    invoke-static {v3, v1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game_big_pic()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const v6, 0x7f080caf

    .line 52
    .line 53
    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    if-eq v0, v4, :cond_1

    .line 59
    .line 60
    if-eq v0, v2, :cond_1

    .line 61
    .line 62
    const/4 v1, 0x3

    .line 63
    if-ne v0, v1, :cond_2

    .line 64
    .line 65
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getRecommend_game_big_pic()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p1, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 74
    .line 75
    sget-object v7, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 76
    .line 77
    invoke-static {v3, v6, v1, v7}, Lcom/join/android/app/common/utils/l;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-lez v1, :cond_3

    .line 96
    .line 97
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    check-cast v1, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    if-eqz v1, :cond_3

    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getPic_info()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p1, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 136
    .line 137
    sget-object v7, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 138
    .line 139
    invoke-static {v3, v6, v1, v7}, Lcom/join/android/app/common/utils/l;->e(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 140
    .line 141
    .line 142
    :cond_3
    :goto_0
    const v1, 0x7f0a10d8

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getGame_name()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {p1, v1, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 150
    .line 151
    .line 152
    const v1, 0x7f0a147e

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getScore()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {p1, v1, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 160
    .line 161
    .line 162
    const v1, 0x7f0a1341

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    new-instance v3, Lcom/join/mgps/adapter/n7;

    .line 170
    .line 171
    invoke-direct {v3, p2}, Lcom/join/mgps/adapter/n7;-><init>(Lcom/join/mgps/dto/GamedetialModleFourBean;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    .line 176
    .line 177
    const v1, 0x7f0a1675

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Landroid/widget/LinearLayout;

    .line 185
    .line 186
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    if-eqz v3, :cond_5

    .line 194
    .line 195
    const/4 v3, 0x0

    .line 196
    :goto_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    .line 197
    .line 198
    .line 199
    move-result-object v6

    .line 200
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    if-ge v3, v6, :cond_5

    .line 205
    .line 206
    if-le v3, v2, :cond_4

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_4
    invoke-virtual {p2}, Lcom/join/mgps/dto/GamedetialModleFourBean;->getTag_info()Ljava/util/ArrayList;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    check-cast v6, Lcom/join/mgps/dto/TipBean;

    .line 218
    .line 219
    invoke-virtual {v6}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v6

    .line 223
    invoke-virtual {p0, v6}, Lcom/join/mgps/adapter/o7;->R(Ljava/lang/String;)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    .line 229
    .line 230
    add-int/lit8 v3, v3, 0x1

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_5
    :goto_2
    const p2, 0x7f0a10a3

    .line 234
    .line 235
    .line 236
    const v1, 0x7f0a04e1

    .line 237
    .line 238
    .line 239
    const v2, 0x7f0a1066

    .line 240
    .line 241
    .line 242
    if-nez v0, :cond_6

    .line 243
    .line 244
    invoke-virtual {p1, v2, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 245
    .line 246
    .line 247
    invoke-virtual {p1, v1, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p1, p2, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemCount()I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    sub-int/2addr v3, v4

    .line 259
    if-ne v0, v3, :cond_7

    .line 260
    .line 261
    invoke-virtual {p1, v2, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1, v1, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 265
    .line 266
    .line 267
    invoke-virtual {p1, p2, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 268
    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_7
    invoke-virtual {p1, v2, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v1, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, p2, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 278
    .line 279
    .line 280
    :goto_3
    return-void
.end method

.method private M(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorExitListBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "mData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/base/b;",
            "Lcom/join/mgps/dto/SimulatorExitListBean<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a05ca

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/view/ViewGroup;

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorExitListBean;->getData()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Landroid/view/View;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/adapter/o7;->j:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v1, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/view/ViewGroup;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    const p1, 0x7f08022d

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic y(Lcom/join/mgps/adapter/o7;Lcom/join/mgps/dto/DomainInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o7;->E(Lcom/join/mgps/dto/DomainInfoBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcom/join/mgps/adapter/o7;Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o7;->F(Lcom/join/mgps/dto/FriendBackGameRspBean$FriendInfo;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected C(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorExitListBean;)V
    .locals 2
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/base/b;",
            "Lcom/join/mgps/dto/SimulatorExitListBean<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/SimulatorExitListBean;->getItemType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_4

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    if-eq v0, v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o7;->I(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorExitListBean;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o7;->M(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorExitListBean;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o7;->K(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorExitListBean;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o7;->J(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorExitListBean;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/o7;->L(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorExitListBean;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method public D()Lcom/join/mgps/adapter/o7$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/o7;->i:Lcom/join/mgps/adapter/o7$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public N(Lcom/qq/e/ads/nativ/NativeExpressADView;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adView"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/o7;->j:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/base/a;->remove(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/qq/e/ads/nativ/NativeExpressADView;->destroy()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public O(Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adView"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/o7;->j:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->getExpressAdView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0, v0}, Lcom/join/mgps/base/a;->remove(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd;->destroy()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method P(Landroid/view/View;Landroid/widget/ImageView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "borderView",
            "icLevel",
            "level"
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-lez p3, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x7

    .line 6
    if-ge p3, v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    :goto_0
    packed-switch p3, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :pswitch_0
    const p3, 0x7f080d02

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 36
    .line 37
    .line 38
    const p2, 0x7f080d03

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :pswitch_1
    const p3, 0x7f080cfc

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 49
    .line 50
    .line 51
    const p2, 0x7f080cfd

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :pswitch_2
    const p3, 0x7f080cfe

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 62
    .line 63
    .line 64
    const p2, 0x7f080cff

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :pswitch_3
    const p3, 0x7f080cfa

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 75
    .line 76
    .line 77
    const p2, 0x7f080cfb

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :pswitch_4
    const p3, 0x7f080d00

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 88
    .line 89
    .line 90
    const p2, 0x7f080d01

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :pswitch_5
    const p3, 0x7f080d04

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 101
    .line 102
    .line 103
    const p2, 0x7f08023e

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 107
    .line 108
    .line 109
    :goto_1
    return-void

    .line 110
    nop

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Q(Lcom/join/mgps/adapter/o7$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/o7;->i:Lcom/join/mgps/adapter/o7$a;

    .line 2
    .line 3
    return-void
.end method

.method R(Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/adapter/o7;->h:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 13
    .line 14
    .line 15
    const-string p1, "#FFA8A8A8"

    .line 16
    .line 17
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/adapter/o7;->h:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const v1, 0x7f07133d

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    int-to-float p1, p1

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 40
    .line 41
    .line 42
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 43
    .line 44
    const/4 v2, -0x2

    .line 45
    invoke-direct {p1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/join/mgps/adapter/o7;->h:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const v3, 0x7f0711b5

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {p1, v1, v1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method

.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/join/mgps/dto/SimulatorExitListBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/o7;->C(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/SimulatorExitListBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getItemViewType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/mgps/dto/SimulatorExitListBean;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorExitListBean;->getItemType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-super {p0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItemViewType(I)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method
