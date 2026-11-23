.class public Lcom/join/mgps/activity/y7;
.super Lcom/join/mgps/fragment/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/y7$e;,
        Lcom/join/mgps/activity/y7$d;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02c6
.end annotation


# instance fields
.field c:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field f:I

.field private g:Lcom/wufan/user/service/protobuf/UserInfo;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field j:Lcom/join/mgps/rpc/b;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/join/mgps/activity/y7$e;

.field private m:Z

.field private n:Lcom/join/mgps/activity/y7$d;

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/e;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/y7;->f:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/y7;->m:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/join/mgps/activity/y7;->p:I

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/y7;->r:Z

    .line 13
    .line 14
    return-void
.end method

.method static synthetic O(Lcom/join/mgps/activity/y7;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/activity/y7;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic P(Lcom/join/mgps/activity/y7;)Lcom/join/mgps/activity/y7$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/y7;->l:Lcom/join/mgps/activity/y7$e;

    .line 2
    .line 3
    return-object p0
.end method

.method private S()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->e:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "backup"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    array-length v0, v0

    .line 32
    if-lez v0, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/activity/y7;->o:Z

    .line 38
    .line 39
    return v0
.end method


# virtual methods
.method Q(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isRefresh"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->e:Landroid/content/Context;

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
    iget-boolean v1, p0, Lcom/join/mgps/activity/y7;->o:Z

    .line 12
    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/y7;->g:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    if-nez p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/y7;->g:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-ne p1, v2, :cond_1

    .line 33
    .line 34
    sget-boolean p1, Lcom/MApplication;->a2:Z

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/join/mgps/activity/y7;->S()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eq p1, v1, :cond_4

    .line 43
    .line 44
    :cond_1
    iput-object v0, p0, Lcom/join/mgps/activity/y7;->g:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 49
    .line 50
    .line 51
    new-instance p1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 52
    .line 53
    invoke-direct {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v0, "\u5168\u90e8"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->setTitle(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/join/mgps/activity/y7;->S()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    new-instance p1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 73
    .line 74
    invoke-direct {p1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v0, "\u5b58\u6863"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->setTitle(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/y7;->l:Lcom/join/mgps/activity/y7$e;

    .line 88
    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 92
    .line 93
    .line 94
    :cond_3
    const/4 p1, 0x1

    .line 95
    iput-boolean p1, p0, Lcom/join/mgps/activity/y7;->m:Z

    .line 96
    .line 97
    iput p1, p0, Lcom/join/mgps/activity/y7;->f:I

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/join/mgps/activity/y7;->R()V

    .line 100
    .line 101
    .line 102
    const/4 p1, 0x0

    .line 103
    sput-boolean p1, Lcom/MApplication;->a2:Z

    .line 104
    .line 105
    :cond_4
    :goto_0
    return-void
.end method

.method R()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/y7;->e:Landroid/content/Context;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_6

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/y7;->g:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    if-eqz v1, :cond_6

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto/16 :goto_2

    .line 30
    .line 31
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/y7;->e:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_5

    .line 38
    .line 39
    new-instance v1, Lorg/springframework/util/LinkedMultiValueMap;

    .line 40
    .line 41
    invoke-direct {v1}, Lorg/springframework/util/LinkedMultiValueMap;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "uid"

    .line 45
    .line 46
    iget-object v4, p0, Lcom/join/mgps/activity/y7;->g:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 47
    .line 48
    if-nez v4, :cond_1

    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v1, v3, v4}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    const-string v3, "page"

    .line 64
    .line 65
    iget v4, p0, Lcom/join/mgps/activity/y7;->f:I

    .line 66
    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v1, v3, v4}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    const-string v3, "type"

    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v1, v3, v4}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    const-string v3, "device_id"

    .line 84
    .line 85
    iget-object v4, p0, Lcom/join/mgps/activity/y7;->h:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v1, v3, v4}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    const-string v3, "version"

    .line 91
    .line 92
    iget-object v4, p0, Lcom/join/mgps/activity/y7;->i:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v1, v3, v4}, Lorg/springframework/util/LinkedMultiValueMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-object v3, p0, Lcom/join/mgps/activity/y7;->j:Lcom/join/mgps/rpc/b;

    .line 98
    .line 99
    invoke-interface {v3, v1}, Lcom/join/mgps/rpc/b;->q(Ljava/util/Map;)Lcom/join/mgps/dto/GameFromPopoWinBean;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    .line 105
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getError()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-nez v3, :cond_4

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getData()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-eqz v3, :cond_4

    .line 116
    .line 117
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getData()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    if-eqz v3, :cond_4

    .line 126
    .line 127
    iget-object v3, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean;->getData()Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 134
    .line 135
    .line 136
    iget v1, p0, Lcom/join/mgps/activity/y7;->f:I

    .line 137
    .line 138
    if-ne v1, v0, :cond_3

    .line 139
    .line 140
    iget v1, p0, Lcom/join/mgps/activity/y7;->p:I

    .line 141
    .line 142
    iget-object v3, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 143
    .line 144
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-ge v1, v3, :cond_2

    .line 149
    .line 150
    iget-object v1, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 151
    .line 152
    iget v2, p0, Lcom/join/mgps/activity/y7;->p:I

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 159
    .line 160
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->setSelected(Z)V

    .line 161
    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 171
    .line 172
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->setSelected(Z)V

    .line 173
    .line 174
    .line 175
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/y7;->U(Z)V

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/y7;->Z()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/y7;->U(Z)V

    .line 183
    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/y7;->Z()V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/y7;->U(Z)V

    .line 190
    .line 191
    .line 192
    goto :goto_3

    .line 193
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/y7;->Z()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/y7;->U(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .line 198
    .line 199
    return-void

    .line 200
    :catch_0
    move-exception v1

    .line 201
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/y7;->U(Z)V

    .line 205
    .line 206
    .line 207
    :goto_3
    return-void
.end method

.method U(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshChildFragment"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_1

    .line 33
    .line 34
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 39
    .line 40
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getTitle()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getTitle()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_0

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_0

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 88
    .line 89
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_count()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-nez v3, :cond_3

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getGame_count()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-gtz v2, :cond_3

    .line 108
    .line 109
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    iput-object v0, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 114
    .line 115
    iget-object v1, p0, Lcom/join/mgps/activity/y7;->l:Lcom/join/mgps/activity/y7$e;

    .line 116
    .line 117
    if-eqz v1, :cond_5

    .line 118
    .line 119
    invoke-virtual {v1, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->setNewData(Ljava/util/List;)V

    .line 120
    .line 121
    .line 122
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->n:Lcom/join/mgps/activity/y7$d;

    .line 129
    .line 130
    const/4 v1, 0x1

    .line 131
    if-nez v0, :cond_6

    .line 132
    .line 133
    new-instance p1, Lcom/join/mgps/activity/y7$d;

    .line 134
    .line 135
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 136
    .line 137
    invoke-direct {p1, p0, p0, v0}, Lcom/join/mgps/activity/y7$d;-><init>(Lcom/join/mgps/activity/y7;Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    .line 138
    .line 139
    .line 140
    iput-object p1, p0, Lcom/join/mgps/activity/y7;->n:Lcom/join/mgps/activity/y7$d;

    .line 141
    .line 142
    iget-object p1, p0, Lcom/join/mgps/activity/y7;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 143
    .line 144
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    sub-int/2addr v0, v1

    .line 151
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 156
    .line 157
    .line 158
    iget-object p1, p0, Lcom/join/mgps/activity/y7;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 159
    .line 160
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->n:Lcom/join/mgps/activity/y7$d;

    .line 161
    .line 162
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 167
    .line 168
    iget-object v2, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 169
    .line 170
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    sub-int/2addr v2, v1

    .line 175
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    .line 180
    .line 181
    .line 182
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->n:Lcom/join/mgps/activity/y7$d;

    .line 183
    .line 184
    iget-object v1, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 185
    .line 186
    invoke-static {v0, v1, p1}, Lcom/join/mgps/activity/y7$d;->a(Lcom/join/mgps/activity/y7$d;Ljava/util/List;Z)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/join/mgps/activity/y7;->n:Lcom/join/mgps/activity/y7$d;

    .line 190
    .line 191
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 192
    .line 193
    .line 194
    :cond_7
    :goto_2
    return-void
.end method

.method V(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->n:Lcom/join/mgps/activity/y7$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/join/mgps/activity/y7$d;->b(Lcom/join/mgps/activity/y7$d;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method W(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupId"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->getId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/y7;->U(Z)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_1
    return-void
.end method

.method public X(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceRefresh"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/y7;->r:Z

    .line 2
    .line 3
    return-void
.end method

.method Y(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-ge v1, v2, :cond_2

    .line 21
    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 29
    .line 30
    if-ne v1, p1, :cond_1

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v3, 0x0

    .line 35
    :goto_1
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->setSelected(Z)V

    .line 36
    .line 37
    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iput p1, p0, Lcom/join/mgps/activity/y7;->p:I

    .line 42
    .line 43
    :cond_3
    :goto_2
    return-void
.end method

.method Z()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/y7;->m:Z

    .line 3
    .line 4
    return-void
.end method

.method afterviews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/y7;->e:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/y7;->g:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->e:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->g:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lcom/join/mgps/activity/y7;->q:Z

    .line 45
    .line 46
    :cond_0
    const-string v0, ""

    .line 47
    .line 48
    iput-object v0, p0, Lcom/join/mgps/activity/y7;->h:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->e:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/join/mgps/Util/RequestBeanUtil;->getVersionAndVersionName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/join/mgps/activity/y7;->i:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/y7;->j:Lcom/join/mgps/rpc/b;

    .line 66
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 73
    .line 74
    new-instance v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 75
    .line 76
    invoke-direct {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v1, "\u5168\u90e8"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->setTitle(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    invoke-direct {p0}, Lcom/join/mgps/activity/y7;->S()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    new-instance v0, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;

    .line 96
    .line 97
    invoke-direct {v0}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v1, "\u5b58\u6863"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameFromPopoWinBean$DataBean;->setTitle(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 111
    .line 112
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    const/4 v3, 0x0

    .line 119
    invoke-direct {v1, v2, v3, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 123
    .line 124
    .line 125
    new-instance v0, Lcom/join/mgps/activity/y7$e;

    .line 126
    .line 127
    iget-object v1, p0, Lcom/join/mgps/activity/y7;->k:Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/y7$e;-><init>(Lcom/join/mgps/activity/y7;Ljava/util/List;)V

    .line 130
    .line 131
    .line 132
    iput-object v0, p0, Lcom/join/mgps/activity/y7;->l:Lcom/join/mgps/activity/y7$e;

    .line 133
    .line 134
    iget-object v1, p0, Lcom/join/mgps/activity/y7;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 135
    .line 136
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 140
    .line 141
    new-instance v1, Lcom/join/mgps/activity/y7$a;

    .line 142
    .line 143
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/y7$a;-><init>(Lcom/join/mgps/activity/y7;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->l:Lcom/join/mgps/activity/y7$e;

    .line 150
    .line 151
    new-instance v1, Lcom/join/mgps/activity/y7$b;

    .line 152
    .line 153
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/y7$b;-><init>(Lcom/join/mgps/activity/y7;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/join/mgps/activity/y7;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 160
    .line 161
    new-instance v1, Lcom/join/mgps/activity/y7$c;

    .line 162
    .line 163
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/y7$c;-><init>(Lcom/join/mgps/activity/y7;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/join/mgps/activity/y7;->R()V

    .line 170
    .line 171
    .line 172
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/join/mgps/activity/y7;->q:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iput-boolean v1, p0, Lcom/join/mgps/activity/y7;->q:Z

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/y7;->r:Z

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/y7;->Q(Z)V

    .line 15
    .line 16
    .line 17
    iput-boolean v1, p0, Lcom/join/mgps/activity/y7;->r:Z

    .line 18
    .line 19
    return-void
.end method
