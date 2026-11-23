.class public Lcom/join/mgps/activity/message/c;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/message/c$f;,
        Lcom/join/mgps/activity/message/c$g;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d028e
.end annotation


# instance fields
.field A:Landroid/widget/EditText;

.field c:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Lcom/join/mgps/activity/message/c$f;

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Lcom/join/mgps/rpc/e;

.field l:Lcom/join/mgps/rpc/f;

.field m:Landroid/content/Context;

.field n:I

.field o:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field p:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field q:Z

.field private r:Lcom/wufan/user/service/protobuf/UserInfo;

.field s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/c$g;",
            ">;"
        }
    .end annotation
.end field

.field t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field u:Z

.field v:Landroid/widget/PopupWindow;

.field w:[Landroid/text/InputFilter;

.field x:Z

.field y:Landroid/view/View;

.field z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/message/c;->n:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/c;->q:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/c;->u:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/c;->x:Z

    .line 13
    .line 14
    return-void
.end method

.method private Z(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootview"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->v:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    const/16 v1, 0x51

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method M()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->e:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->l()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    .line 12
    .line 13
    :cond_0
    :goto_0
    return-void
.end method

.method N(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/c$g;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->f:Lcom/join/mgps/activity/message/c$f;

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommentCreateArgs;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "gameid",
            "replyCommentId",
            "str",
            "upPhoneModel",
            "reply_comment_user_id",
            "reply_comment_user_name",
            "reply_comment_id",
            "pn"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/message/c;->o:Lcom/join/mgps/pref/PrefDef_;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    move-object v6, v1

    .line 14
    check-cast v6, Ljava/lang/String;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, v0, Lcom/join/mgps/activity/message/c;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 27
    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-object v2, v0, Lcom/join/mgps/activity/message/c;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 35
    .line 36
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v3, v0, Lcom/join/mgps/activity/message/c;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    iget-object v4, v0, Lcom/join/mgps/activity/message/c;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    move v13, v1

    .line 53
    move-object v10, v2

    .line 54
    move-object v11, v3

    .line 55
    move-object v12, v4

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string v1, ""

    .line 58
    .line 59
    const/4 v2, -0x1

    .line 60
    move-object v10, v1

    .line 61
    move-object v11, v10

    .line 62
    move-object v12, v11

    .line 63
    const/4 v13, -0x1

    .line 64
    :goto_0
    iget-object v1, v0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const/4 v4, 0x0

    .line 71
    const/4 v8, 0x2

    .line 72
    move-object/from16 v3, p1

    .line 73
    .line 74
    move-object/from16 v5, p3

    .line 75
    .line 76
    move-object/from16 v7, p4

    .line 77
    .line 78
    move-object/from16 v9, p2

    .line 79
    .line 80
    move-object/from16 v14, p5

    .line 81
    .line 82
    move-object/from16 v15, p6

    .line 83
    .line 84
    move-object/from16 v16, p7

    .line 85
    .line 86
    move/from16 v17, p8

    .line 87
    .line 88
    invoke-virtual/range {v2 .. v17}, Lcom/join/mgps/Util/RequestBeanUtil;->getReplyCreateCommentBean(Ljava/lang/String;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommentCreateArgs;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    return-object v1
.end method

.method P()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, ""

    .line 26
    .line 27
    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getTokenRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommentRequest;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->l:Lcom/join/mgps/rpc/f;

    .line 32
    .line 33
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/f;->g(Lcom/join/mgps/dto/CommentRequest;)Lcom/join/mgps/dto/CommentResponse;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/join/mgps/dto/CommentTokenBean;

    .line 56
    .line 57
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_0

    .line 66
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Lcom/join/mgps/dto/CommentTokenBean;

    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentTokenBean;->getToken()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, "|"

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/join/mgps/dto/CommentTokenBean;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentTokenBean;->getTimes()J

    .line 97
    .line 98
    .line 99
    move-result-wide v2

    .line 100
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/join/mgps/Util/AESUtils;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->o:Lcom/join/mgps/pref/PrefDef_;

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->o:Lcom/join/mgps/pref/PrefDef_;

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastCheckInTime()Lorg/androidannotations/api/sharedpreferences/k;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 127
    .line 128
    .line 129
    move-result-wide v1

    .line 130
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 140
    .line 141
    .line 142
    :cond_0
    :goto_0
    return-void
.end method

.method Q()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eqz v1, :cond_8

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v3, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget v4, p0, Lcom/join/mgps/activity/message/c;->n:I

    .line 24
    .line 25
    add-int/lit8 v5, v4, 0x1

    .line 26
    .line 27
    iput v5, p0, Lcom/join/mgps/activity/message/c;->n:I

    .line 28
    .line 29
    iget-object v5, p0, Lcom/join/mgps/activity/message/c;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 30
    .line 31
    invoke-virtual {v5}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    iget-object v6, p0, Lcom/join/mgps/activity/message/c;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 36
    .line 37
    invoke-virtual {v6}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v3, v4, v5, v6}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameReplyMessageRequestBean(IILjava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->k:Lcom/join/mgps/rpc/e;

    .line 46
    .line 47
    invoke-interface {v4, v3}, Lcom/join/mgps/rpc/e;->G(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/GameReplyMessageListBean;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->e0()V

    .line 52
    .line 53
    .line 54
    if-eqz v3, :cond_9

    .line 55
    .line 56
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameReplyMessageListBean;->getMessages()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const/4 v5, 0x1

    .line 61
    if-eqz v4, :cond_6

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameReplyMessageListBean;->getMessages()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean;->getData()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    if-eqz v4, :cond_6

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameReplyMessageListBean;->getMessages()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean;->getData()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-lez v4, :cond_6

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameReplyMessageListBean;->getMessages()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean;->getData()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iput-object v3, p0, Lcom/join/mgps/activity/message/c;->t:Ljava/util/List;

    .line 96
    .line 97
    iget v3, p0, Lcom/join/mgps/activity/message/c;->n:I

    .line 98
    .line 99
    if-ne v3, v2, :cond_0

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 102
    .line 103
    .line 104
    iget-object v3, p0, Lcom/join/mgps/activity/message/c;->s:Ljava/util/List;

    .line 105
    .line 106
    invoke-virtual {p0, v3}, Lcom/join/mgps/activity/message/c;->N(Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    :cond_0
    const/4 v3, 0x0

    .line 110
    :goto_0
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->t:Ljava/util/List;

    .line 111
    .line 112
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-ge v3, v4, :cond_5

    .line 117
    .line 118
    new-instance v4, Lcom/join/mgps/activity/message/c$g;

    .line 119
    .line 120
    invoke-direct {v4, p0, v0, v5}, Lcom/join/mgps/activity/message/c$g;-><init>(Lcom/join/mgps/activity/message/c;Ljava/lang/Object;I)V

    .line 121
    .line 122
    .line 123
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->t:Ljava/util/List;

    .line 127
    .line 128
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 133
    .line 134
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    if-eqz v4, :cond_1

    .line 139
    .line 140
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->t:Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 147
    .line 148
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-nez v4, :cond_1

    .line 157
    .line 158
    new-instance v4, Lcom/join/mgps/activity/message/c$g;

    .line 159
    .line 160
    iget-object v6, p0, Lcom/join/mgps/activity/message/c;->t:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-direct {v4, p0, v6, v2}, Lcom/join/mgps/activity/message/c$g;-><init>(Lcom/join/mgps/activity/message/c;Ljava/lang/Object;I)V

    .line 167
    .line 168
    .line 169
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    :cond_1
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->t:Ljava/util/List;

    .line 173
    .line 174
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 179
    .line 180
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getReply_sub()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    if-eqz v4, :cond_2

    .line 185
    .line 186
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->t:Ljava/util/List;

    .line 187
    .line 188
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 193
    .line 194
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getReply_sub()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->getReply_text()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    if-eqz v4, :cond_2

    .line 203
    .line 204
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->t:Ljava/util/List;

    .line 205
    .line 206
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 211
    .line 212
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getReply_sub()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->getReply_text()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    if-nez v4, :cond_2

    .line 225
    .line 226
    new-instance v4, Lcom/join/mgps/activity/message/c$g;

    .line 227
    .line 228
    iget-object v6, p0, Lcom/join/mgps/activity/message/c;->t:Ljava/util/List;

    .line 229
    .line 230
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v6

    .line 234
    const/4 v7, 0x3

    .line 235
    invoke-direct {v4, p0, v6, v7}, Lcom/join/mgps/activity/message/c$g;-><init>(Lcom/join/mgps/activity/message/c;Ljava/lang/Object;I)V

    .line 236
    .line 237
    .line 238
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    :cond_2
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->t:Ljava/util/List;

    .line 242
    .line 243
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 248
    .line 249
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    if-eqz v4, :cond_3

    .line 254
    .line 255
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->t:Ljava/util/List;

    .line 256
    .line 257
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 262
    .line 263
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-nez v4, :cond_3

    .line 272
    .line 273
    new-instance v4, Lcom/join/mgps/activity/message/c$g;

    .line 274
    .line 275
    iget-object v6, p0, Lcom/join/mgps/activity/message/c;->t:Ljava/util/List;

    .line 276
    .line 277
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    const/4 v7, 0x4

    .line 282
    invoke-direct {v4, p0, v6, v7}, Lcom/join/mgps/activity/message/c$g;-><init>(Lcom/join/mgps/activity/message/c;Ljava/lang/Object;I)V

    .line 283
    .line 284
    .line 285
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    :cond_3
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->t:Ljava/util/List;

    .line 289
    .line 290
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v4

    .line 294
    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 295
    .line 296
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getOriginal_text()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v4

    .line 300
    if-eqz v4, :cond_4

    .line 301
    .line 302
    iget-object v4, p0, Lcom/join/mgps/activity/message/c;->t:Ljava/util/List;

    .line 303
    .line 304
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    check-cast v4, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 309
    .line 310
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getOriginal_text()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v4

    .line 314
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-nez v4, :cond_4

    .line 319
    .line 320
    new-instance v4, Lcom/join/mgps/activity/message/c$g;

    .line 321
    .line 322
    iget-object v6, p0, Lcom/join/mgps/activity/message/c;->t:Ljava/util/List;

    .line 323
    .line 324
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v6

    .line 328
    const/4 v7, 0x5

    .line 329
    invoke-direct {v4, p0, v6, v7}, Lcom/join/mgps/activity/message/c$g;-><init>(Lcom/join/mgps/activity/message/c;Ljava/lang/Object;I)V

    .line 330
    .line 331
    .line 332
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 336
    .line 337
    goto/16 :goto_0

    .line 338
    .line 339
    :cond_5
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/message/c;->T(Ljava/util/List;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->R()V

    .line 343
    .line 344
    .line 345
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->t:Ljava/util/List;

    .line 346
    .line 347
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    const/16 v1, 0xa

    .line 352
    .line 353
    if-ge v0, v1, :cond_9

    .line 354
    .line 355
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->W()V

    .line 356
    .line 357
    .line 358
    goto :goto_1

    .line 359
    :cond_6
    iget v0, p0, Lcom/join/mgps/activity/message/c;->n:I

    .line 360
    .line 361
    if-ne v0, v2, :cond_7

    .line 362
    .line 363
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->R()V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p0, v5}, Lcom/join/mgps/activity/message/c;->Y(I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->W()V

    .line 370
    .line 371
    .line 372
    goto :goto_1

    .line 373
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->W()V

    .line 374
    .line 375
    .line 376
    goto :goto_1

    .line 377
    :cond_8
    invoke-virtual {p0, v2}, Lcom/join/mgps/activity/message/c;->Y(I)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->R()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    .line 385
    .line 386
    goto :goto_1

    .line 387
    :catch_0
    move-exception v0

    .line 388
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 389
    .line 390
    .line 391
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->R()V

    .line 392
    .line 393
    .line 394
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->showLodingFailed()V

    .line 395
    .line 396
    .line 397
    :cond_9
    :goto_1
    return-void
.end method

.method R()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->h:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->g:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->h:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method S()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->j:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method T(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datas2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/message/c$g;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->s:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->f:Lcom/join/mgps/activity/message/c$f;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
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
    :cond_0
    :goto_0
    return-void
.end method

.method U(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 2
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
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x321

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->P()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v0, "\u6570\u636e\u8bbf\u95ee\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method V(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "msg",
            "bean",
            "b"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method W()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->e:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->e:Lcom/join/mgps/customview/XListView2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->e:Lcom/join/mgps/customview/XListView2;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method X(Ljava/lang/String;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "trim",
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v1, ""

    .line 2
    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "\u4e0d\u80fd\u56de\u590d\u7a7a\u5b57\u7b26\u4e32"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    const/4 v2, 0x4

    .line 22
    invoke-static {p1, v2}, Lcom/join/mgps/Util/s2;->d(Ljava/lang/String;I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "\u8d85\u8fc73\u4e2a\u5b57\u624d\u80fd\u56de\u590d"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {v2}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v11, 0x0

    .line 48
    if-eqz v2, :cond_5

    .line 49
    .line 50
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text_id()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_title()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const-string v3, " "

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    aget-object v7, v2, v11

    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getGame_id()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 86
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text_uid()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    iget v9, p0, Lcom/join/mgps/activity/message/c;->n:I

    .line 107
    .line 108
    move-object v1, p0

    .line 109
    move-object v3, v8

    .line 110
    move-object v4, p1

    .line 111
    invoke-virtual/range {v1 .. v9}, Lcom/join/mgps/activity/message/c;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/join/mgps/dto/CommentCreateArgs;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->l:Lcom/join/mgps/rpc/f;

    .line 116
    .line 117
    invoke-interface {v1, v0}, Lcom/join/mgps/rpc/f;->b(Lcom/join/mgps/dto/CommentCreateArgs;)Lcom/join/mgps/dto/CommentResponse;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_3

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    const/16 v2, 0x321

    .line 134
    .line 135
    if-ne v1, v2, :cond_2

    .line 136
    .line 137
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/message/c;->U(Lcom/join/mgps/dto/CommentResponse;)V

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p0, v0, v10, v11}, Lcom/join/mgps/activity/message/c;->V(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    check-cast v1, Lcom/join/mgps/dto/CommentCreateBean;

    .line 154
    .line 155
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentCreateBean;->getInfo()Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    if-eqz v1, :cond_6

    .line 160
    .line 161
    const-string v1, "\u56de\u590d\u6210\u529f\uff0c\u5185\u5bb9\u5c06\u5728\u5ba1\u6838\u540e\u663e\u793a"

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getData_info()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Lcom/join/mgps/dto/CommentCreateBean;

    .line 168
    .line 169
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentCreateBean;->getInfo()Lcom/join/mgps/dto/CommentCreateBean$InfoBean;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const/4 v2, 0x1

    .line 174
    invoke-virtual {p0, v1, v0, v2}, Lcom/join/mgps/activity/message/c;->V(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_4
    const-string v0, "\u56de\u590d\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5~"

    .line 179
    .line 180
    invoke-virtual {p0, v0, v10, v11}, Lcom/join/mgps/activity/message/c;->V(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {p0, v1, v10, v11}, Lcom/join/mgps/activity/message/c;->V(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :cond_5
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u518d\u8bd5\u8bd5\u5427~"

    .line 197
    .line 198
    invoke-virtual {p0, v0, v10, v11}, Lcom/join/mgps/activity/message/c;->V(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    .line 199
    .line 200
    .line 201
    :cond_6
    :goto_0
    return-void
.end method

.method Y(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->d:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->e:Lcom/join/mgps/customview/XListView2;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->i:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    if-ne p1, v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->e:Lcom/join/mgps/customview/XListView2;

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->i:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->e:Lcom/join/mgps/customview/XListView2;

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method a0(Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/activity/message/c;->q:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->y:Landroid/view/View;

    .line 5
    .line 6
    const/16 v2, 0x21

    .line 7
    .line 8
    const/16 v3, 0xf

    .line 9
    .line 10
    const-string v4, ":"

    .line 11
    .line 12
    const-string v5, " "

    .line 13
    .line 14
    const-string v6, "@ "

    .line 15
    .line 16
    const/4 v7, 0x2

    .line 17
    const-string v8, "input_method"

    .line 18
    .line 19
    const/4 v9, 0x1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const v10, 0x7f0d00d3

    .line 29
    .line 30
    .line 31
    const/4 v11, 0x0

    .line 32
    invoke-virtual {v1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Lcom/join/mgps/activity/message/c;->y:Landroid/view/View;

    .line 37
    .line 38
    new-instance v1, Landroid/widget/PopupWindow;

    .line 39
    .line 40
    iget-object v10, p0, Lcom/join/mgps/activity/message/c;->y:Landroid/view/View;

    .line 41
    .line 42
    const/4 v12, -0x1

    .line 43
    invoke-direct {v1, v10, v12, v12, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/join/mgps/activity/message/c;->v:Landroid/widget/PopupWindow;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->y:Landroid/view/View;

    .line 49
    .line 50
    const v10, 0x7f0a0558

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroid/widget/EditText;

    .line 58
    .line 59
    iput-object v1, p0, Lcom/join/mgps/activity/message/c;->A:Landroid/widget/EditText;

    .line 60
    .line 61
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->y:Landroid/view/View;

    .line 62
    .line 63
    const v10, 0x7f0a0ee9

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Landroid/widget/LinearLayout;

    .line 71
    .line 72
    new-instance v10, Lcom/join/mgps/activity/message/c$c;

    .line 73
    .line 74
    invoke-direct {v10, p0}, Lcom/join/mgps/activity/message/c$c;-><init>(Lcom/join/mgps/activity/message/c;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    new-instance v1, Landroid/text/SpannableString;

    .line 81
    .line 82
    new-instance v10, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_title()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    aget-object v5, v5, v0

    .line 99
    .line 100
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    .line 114
    .line 115
    invoke-direct {v4, v3, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {v1, v4, v0, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 123
    .line 124
    .line 125
    iget-object v2, p0, Lcom/join/mgps/activity/message/c;->A:Landroid/widget/EditText;

    .line 126
    .line 127
    new-instance v3, Landroid/text/SpannedString;

    .line 128
    .line 129
    invoke-direct {v3, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 133
    .line 134
    .line 135
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->y:Landroid/view/View;

    .line 136
    .line 137
    const v2, 0x7f0a028f

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Landroid/widget/Button;

    .line 145
    .line 146
    iget-object v2, p0, Lcom/join/mgps/activity/message/c;->A:Landroid/widget/EditText;

    .line 147
    .line 148
    new-instance v3, Lcom/join/mgps/activity/message/c$d;

    .line 149
    .line 150
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/message/c$d;-><init>(Lcom/join/mgps/activity/message/c;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    .line 155
    .line 156
    new-instance v2, Lcom/join/mgps/activity/message/c$e;

    .line 157
    .line 158
    invoke-direct {v2, p0, p1}, Lcom/join/mgps/activity/message/c$e;-><init>(Lcom/join/mgps/activity/message/c;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->A:Landroid/widget/EditText;

    .line 165
    .line 166
    invoke-virtual {p1, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->v:Landroid/widget/PopupWindow;

    .line 170
    .line 171
    invoke-virtual {p1, v9}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->A:Landroid/widget/EditText;

    .line 175
    .line 176
    invoke-virtual {p1, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->A:Landroid/widget/EditText;

    .line 180
    .line 181
    invoke-virtual {p1, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->A:Landroid/widget/EditText;

    .line 185
    .line 186
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 190
    .line 191
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 196
    .line 197
    invoke-virtual {p1, v0, v7}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 201
    .line 202
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    const v0, 0x7f0d028e

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iput-object p1, p0, Lcom/join/mgps/activity/message/c;->z:Landroid/view/View;

    .line 214
    .line 215
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/message/c;->Z(Landroid/view/View;)V

    .line 216
    .line 217
    .line 218
    goto :goto_0

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 220
    .line 221
    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 226
    .line 227
    invoke-virtual {v1, v0, v7}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 228
    .line 229
    .line 230
    new-instance v1, Landroid/text/SpannableString;

    .line 231
    .line 232
    new-instance v7, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_title()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    aget-object p1, p1, v0

    .line 249
    .line 250
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 261
    .line 262
    .line 263
    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    .line 264
    .line 265
    invoke-direct {p1, v3, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    invoke-virtual {v1, p1, v0, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 273
    .line 274
    .line 275
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->A:Landroid/widget/EditText;

    .line 276
    .line 277
    new-instance v2, Landroid/text/SpannedString;

    .line 278
    .line 279
    invoke-direct {v2, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 283
    .line 284
    .line 285
    iget-object p1, p0, Lcom/join/mgps/activity/message/c;->v:Landroid/widget/PopupWindow;

    .line 286
    .line 287
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->z:Landroid/view/View;

    .line 288
    .line 289
    const/16 v2, 0x51

    .line 290
    .line 291
    invoke-virtual {p1, v1, v2, v0, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 292
    .line 293
    .line 294
    :goto_0
    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->s:Ljava/util/List;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->t:Ljava/util/List;

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    new-instance v0, Lcom/join/mgps/activity/message/c$f;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/message/c$f;-><init>(Lcom/join/mgps/activity/message/c;Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->f:Lcom/join/mgps/activity/message/c$f;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/join/mgps/activity/message/c;->e:Lcom/join/mgps/customview/XListView2;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->k:Lcom/join/mgps/rpc/e;

    .line 45
    .line 46
    invoke-static {}, Lcom/join/mgps/rpc/impl/e;->m()Lcom/join/mgps/rpc/impl/e;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->l:Lcom/join/mgps/rpc/f;

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/join/mgps/activity/message/c;->r:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->showLoding()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->Q()V

    .line 70
    .line 71
    .line 72
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 73
    .line 74
    if-eqz v0, :cond_0

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->getPraise_surplus_number()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-lez v0, :cond_0

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->c0()V

    .line 83
    .line 84
    .line 85
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->e:Lcom/join/mgps/customview/XListView2;

    .line 86
    .line 87
    new-instance v1, Lcom/join/mgps/activity/message/c$a;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/message/c$a;-><init>(Lcom/join/mgps/activity/message/c;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->e:Lcom/join/mgps/customview/XListView2;

    .line 96
    .line 97
    new-instance v1, Lcom/join/mgps/activity/message/c$b;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/message/c$b;-><init>(Lcom/join/mgps/activity/message/c;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->e:Lcom/join/mgps/customview/XListView2;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->l()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method b0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->c:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method c0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->j:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method d0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->S()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/MApplication;->P:Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/MessageRedPointBean$MessagesBean$DataBean;->setPraise_surplus_number(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-class v2, Lcom/join/mgps/activity/GivePraiceActivity_;

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "praice"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method e0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->e:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->e:Lcom/join/mgps/customview/XListView2;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :cond_0
    :goto_0
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVisibleToUser"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/join/mgps/activity/message/c;->u:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/join/mgps/activity/message/c;->u:Z

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput p1, p0, Lcom/join/mgps/activity/message/c;->n:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/activity/message/c;->Q()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->h:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->h:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->g:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c;->m:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
