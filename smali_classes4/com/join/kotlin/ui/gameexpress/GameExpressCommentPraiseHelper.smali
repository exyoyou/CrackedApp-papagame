.class public final Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameExpressCommentPraiseHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameExpressCommentPraiseHelper.kt\ncom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n360#2,7:140\n*S KotlinDebug\n*F\n+ 1 GameExpressCommentPraiseHelper.kt\ncom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper\n*L\n49#1:140,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J.\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eJ\u001e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bJ0\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000eH\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0018\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019H\u0002\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;",
        "",
        "<init>",
        "()V",
        "praise",
        "",
        "context",
        "Landroid/content/Context;",
        "adapter",
        "Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;",
        "commentId",
        "",
        "gameId",
        "praiseType",
        "",
        "refreshPraiseChanged",
        "praisePosts",
        "type",
        "isLogined",
        "",
        "validAccount",
        "accountBean",
        "Lcom/wufan/user/service/protobuf/UserInfo;",
        "showToast",
        "message",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGameExpressCommentPraiseHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameExpressCommentPraiseHelper.kt\ncom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n360#2,7:140\n*S KotlinDebug\n*F\n+ 1 GameExpressCommentPraiseHelper.kt\ncom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper\n*L\n49#1:140,7\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;

    invoke-direct {v0}, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;-><init>()V

    sput-object v0, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->INSTANCE:Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->showToast$lambda$2(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private final accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public static synthetic b(Landroid/content/Context;JJILcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->praisePosts$lambda$1(Landroid/content/Context;JJILcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;)V

    return-void
.end method

.method private final isLogined(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method private final praisePosts(Landroid/content/Context;Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;JJI)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v9, Lcom/join/kotlin/ui/gameexpress/s;

    .line 4
    .line 5
    move-object v1, v9

    .line 6
    move-object v2, p1

    .line 7
    move-wide v3, p3

    .line 8
    move-wide v5, p5

    .line 9
    move/from16 v7, p7

    .line 10
    .line 11
    move-object v8, p2

    .line 12
    invoke-direct/range {v1 .. v8}, Lcom/join/kotlin/ui/gameexpress/s;-><init>(Landroid/content/Context;JJILcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private static final praisePosts$lambda$1(Landroid/content/Context;JJILcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v9, p5

    .line 4
    .line 5
    const-string v10, "\u70b9\u8d5e\u5931\u8d25"

    .line 6
    .line 7
    const-string v11, "\u53d6\u6d88\u70b9\u8d5e\u5931\u8d25"

    .line 8
    .line 9
    const/4 v12, 0x1

    .line 10
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/r0;->L0(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->INSTANCE:Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;

    .line 20
    .line 21
    const-string v2, "\u5c1a\u672a\u767b\u5f55\uff0c\u8bf7\u5148\u767b\u5f55\uff01"

    .line 22
    .line 23
    invoke-direct {v0, v1, v2}, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->commentToken()Lorg/androidannotations/api/sharedpreferences/p;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    move-object v4, v0

    .line 49
    check-cast v4, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    move-wide/from16 v14, p1

    .line 64
    .line 65
    long-to-int v6, v14

    .line 66
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    move/from16 v8, p5

    .line 71
    .line 72
    invoke-virtual/range {v2 .. v8}, Lcom/join/mgps/Util/RequestBeanUtil;->getCommentPraiseRequestBean(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lcom/join/mgps/dto/CommentPraiseRequestBean;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v2, "getCommentPraiseRequestBean(...)"

    .line 77
    .line 78
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {}, Lcom/join/mgps/rpc/impl/e;->m()Lcom/join/mgps/rpc/impl/e;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v2, v0}, Lcom/join/mgps/rpc/impl/e;->j(Lcom/join/mgps/dto/CommentPraiseRequestBean;)Lcom/join/mgps/dto/CommentResponse;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    return-void

    .line 92
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getCode()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_2

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    if-ne v9, v12, :cond_3

    .line 114
    .line 115
    move-object v0, v10

    .line 116
    goto :goto_0

    .line 117
    :cond_3
    move-object v0, v11

    .line 118
    :goto_0
    sget-object v13, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->INSTANCE:Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;

    .line 119
    .line 120
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {v13, v1, v0}, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    move-object/from16 v14, p6

    .line 127
    .line 128
    move-wide/from16 v15, p1

    .line 129
    .line 130
    move-wide/from16 v17, p3

    .line 131
    .line 132
    invoke-virtual/range {v13 .. v18}, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->refreshPraiseChanged(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;JJ)V

    .line 133
    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-nez v3, :cond_5

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentResponse;->getMsg()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    goto :goto_1

    .line 151
    :cond_5
    if-ne v9, v12, :cond_6

    .line 152
    .line 153
    const-string v0, "\u70b9\u8d5e\u6210\u529f"

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_6
    const-string v0, "\u53d6\u6d88\u70b9\u8d5e\u6210\u529f"

    .line 157
    .line 158
    :goto_1
    sget-object v3, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->INSTANCE:Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;

    .line 159
    .line 160
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-direct {v3, v1, v0}, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :goto_2
    const/16 v0, 0x2c2

    .line 167
    .line 168
    if-ne v2, v0, :cond_8

    .line 169
    .line 170
    invoke-static/range {p0 .. p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->m(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :catch_0
    move-exception v0

    .line 179
    sget-object v13, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->INSTANCE:Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;

    .line 180
    .line 181
    if-ne v9, v12, :cond_7

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_7
    move-object v10, v11

    .line 185
    :goto_3
    invoke-direct {v13, v1, v10}, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    move-object/from16 v14, p6

    .line 189
    .line 190
    move-wide/from16 v15, p1

    .line 191
    .line 192
    move-wide/from16 v17, p3

    .line 193
    .line 194
    invoke-virtual/range {v13 .. v18}, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->refreshPraiseChanged(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;JJ)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    .line 199
    .line 200
    :cond_8
    :goto_4
    return-void
.end method

.method private final showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroid/app/Activity;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    if-eqz v0, :cond_1

    .line 11
    .line 12
    new-instance v1, Lcom/join/kotlin/ui/gameexpress/t;

    .line 13
    .line 14
    invoke-direct {v1, p1, p2}, Lcom/join/kotlin/ui/gameexpress/t;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_1
    return-void
.end method

.method private static final showToast$lambda$2(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final validAccount(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->accountBean(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method


# virtual methods
.method public final praise(Landroid/content/Context;Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;JJI)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adapter"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->isLogined(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const p3, 0x7f120142

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->validAccount(Landroid/content/Context;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/g0;->m(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    move-object v0, p0

    .line 47
    move-object v1, p2

    .line 48
    move-wide v2, p3

    .line 49
    move-wide v4, p5

    .line 50
    invoke-virtual/range {v0 .. v5}, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->refreshPraiseChanged(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;JJ)V

    .line 51
    .line 52
    .line 53
    invoke-direct/range {p0 .. p7}, Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;->praisePosts(Landroid/content/Context;Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;JJI)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final refreshPraiseChanged(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;JJ)V
    .locals 8
    .param p1    # Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x1

    .line 21
    if-eqz v3, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->getComment_id()J

    .line 30
    .line 31
    .line 32
    move-result-wide v5

    .line 33
    cmp-long v7, v5, p2

    .line 34
    .line 35
    if-nez v7, :cond_0

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->getGame_id()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    cmp-long v3, v5, p4

    .line 42
    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    const/4 v3, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    const/4 v3, 0x0

    .line 48
    :goto_1
    if-eqz v3, :cond_1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    const/4 v2, -0x1

    .line 55
    :goto_2
    if-gez v2, :cond_3

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    invoke-virtual {p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItems()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    check-cast p2, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;

    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->is_praise()Z

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-eqz p3, :cond_4

    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->getComment_praise()I

    .line 75
    .line 76
    .line 77
    move-result p3

    .line 78
    sub-int/2addr p3, v4

    .line 79
    invoke-static {p3, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    invoke-virtual {p2}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->getComment_praise()I

    .line 85
    .line 86
    .line 87
    move-result p3

    .line 88
    add-int/2addr p3, v4

    .line 89
    :goto_3
    invoke-virtual {p2}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->is_praise()Z

    .line 90
    .line 91
    .line 92
    move-result p4

    .line 93
    xor-int/2addr p4, v4

    .line 94
    invoke-virtual {p2, p4}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->set_praise(Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p3}, Lcom/join/kotlin/ui/gameexpress/model/bean/GameExpressHotCommentBean;->setComment_praise(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
