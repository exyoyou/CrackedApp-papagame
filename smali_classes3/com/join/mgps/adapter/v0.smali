.class public Lcom/join/mgps/adapter/v0;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/v0$e;,
        Lcom/join/mgps/adapter/v0$b;,
        Lcom/join/mgps/adapter/v0$d;,
        Lcom/join/mgps/adapter/v0$c;
    }
.end annotation


# instance fields
.field private e:Landroid/content/Context;

.field private f:I

.field private g:Z

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/join/mgps/adapter/v0$e;


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
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/adapter/v0;->g:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/adapter/v0;->h:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/adapter/v0;->i:Ljava/util/List;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/adapter/v0;->j:Ljava/util/List;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/join/mgps/adapter/v0;->e:Landroid/content/Context;

    .line 29
    .line 30
    return-void
.end method

.method private synthetic A(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->e:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private static synthetic B(Lcom/join/mgps/dto/FriendBean;Lcom/join/mgps/dto/FriendBean;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, 0x1

    .line 4
    if-eqz p0, :cond_5

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/dto/FriendBean;->getState()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getState()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-eq v3, v4, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/dto/FriendBean;->getState()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    return v1

    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getState()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_2

    .line 31
    .line 32
    return v2

    .line 33
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eq v3, v4, :cond_4

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_3

    .line 48
    .line 49
    return v2

    .line 50
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_4

    .line 55
    .line 56
    return v1

    .line 57
    :cond_4
    return v0

    .line 58
    :cond_5
    :goto_0
    if-eq p0, p1, :cond_7

    .line 59
    .line 60
    if-nez p0, :cond_6

    .line 61
    .line 62
    return v2

    .line 63
    :cond_6
    if-nez p1, :cond_7

    .line 64
    .line 65
    return v1

    .line 66
    :cond_7
    return v0
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/v0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/v0;->A(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/dto/FriendBean;Lcom/join/mgps/dto/FriendBean;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/adapter/v0;->B(Lcom/join/mgps/dto/FriendBean;Lcom/join/mgps/dto/FriendBean;)I

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/join/mgps/adapter/v0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/v0;->x(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/adapter/v0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/v0;->y(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/adapter/v0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/v0;->w(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/join/mgps/adapter/v0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/v0;->s(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/join/mgps/adapter/v0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/v0;->u(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/join/mgps/adapter/v0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/v0;->t(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/join/mgps/adapter/v0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/v0;->z(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j(Lcom/join/mgps/adapter/v0;Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/v0;->v(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V

    return-void
.end method

.method private l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->e:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "location"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/location/LocationManager;

    .line 10
    .line 11
    const-string v1, "gps"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method private m(I)I
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
    if-nez p1, :cond_0

    .line 2
    .line 3
    return p1

    .line 4
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->h:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ge p1, v0, :cond_1

    .line 13
    .line 14
    return p1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->h:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sub-int/2addr p1, v0

    .line 22
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->j:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-lez v0, :cond_4

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    return p1

    .line 33
    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->j:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-ge p1, v0, :cond_3

    .line 42
    .line 43
    return p1

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->j:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    sub-int/2addr p1, v0

    .line 51
    :cond_4
    return p1
.end method

.method private synthetic s(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {v0, p2}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Lcom/wufan/friend/chat/c;->D()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    const-string p1, "\u60a8\u7684\u5bf9\u6218\u529f\u80fd\u5df2\u88ab\u5c01\u7981\uff01"

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/v0;->k(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/adapter/v0;->k:Lcom/join/mgps/adapter/v0$e;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/v0$e;->onJoin(Lcom/join/mgps/dto/FriendBean;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method private synthetic t(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 16
    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const-string v2, "1"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string v2, "0"

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sget-object v3, Lcom/papa/sim/statistic/Event;->LobbyInvite:Lcom/papa/sim/statistic/Event;

    .line 50
    .line 51
    invoke-virtual {v2, v3, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/wufan/friend/chat/c;->D()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    const-string p1, "\u60a8\u7684\u5bf9\u6218\u529f\u80fd\u5df2\u88ab\u5c01\u7981\uff01"

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/v0;->k(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->isBanned()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    const-string p1, "\u9080\u8bf7\u5931\u8d25\uff1a\u597d\u53cb\u5df2\u88ab\u5c01\u7981\uff01"

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/v0;->k(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getState()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_5

    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    const-string p2, "\u5bf9\u65b9\u5df2\u79bb\u7ebf\uff0c\u65e0\u6cd5\u7ea6\u6218\uff01"

    .line 112
    .line 113
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_5
    if-eqz v0, :cond_6

    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    .line 132
    .line 133
    .line 134
    move-result-wide v0

    .line 135
    goto :goto_1

    .line 136
    :cond_6
    const-wide/16 v0, 0x0

    .line 137
    .line 138
    :goto_1
    const-wide/16 v2, 0xa

    .line 139
    .line 140
    cmp-long p2, v0, v2

    .line 141
    .line 142
    if-gez p2, :cond_7

    .line 143
    .line 144
    const-string p1, "\u94dc\u677f\u6570\u4e0d\u8db3\uff0c\u5bf9\u6218\u81f3\u5c11\u9700\u898110\u94dc\u677f"

    .line 145
    .line 146
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/v0;->k(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void

    .line 150
    :cond_7
    iget-object p2, p0, Lcom/join/mgps/adapter/v0;->k:Lcom/join/mgps/adapter/v0$e;

    .line 151
    .line 152
    if-eqz p2, :cond_8

    .line 153
    .line 154
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/v0$e;->onInvite(Lcom/join/mgps/dto/FriendBean;)V

    .line 155
    .line 156
    .line 157
    :cond_8
    return-void
.end method

.method private synthetic u(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 16
    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    const-string v2, "1"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string v2, "0"

    .line 37
    .line 38
    :goto_0
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    sget-object v3, Lcom/papa/sim/statistic/Event;->LobbyInvite:Lcom/papa/sim/statistic/Event;

    .line 50
    .line 51
    invoke-virtual {v2, v3, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/wufan/friend/chat/c;->D()Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    .line 79
    const-string p1, "\u60a8\u7684\u5bf9\u6218\u529f\u80fd\u5df2\u88ab\u5c01\u7981\uff01"

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/v0;->k(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->isBanned()Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    const-string p1, "\u9080\u8bf7\u5931\u8d25\uff1a\u597d\u53cb\u5df2\u88ab\u5c01\u7981\uff01"

    .line 92
    .line 93
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/v0;->k(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :cond_4
    if-eqz v0, :cond_5

    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-static {p2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getPapaMoney()J

    .line 112
    .line 113
    .line 114
    move-result-wide v0

    .line 115
    goto :goto_1

    .line 116
    :cond_5
    const-wide/16 v0, 0x0

    .line 117
    .line 118
    :goto_1
    const-wide/16 v2, 0xa

    .line 119
    .line 120
    cmp-long p2, v0, v2

    .line 121
    .line 122
    if-gez p2, :cond_6

    .line 123
    .line 124
    const-string p1, "\u94dc\u677f\u6570\u4e0d\u8db3\uff0c\u5bf9\u6218\u81f3\u5c11\u9700\u898110\u94dc\u677f"

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/v0;->k(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_6
    iget-object p2, p0, Lcom/join/mgps/adapter/v0;->k:Lcom/join/mgps/adapter/v0$e;

    .line 131
    .line 132
    if-eqz p2, :cond_7

    .line 133
    .line 134
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/v0$e;->onInvite(Lcom/join/mgps/dto/FriendBean;)V

    .line 135
    .line 136
    .line 137
    :cond_7
    return-void
.end method

.method private synthetic v(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/v0;->k:Lcom/join/mgps/adapter/v0$e;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, ""

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/v0$e;->onFriendClick(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private synthetic w(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/v0;->k:Lcom/join/mgps/adapter/v0$e;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, ""

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/v0$e;->onFriendClick(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private synthetic x(Lcom/join/mgps/dto/FriendBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/v0;->k:Lcom/join/mgps/adapter/v0$e;

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/v0$e;->onInvite(Lcom/join/mgps/dto/FriendBean;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic y(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/v0;->k:Lcom/join/mgps/adapter/v0$e;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/join/mgps/adapter/v0$e;->onAddFriend()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic z(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/join/mgps/adapter/v0;->g:Z

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/adapter/v0;->i:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/adapter/v0;->h:Ljava/util/List;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/adapter/v0;->i:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/adapter/v0;->i:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/adapter/v0;->h:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/v0;->h:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/adapter/v0;->i:Ljava/util/List;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/adapter/v0;->h:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/adapter/v0;->h:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/adapter/v0;->i:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 63
    .line 64
    .line 65
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/join/mgps/adapter/v0;->g:Z

    .line 66
    .line 67
    xor-int/2addr p1, v0

    .line 68
    iput-boolean p1, p0, Lcom/join/mgps/adapter/v0;->g:Z

    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 72
    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method C(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "i"
        }
    .end annotation

    .line 1
    :try_start_0
    instance-of v0, p1, Lcom/join/mgps/adapter/v0$d;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/join/mgps/adapter/v0$d;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/adapter/v0;->h:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-ge p2, v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/adapter/v0;->h:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Lcom/join/mgps/dto/FriendBean;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p2, 0x0

    .line 26
    :goto_0
    if-nez p2, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    new-instance v1, Lcom/facebook/drawee/generic/RoundingParams;

    .line 30
    .line 31
    invoke-direct {v1}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/join/mgps/adapter/v0;->e:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const v3, 0x7f071468

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    int-to-float v2, v2

    .line 48
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/generic/RoundingParams;->t(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/generic/RoundingParams;->x(Z)Lcom/facebook/drawee/generic/RoundingParams;

    .line 53
    .line 54
    .line 55
    check-cast p1, Lcom/join/mgps/adapter/v0$d;

    .line 56
    .line 57
    iget-object p1, p1, Lcom/join/mgps/adapter/v0$d;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getAvatar()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const v4, 0x7f080caf

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v4, v3, v1}, Lcom/join/android/app/common/utils/l;->w(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->e:Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getNickName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->k:Landroid/widget/ImageView;

    .line 79
    .line 80
    const/16 v1, 0x8

    .line 81
    .line 82
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->j:Landroid/widget/ImageView;

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->h:Landroid/widget/TextView;

    .line 91
    .line 92
    const/4 v3, 0x4

    .line 93
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->g:Landroid/widget/TextView;

    .line 97
    .line 98
    iget-object v4, v0, Lcom/join/mgps/adapter/v0$d;->i:Landroid/widget/TextView;

    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getState()I

    .line 101
    .line 102
    .line 103
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    const-string v6, "#FFFFA841"

    .line 105
    .line 106
    const-string v7, "#FF16DB16"

    .line 107
    .line 108
    if-nez v5, :cond_3

    .line 109
    .line 110
    :try_start_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getGameName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    if-nez v5, :cond_2

    .line 119
    .line 120
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getGameName()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    .line 141
    .line 142
    const-string v5, "\u5728\u7ebf"

    .line 143
    .line 144
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_3
    const-string v5, "#FF6E6E6E"

    .line 149
    .line 150
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v5

    .line 154
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    .line 156
    .line 157
    const-string v5, "\u79bb\u7ebf"

    .line 158
    .line 159
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    :goto_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getGameId()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 167
    .line 168
    .line 169
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    const-string v8, "\u7ea6\u6218"

    .line 171
    .line 172
    const-string v9, "0"

    .line 173
    .line 174
    const/4 v10, 0x0

    .line 175
    if-nez v5, :cond_7

    .line 176
    .line 177
    :try_start_2
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getGameId()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-nez v5, :cond_7

    .line 186
    .line 187
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getRoomId()I

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-eqz v5, :cond_5

    .line 195
    .line 196
    const-string v5, "\u52a0\u5165"

    .line 197
    .line 198
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getState()I

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    if-nez v5, :cond_4

    .line 206
    .line 207
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    .line 213
    .line 214
    :cond_4
    new-instance p1, Lcom/join/mgps/adapter/l0;

    .line 215
    .line 216
    invoke-direct {p1, p0, p2}, Lcom/join/mgps/adapter/l0;-><init>(Lcom/join/mgps/adapter/v0;Lcom/join/mgps/dto/FriendBean;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_5
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getState()I

    .line 224
    .line 225
    .line 226
    move-result v5

    .line 227
    if-nez v5, :cond_6

    .line 228
    .line 229
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 234
    .line 235
    .line 236
    :cond_6
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    new-instance p1, Lcom/join/mgps/adapter/m0;

    .line 240
    .line 241
    invoke-direct {p1, p0, p2}, Lcom/join/mgps/adapter/m0;-><init>(Lcom/join/mgps/adapter/v0;Lcom/join/mgps/dto/FriendBean;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_7
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getState()I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    if-nez p1, :cond_8

    .line 253
    .line 254
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    new-instance p1, Lcom/join/mgps/adapter/n0;

    .line 261
    .line 262
    invoke-direct {p1, p0, p2}, Lcom/join/mgps/adapter/n0;-><init>(Lcom/join/mgps/adapter/v0;Lcom/join/mgps/dto/FriendBean;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v4, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    .line 267
    .line 268
    :cond_8
    :goto_2
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    .line 273
    .line 274
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    .line 278
    .line 279
    .line 280
    move-result v6

    .line 281
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    const-string v6, ""

    .line 285
    .line 286
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    invoke-virtual {p1, v5}, Lcom/wufan/friend/chat/c;->E(Ljava/lang/String;)Z

    .line 294
    .line 295
    .line 296
    move-result p1

    .line 297
    if-eqz p1, :cond_9

    .line 298
    .line 299
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 303
    .line 304
    .line 305
    goto :goto_3

    .line 306
    :cond_9
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 310
    .line 311
    .line 312
    :goto_3
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->k:Landroid/widget/ImageView;

    .line 313
    .line 314
    iget-object v2, v0, Lcom/join/mgps/adapter/v0$d;->h:Landroid/widget/TextView;

    .line 315
    .line 316
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getLevel()I

    .line 317
    .line 318
    .line 319
    move-result v4

    .line 320
    invoke-virtual {p0, p1, v2, v4}, Lcom/join/mgps/adapter/v0;->H(Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 321
    .line 322
    .line 323
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->m:Landroid/widget/ImageView;

    .line 324
    .line 325
    iget-object v2, v0, Lcom/join/mgps/adapter/v0$d;->l:Landroid/widget/ImageView;

    .line 326
    .line 327
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getLevel()I

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    invoke-virtual {p0, p1, v2, v4}, Lcom/join/mgps/adapter/v0;->I(Landroid/view/View;Landroid/widget/ImageView;I)V

    .line 332
    .line 333
    .line 334
    new-instance p1, Lcom/join/mgps/adapter/o0;

    .line 335
    .line 336
    invoke-direct {p1, p0, p2}, Lcom/join/mgps/adapter/o0;-><init>(Lcom/join/mgps/adapter/v0;Lcom/join/mgps/dto/FriendBean;)V

    .line 337
    .line 338
    .line 339
    iget-object v2, v0, Lcom/join/mgps/adapter/v0$d;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 340
    .line 341
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    .line 343
    .line 344
    iget-object v2, v0, Lcom/join/mgps/adapter/v0$d;->e:Landroid/widget/TextView;

    .line 345
    .line 346
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    .line 348
    .line 349
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    .line 350
    .line 351
    .line 352
    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 353
    const-string v2, "#ffffff"

    .line 354
    .line 355
    if-eqz p1, :cond_a

    .line 356
    .line 357
    :try_start_3
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->l:Landroid/widget/ImageView;

    .line 358
    .line 359
    invoke-virtual {p1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 360
    .line 361
    .line 362
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->f:Landroid/widget/TextView;

    .line 363
    .line 364
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->i:Landroid/widget/TextView;

    .line 368
    .line 369
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 370
    .line 371
    .line 372
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->n:Landroid/view/View;

    .line 373
    .line 374
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    .line 376
    .line 377
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->e:Landroid/widget/TextView;

    .line 378
    .line 379
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 380
    .line 381
    .line 382
    move-result p2

    .line 383
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_6

    .line 387
    .line 388
    :cond_a
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getState()I

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    if-nez p1, :cond_f

    .line 393
    .line 394
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->f:Landroid/widget/TextView;

    .line 395
    .line 396
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getGameId()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object p1

    .line 403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    if-nez p1, :cond_d

    .line 408
    .line 409
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getGameId()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 414
    .line 415
    .line 416
    move-result p1

    .line 417
    if-nez p1, :cond_d

    .line 418
    .line 419
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getRoomType()I

    .line 420
    .line 421
    .line 422
    move-result p1

    .line 423
    const/16 v4, 0x1f

    .line 424
    .line 425
    if-eq p1, v4, :cond_c

    .line 426
    .line 427
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getRoomType()I

    .line 428
    .line 429
    .line 430
    move-result p1

    .line 431
    const/16 v4, 0x23

    .line 432
    .line 433
    if-ne p1, v4, :cond_b

    .line 434
    .line 435
    goto :goto_4

    .line 436
    :cond_b
    invoke-virtual {p2}, Lcom/join/mgps/dto/FriendBean;->getRoomType()I

    .line 437
    .line 438
    .line 439
    move-result p1

    .line 440
    if-eqz p1, :cond_e

    .line 441
    .line 442
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->i:Landroid/widget/TextView;

    .line 443
    .line 444
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 445
    .line 446
    .line 447
    goto :goto_5

    .line 448
    :cond_c
    :goto_4
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->i:Landroid/widget/TextView;

    .line 449
    .line 450
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 451
    .line 452
    .line 453
    goto :goto_5

    .line 454
    :cond_d
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->i:Landroid/widget/TextView;

    .line 455
    .line 456
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 457
    .line 458
    .line 459
    :cond_e
    :goto_5
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->l:Landroid/widget/ImageView;

    .line 460
    .line 461
    invoke-virtual {p1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 462
    .line 463
    .line 464
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->n:Landroid/view/View;

    .line 465
    .line 466
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 467
    .line 468
    .line 469
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->e:Landroid/widget/TextView;

    .line 470
    .line 471
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 472
    .line 473
    .line 474
    move-result p2

    .line 475
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 476
    .line 477
    .line 478
    goto :goto_6

    .line 479
    :cond_f
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->l:Landroid/widget/ImageView;

    .line 480
    .line 481
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 482
    .line 483
    .line 484
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->f:Landroid/widget/TextView;

    .line 485
    .line 486
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 487
    .line 488
    .line 489
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->i:Landroid/widget/TextView;

    .line 490
    .line 491
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 492
    .line 493
    .line 494
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->n:Landroid/view/View;

    .line 495
    .line 496
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 497
    .line 498
    .line 499
    iget-object p1, v0, Lcom/join/mgps/adapter/v0$d;->e:Landroid/widget/TextView;

    .line 500
    .line 501
    const-string p2, "#FFA0A0A0"

    .line 502
    .line 503
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 504
    .line 505
    .line 506
    move-result p2

    .line 507
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 508
    .line 509
    .line 510
    goto :goto_6

    .line 511
    :catch_0
    move-exception p1

    .line 512
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 513
    .line 514
    .line 515
    :cond_10
    :goto_6
    return-void
.end method

.method public D(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collapse"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/v0;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public E(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friendCount"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/v0;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public F(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friends"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/v0;->h:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public G(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friendsRecomm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/v0;->j:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method H(Landroid/widget/ImageView;Landroid/widget/TextView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ic",
            "levelTv",
            "level"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p3, v0, :cond_4

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p3, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p3, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p3, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-eq p3, v0, :cond_0

    .line 15
    .line 16
    const-string p1, ""

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const p3, 0x7f08061f

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 23
    .line 24
    .line 25
    const-string p1, "\u4f20\u8bf4"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const p3, 0x7f08061e

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 32
    .line 33
    .line 34
    const-string p1, "\u5b97\u5e08"

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const p3, 0x7f08061c

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 41
    .line 42
    .line 43
    const-string p1, "\u7cbe\u82f1"

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    const p3, 0x7f08061d

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 50
    .line 51
    .line 52
    const-string p1, "\u8d44\u6df1"

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    const p3, 0x7f08061b

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    .line 60
    .line 61
    const-string p1, "\u89c1\u4e60"

    .line 62
    .line 63
    :goto_0
    if-eqz p2, :cond_5

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    :cond_5
    return-void
.end method

.method I(Landroid/view/View;Landroid/widget/ImageView;I)V
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

.method public J(Lcom/join/mgps/adapter/v0$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/v0;->k:Lcom/join/mgps/adapter/v0$e;

    .line 2
    .line 3
    return-void
.end method

.method public K()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->h:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->h:Ljava/util/List;

    .line 13
    .line 14
    new-instance v1, Lcom/join/mgps/adapter/p0;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/join/mgps/adapter/p0;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->h:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getItemViewType(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 p1, 0x2

    return p1
.end method

.method k(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->e:Landroid/content/Context;

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

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/v0;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolder",
            "i"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/v0;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    instance-of v1, p1, Lcom/join/mgps/adapter/v0$d;

    .line 6
    .line 7
    const/16 v2, 0x8

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/v0;->m(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v3, 0x2

    .line 16
    if-ne v0, v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/v0;->C(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 19
    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    const/4 p2, 0x4

    .line 24
    if-ne v0, p2, :cond_8

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->j:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ge v1, v0, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->j:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/join/mgps/dto/FriendBean;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_0
    if-nez v0, :cond_2

    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    check-cast p1, Lcom/join/mgps/adapter/v0$d;

    .line 48
    .line 49
    iget-object v1, p1, Lcom/join/mgps/adapter/v0$d;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getAvatar()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v1, v3}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p1, Lcom/join/mgps/adapter/v0$d;->e:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getNickName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p1, Lcom/join/mgps/adapter/v0$d;->k:Landroid/widget/ImageView;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p1, Lcom/join/mgps/adapter/v0$d;->h:Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$d;->j:Landroid/widget/ImageView;

    .line 78
    .line 79
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$d;->g:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$d;->k:Landroid/widget/ImageView;

    .line 88
    .line 89
    iget-object v1, p1, Lcom/join/mgps/adapter/v0$d;->h:Landroid/widget/TextView;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getLevel()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {p0, p2, v1, v2}, Lcom/join/mgps/adapter/v0;->H(Landroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 96
    .line 97
    .line 98
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$d;->m:Landroid/widget/ImageView;

    .line 99
    .line 100
    iget-object v1, p1, Lcom/join/mgps/adapter/v0$d;->l:Landroid/widget/ImageView;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getLevel()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    invoke-virtual {p0, p2, v1, v2}, Lcom/join/mgps/adapter/v0;->I(Landroid/view/View;Landroid/widget/ImageView;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getGameName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-nez p2, :cond_3

    .line 118
    .line 119
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$d;->g:Landroid/widget/TextView;

    .line 120
    .line 121
    const/4 v1, 0x0

    .line 122
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$d;->g:Landroid/widget/TextView;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendBean;->getGameName()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$d;->g:Landroid/widget/TextView;

    .line 135
    .line 136
    const-string v1, "#FFFFA841"

    .line 137
    .line 138
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    .line 144
    .line 145
    :cond_3
    new-instance p2, Lcom/join/mgps/adapter/q0;

    .line 146
    .line 147
    invoke-direct {p2, p0, v0}, Lcom/join/mgps/adapter/q0;-><init>(Lcom/join/mgps/adapter/v0;Lcom/join/mgps/dto/FriendBean;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, p1, Lcom/join/mgps/adapter/v0$d;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 151
    .line 152
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    iget-object v1, p1, Lcom/join/mgps/adapter/v0$d;->e:Landroid/widget/TextView;

    .line 156
    .line 157
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p1, Lcom/join/mgps/adapter/v0$d;->i:Landroid/widget/TextView;

    .line 161
    .line 162
    new-instance p2, Lcom/join/mgps/adapter/r0;

    .line 163
    .line 164
    invoke-direct {p2, p0, v0}, Lcom/join/mgps/adapter/r0;-><init>(Lcom/join/mgps/adapter/v0;Lcom/join/mgps/dto/FriendBean;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_2

    .line 171
    .line 172
    :cond_4
    instance-of p2, p1, Lcom/join/mgps/adapter/v0$b;

    .line 173
    .line 174
    if-eqz p2, :cond_7

    .line 175
    .line 176
    iget-object p2, p0, Lcom/join/mgps/adapter/v0;->h:Ljava/util/List;

    .line 177
    .line 178
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 179
    .line 180
    .line 181
    move-result p2

    .line 182
    iget-boolean v0, p0, Lcom/join/mgps/adapter/v0;->g:Z

    .line 183
    .line 184
    if-eqz v0, :cond_5

    .line 185
    .line 186
    iget-object p2, p0, Lcom/join/mgps/adapter/v0;->i:Ljava/util/List;

    .line 187
    .line 188
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    :cond_5
    check-cast p1, Lcom/join/mgps/adapter/v0$b;

    .line 193
    .line 194
    invoke-static {p1}, Lcom/join/mgps/adapter/v0$b;->a(Lcom/join/mgps/adapter/v0$b;)Landroid/widget/TextView;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string v2, "\u5728\u7ebf("

    .line 204
    .line 205
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string p2, "/"

    .line 212
    .line 213
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    iget p2, p0, Lcom/join/mgps/adapter/v0;->f:I

    .line 217
    .line 218
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string p2, ")"

    .line 222
    .line 223
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    invoke-static {p1}, Lcom/join/mgps/adapter/v0$b;->b(Lcom/join/mgps/adapter/v0$b;)Landroid/view/View;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    new-instance v0, Lcom/join/mgps/adapter/s0;

    .line 238
    .line 239
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/s0;-><init>(Lcom/join/mgps/adapter/v0;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    .line 244
    .line 245
    iget-boolean p2, p0, Lcom/join/mgps/adapter/v0;->g:Z

    .line 246
    .line 247
    if-eqz p2, :cond_6

    .line 248
    .line 249
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$b;->d:Landroid/widget/ImageView;

    .line 250
    .line 251
    const v0, 0x7f080805

    .line 252
    .line 253
    .line 254
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 255
    .line 256
    .line 257
    goto :goto_1

    .line 258
    :cond_6
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$b;->d:Landroid/widget/ImageView;

    .line 259
    .line 260
    const v0, 0x7f080998

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 264
    .line 265
    .line 266
    :goto_1
    new-instance p2, Lcom/join/mgps/adapter/t0;

    .line 267
    .line 268
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/t0;-><init>(Lcom/join/mgps/adapter/v0;)V

    .line 269
    .line 270
    .line 271
    iget-object v0, p1, Lcom/join/mgps/adapter/v0$b;->d:Landroid/widget/ImageView;

    .line 272
    .line 273
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    .line 275
    .line 276
    invoke-static {p1}, Lcom/join/mgps/adapter/v0$b;->a(Lcom/join/mgps/adapter/v0$b;)Landroid/widget/TextView;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_7
    instance-of p2, p1, Lcom/join/mgps/adapter/v0$c;

    .line 285
    .line 286
    if-eqz p2, :cond_8

    .line 287
    .line 288
    check-cast p1, Lcom/join/mgps/adapter/v0$c;

    .line 289
    .line 290
    iget-object p2, p1, Lcom/join/mgps/adapter/v0$c;->e:Landroid/view/View;

    .line 291
    .line 292
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    iget-object p1, p1, Lcom/join/mgps/adapter/v0$c;->d:Landroid/view/View;

    .line 296
    .line 297
    new-instance p2, Lcom/join/mgps/adapter/u0;

    .line 298
    .line 299
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/u0;-><init>(Lcom/join/mgps/adapter/v0;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    .line 304
    .line 305
    :cond_8
    :goto_2
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "viewType"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    new-instance p2, Lcom/join/mgps/adapter/v0$b;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->e:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v2, 0x7f0d0412

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/v0$b;-><init>(Lcom/join/mgps/adapter/v0;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    return-object p2

    .line 24
    :cond_0
    const/4 v0, 0x2

    .line 25
    if-eq p2, v0, :cond_3

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    if-ne p2, v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x3

    .line 32
    if-ne p2, v0, :cond_2

    .line 33
    .line 34
    new-instance p2, Lcom/join/mgps/adapter/v0$c;

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->e:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const v2, 0x7f0d0413

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/v0$c;-><init>(Lcom/join/mgps/adapter/v0;Landroid/view/View;)V

    .line 50
    .line 51
    .line 52
    return-object p2

    .line 53
    :cond_2
    new-instance p1, Lcom/join/mgps/adapter/v0$a;

    .line 54
    .line 55
    new-instance p2, Landroid/view/View;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->e:Landroid/content/Context;

    .line 58
    .line 59
    invoke-direct {p2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p1, p0, p2}, Lcom/join/mgps/adapter/v0$a;-><init>(Lcom/join/mgps/adapter/v0;Landroid/view/View;)V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_3
    :goto_0
    new-instance p2, Lcom/join/mgps/adapter/v0$d;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->e:Landroid/content/Context;

    .line 69
    .line 70
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const v2, 0x7f0d0411

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/v0$d;-><init>(Lcom/join/mgps/adapter/v0;Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    return-object p2
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()Lcom/join/mgps/adapter/v0$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v0;->k:Lcom/join/mgps/adapter/v0$e;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/v0;->g:Z

    .line 2
    .line 3
    return v0
.end method
