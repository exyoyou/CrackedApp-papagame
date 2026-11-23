.class public Lcom/join/mgps/activity/AccountCenterDetialNewActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;,
        Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;,
        Lcom/join/mgps/activity/AccountCenterDetialNewActivity$c;,
        Lcom/join/mgps/activity/AccountCenterDetialNewActivity$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0020
.end annotation


# instance fields
.field client:Lcom/join/mgps/rpc/b;

.field context:Landroid/content/Context;

.field dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;",
            ">;"
        }
    .end annotation
.end field

.field recycleView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tipName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tipsLayout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field titleImg:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userIcon:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field userName:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->client:Lcom/join/mgps/rpc/b;

    .line 6
    .line 7
    iput-object p0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->getData()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method getData()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "uid"

    .line 17
    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const-string v1, "device_id"

    .line 41
    .line 42
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const-string v1, "version "

    .line 46
    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/join/mgps/Util/RequestBeanUtil;->getVersionAndVersionName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->client:Lcom/join/mgps/rpc/b;

    .line 73
    .line 74
    invoke-interface {v0, v2}, Lcom/join/mgps/rpc/b;->Z(Ljava/util/Map;)Lcom/join/mgps/dto/ForumResponse;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getError()I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-nez v1, :cond_0

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumResponse;->getData()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/join/mgps/dto/FavoritesCenterData;

    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->updateUi(Lcom/join/mgps/dto/FavoritesCenterData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :cond_0
    :goto_0
    return-void
.end method

.method updateUi(Lcom/join/mgps/dto/FavoritesCenterData;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->titleImg:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getMember_info()Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getPortrait()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->userIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getMember_info()Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getPortrait()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->userName:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getMember_info()Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getNick_name()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->tipName:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getMember_info()Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getRank()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getMember_info()Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/join/mgps/dto/FavoritesCenterData$MemberInfoBean;->getTag_info()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, ","

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    array-length v1, v0

    .line 68
    const/4 v2, 0x0

    .line 69
    :goto_0
    if-ge v2, v1, :cond_0

    .line 70
    .line 71
    aget-object v3, v0, v2

    .line 72
    .line 73
    iget-object v4, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->context:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    const v5, 0x7f0d032a

    .line 80
    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    iget-object v5, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->tipsLayout:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    const v5, 0x7f0a175d

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;

    .line 108
    .line 109
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$a;-><init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;)V

    .line 110
    .line 111
    .line 112
    new-instance v1, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    iput-object v1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->dataList:Ljava/util/List;

    .line 118
    .line 119
    iget-object v1, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->recycleView:Landroidx/recyclerview/widget/RecyclerView;

    .line 120
    .line 121
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getCreate_group_list()Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    const/16 v1, 0x1d

    .line 133
    .line 134
    const/4 v2, 0x1

    .line 135
    if-lez v0, :cond_1

    .line 136
    .line 137
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->dataList:Ljava/util/List;

    .line 138
    .line 139
    new-instance v3, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;

    .line 140
    .line 141
    const-string v4, "\u521b\u5efa\u7684\u6e38\u620f\u5355"

    .line 142
    .line 143
    invoke-direct {v3, p0, v2, v4}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;-><init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;ILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->dataList:Ljava/util/List;

    .line 150
    .line 151
    new-instance v3, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;

    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getCreate_group_list()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-direct {v3, p0, v1, v4}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;-><init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;ILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    :cond_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getBook_group_list()Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-lez v0, :cond_2

    .line 172
    .line 173
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->dataList:Ljava/util/List;

    .line 174
    .line 175
    new-instance v3, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;

    .line 176
    .line 177
    const-string v4, "\u8ba2\u9605\u7684\u6e38\u620f\u5355"

    .line 178
    .line 179
    invoke-direct {v3, p0, v2, v4}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;-><init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;ILjava/lang/Object;)V

    .line 180
    .line 181
    .line 182
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    iget-object v0, p0, Lcom/join/mgps/activity/AccountCenterDetialNewActivity;->dataList:Ljava/util/List;

    .line 186
    .line 187
    new-instance v2, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;

    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/join/mgps/dto/FavoritesCenterData;->getBook_group_list()Ljava/util/List;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-direct {v2, p0, v1, p1}, Lcom/join/mgps/activity/AccountCenterDetialNewActivity$b;-><init>(Lcom/join/mgps/activity/AccountCenterDetialNewActivity;ILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    :cond_2
    return-void
.end method
