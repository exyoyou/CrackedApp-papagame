.class public final Lcom/join/mgps/activity/CommentDetailActivity_;
.super Lcom/join/mgps/activity/CommentDetailActivity;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/CommentDetailActivity_$z;
    }
.end annotation


# static fields
.field public static final BESPEAK_SWITCH_EXTRA:Ljava/lang/String; = "bespeakSwitch"

.field public static final COMMENT_ID_EXTRA:Ljava/lang/String; = "commentId"

.field public static final COMMENT_SCORE_SWITCH_EXTRA:Ljava/lang/String; = "commentScoreSwitch"

.field public static final GAME_ID_EXTRA:Ljava/lang/String; = "gameId"

.field public static final GAME_IS_START_EXTRA:Ljava/lang/String; = "gameIsStart"

.field public static final GAME_TYPE_EXTRA:Ljava/lang/String; = "gameType"

.field public static final PACKAGE_NAME_EXTRA:Ljava/lang/String; = "packageName"

.field public static final SGC_SWITCH_EXTRA:Ljava/lang/String; = "sgcSwitch"


# instance fields
.field private final beans_:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final onViewChangedNotifier_:Lzc/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentDetailActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzc/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lzc/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/CommentDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->showLodingDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1001(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow2(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/CommentDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->dismissLodingDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1101(Lcom/join/mgps/activity/CommentDetailActivity_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->checkReset(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1201(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;ZI)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow(Ljava/lang/String;ZI)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1301(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;ZII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow3(Ljava/lang/String;ZII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1401(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow2(Lcom/join/mgps/dto/CommentResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1501(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->getCommentList(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1601(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p7}, Lcom/join/mgps/activity/CommentDetailActivity;->toCreateComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1701(Lcom/join/mgps/activity/CommentDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->deleteMyComment()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1801(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity;->onUnPraise(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$1901(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity;->topPraise(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2001(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity;->onPraise(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/CommentDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->showDeleteView()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$2101(Lcom/join/mgps/activity/CommentDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->getToken()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->setTopComment(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity;->setTopGame(Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/CommentDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->showLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity;->showMain(Ljava/util/List;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/CommentDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/CommentDetailActivity_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->updateListFooter()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity;->resultShow4(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 7
    .line 8
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentDetailActivity_;->injectExtras_()V

    .line 12
    .line 13
    .line 14
    const/16 p1, 0xa

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private injectExtras_()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    const-string v1, "commentId"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->commentId:Ljava/lang/String;

    .line 24
    .line 25
    :cond_0
    const-string v1, "gameId"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->gameId:Ljava/lang/String;

    .line 38
    .line 39
    :cond_1
    const-string v1, "commentScoreSwitch"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->commentScoreSwitch:Ljava/lang/String;

    .line 52
    .line 53
    :cond_2
    const-string v1, "packageName"

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->packageName:Ljava/lang/String;

    .line 66
    .line 67
    :cond_3
    const-string v1, "bespeakSwitch"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iput v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->bespeakSwitch:I

    .line 80
    .line 81
    :cond_4
    const-string v1, "sgcSwitch"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-eqz v2, :cond_5

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    iput v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->sgcSwitch:I

    .line 94
    .line 95
    :cond_5
    const-string v1, "gameType"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-eqz v2, :cond_6

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iput-object v1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->gameType:Ljava/lang/String;

    .line 108
    .line 109
    :cond_6
    const-string v1, "gameIsStart"

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_7

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iput v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->gameIsStart:I

    .line 122
    .line 123
    :cond_7
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentDetailActivity_$z;
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
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/CommentDetailActivity_$z;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportFragment"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$z;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$z;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method public checkReset(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity_$f;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method deleteMyComment()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CommentDetailActivity_$m;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CommentDetailActivity_$m;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method dismissLodingDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$u;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$u;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method getCommentList(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sort"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/CommentDetailActivity_$j;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/CommentDetailActivity_$j;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method getToken()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CommentDetailActivity_$q;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CommentDetailActivity_$q;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d0165

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onPraise(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;II)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "bean",
            "position",
            "type"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/join/mgps/activity/CommentDetailActivity_$p;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v9

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move v7, p2

    .line 13
    move v8, p3

    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/join/mgps/activity/CommentDetailActivity_$p;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;II)V

    .line 15
    .line 16
    .line 17
    invoke-static {v9}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method onUnPraise(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "bean",
            "type"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/activity/CommentDetailActivity_$n;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/CommentDetailActivity_$n;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a014e

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->back_image:Landroid/widget/ImageView;

    .line 11
    .line 12
    const v0, 0x7f0a1790

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->title_textview:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a0862

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/ImageView;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->imTopRight:Landroid/widget/ImageView;

    .line 33
    .line 34
    const v0, 0x7f0a0489

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->deletedTv:Landroid/widget/TextView;

    .line 44
    .line 45
    const v0, 0x7f0a0fe4

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->mPtrFrame:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 55
    .line 56
    const v0, 0x7f0a03d8

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/join/mgps/customview/XListView2;

    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->comment_detail_list:Lcom/join/mgps/customview/XListView2;

    .line 66
    .line 67
    const v0, 0x7f0a0f95

    .line 68
    .line 69
    .line 70
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Landroid/widget/LinearLayout;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 77
    .line 78
    const v0, 0x7f0a0f92

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/LinearLayout;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 88
    .line 89
    const v0, 0x7f0a0957

    .line 90
    .line 91
    .line 92
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/LinearLayout;

    .line 97
    .line 98
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->inputLl:Landroid/widget/LinearLayout;

    .line 99
    .line 100
    const v0, 0x7f0a028a

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/Button;

    .line 108
    .line 109
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->btn_chat_praise:Landroid/widget/Button;

    .line 110
    .line 111
    const v0, 0x7f0a0289

    .line 112
    .line 113
    .line 114
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Landroid/widget/Button;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->btn_chat_extension:Landroid/widget/Button;

    .line 121
    .line 122
    const v0, 0x7f0a0565

    .line 123
    .line 124
    .line 125
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/TextView;

    .line 130
    .line 131
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->edit_comment_count:Landroid/widget/TextView;

    .line 132
    .line 133
    const v0, 0x7f0a0568

    .line 134
    .line 135
    .line 136
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lcom/join/android/app/common/view/ClearEditText;

    .line 141
    .line 142
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 143
    .line 144
    const v0, 0x7f0a028b

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/widget/Button;

    .line 152
    .line 153
    iput-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity;->btn_chat_send:Landroid/widget/Button;

    .line 154
    .line 155
    const v0, 0x7f0a1508

    .line 156
    .line 157
    .line 158
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    if-eqz p1, :cond_0

    .line 163
    .line 164
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$k;

    .line 165
    .line 166
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$k;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->back_image:Landroid/widget/ImageView;

    .line 173
    .line 174
    if-eqz p1, :cond_1

    .line 175
    .line 176
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$r;

    .line 177
    .line 178
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$r;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity;->imTopRight:Landroid/widget/ImageView;

    .line 185
    .line 186
    if-eqz p1, :cond_2

    .line 187
    .line 188
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$s;

    .line 189
    .line 190
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$s;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    .line 195
    .line 196
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CommentDetailActivity;->afterView()V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method resultShow(Ljava/lang/String;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "msg",
            "b",
            "type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity_$g;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;ZI)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    const-string p3, ""

    .line 9
    .line 10
    invoke-static {p3, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method resultShow2(Lcom/join/mgps/dto/CommentResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$i;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity_$i;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentResponse;)V

    const-wide/16 v1, 0x0

    const-string p1, ""

    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method resultShow2(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "msg",
            "b"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity_$e;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Z)V

    const-wide/16 p1, 0x0

    const-string v1, ""

    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    return-void
.end method

.method resultShow3(Ljava/lang/String;ZII)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "msg",
            "b",
            "position",
            "type"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/activity/CommentDetailActivity_$h;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/CommentDetailActivity_$h;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;ZII)V

    .line 10
    .line 11
    .line 12
    const-wide/16 p1, 0x0

    .line 13
    .line 14
    const-string p3, ""

    .line 15
    .line 16
    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method resultShow4(Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "msg",
            "bean",
            "b"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/join/mgps/activity/CommentDetailActivity_$d;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;Lcom/join/mgps/dto/CommentCreateBean$InfoBean;Z)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    const-string p3, ""

    .line 9
    .line 10
    invoke-static {p3, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutResID"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 5
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "params"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity_;->onViewChangedNotifier_:Lzc/c;

    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newIntent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/CommentDetailActivity_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method setTopComment(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "temp"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$w;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity_$w;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method setTopGame(Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$x;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/CommentDetailActivity_$x;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Lcom/join/mgps/dto/CommentDetailBean$GameInfoBean;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showDeleteView()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$v;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$v;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$y;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showLodingDialog()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$t;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$b;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showMain(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "subCommentBeanXs",
            "maxItem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/CommentDetailActivity_$a;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/util/List;I)V

    .line 4
    .line 5
    .line 6
    const-wide/16 p1, 0x0

    .line 7
    .line 8
    const-string v1, ""

    .line 9
    .line 10
    invoke-static {v1, v0, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method toCreateComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "replyCommentId",
            "str",
            "upPhoneModel",
            "reply_comment_user_id",
            "reply_comment_user_name",
            "reply_comment_id",
            "replyPn"
        }
    .end annotation

    .line 1
    new-instance v13, Lcom/join/mgps/activity/CommentDetailActivity_$l;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v13

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move-object/from16 v7, p2

    .line 13
    .line 14
    move-object/from16 v8, p3

    .line 15
    .line 16
    move-object/from16 v9, p4

    .line 17
    .line 18
    move-object/from16 v10, p5

    .line 19
    .line 20
    move-object/from16 v11, p6

    .line 21
    .line 22
    move/from16 v12, p7

    .line 23
    .line 24
    invoke-direct/range {v0 .. v12}, Lcom/join/mgps/activity/CommentDetailActivity_$l;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    invoke-static {v13}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method topPraise(Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "mainCommentBean",
            "type"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/activity/CommentDetailActivity_$o;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/CommentDetailActivity_$o;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/CommentDetailBean$MainCommentBean;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method updateListFooter()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/CommentDetailActivity_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CommentDetailActivity_$c;-><init>(Lcom/join/mgps/activity/CommentDetailActivity_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
