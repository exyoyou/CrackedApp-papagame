.class public final Lcom/join/mgps/activity/SearchListActivity1_;
.super Lcom/join/mgps/activity/SearchListActivity1;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SearchListActivity1_$q;
    }
.end annotation


# static fields
.field public static final CURRENT_TAB_EXTRA:Ljava/lang/String; = "currentTab"

.field public static final FROM_EXTRA:Ljava/lang/String; = "from"

.field public static final GAME_ID_EXTRA:Ljava/lang/String; = "game_id"

.field public static final IS_NEED_RECOMMEND_EXTRA:Ljava/lang/String; = "isNeedRecommend"

.field public static final KEYWORD_EXTRA:Ljava/lang/String; = "keyword"


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
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchListActivity1;-><init>()V

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
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1_;->onViewChangedNotifier_:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1_;->beans_:Ljava/util/Map;

    .line 17
    .line 18
    return-void
.end method

.method static synthetic access$001(Lcom/join/mgps/activity/SearchListActivity1_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SearchListActivity1;->initViewpagerAndTab()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$101(Lcom/join/mgps/activity/SearchListActivity1_;Lcom/join/mgps/dto/SearchGameListBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->updateSpecialZoneInfo(Lcom/join/mgps/dto/SearchGameListBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$201(Lcom/join/mgps/activity/SearchListActivity1_;Lcom/join/mgps/dto/ClassfyTypeBean;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->setClassifiesData(Lcom/join/mgps/dto/ClassfyTypeBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$301(Lcom/join/mgps/activity/SearchListActivity1_;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->showTags(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$401(Lcom/join/mgps/activity/SearchListActivity1_;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->hideTags(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$501(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->T(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$601(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/SearchListActivity1;->updateUI(Ljava/util/List;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$701(Lcom/join/mgps/activity/SearchListActivity1_;IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/SearchListActivity1;->getSpecialZoneInfo(IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$801(Lcom/join/mgps/activity/SearchListActivity1_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/SearchListActivity1;->loadingTags()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$901(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->getSearchAutoData(Ljava/lang/String;)V

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
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchListActivity1_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
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
    if-eqz v0, :cond_4

    .line 10
    .line 11
    const-string v1, "currentTab"

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
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iput v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->currentTab:I

    .line 24
    .line 25
    :cond_0
    const-string v1, "game_id"

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
    iput-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->game_id:Ljava/lang/String;

    .line 38
    .line 39
    :cond_1
    const-string v1, "keyword"

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
    iput-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->keyword:Ljava/lang/String;

    .line 52
    .line 53
    :cond_2
    const-string v1, "isNeedRecommend"

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
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput-boolean v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->isNeedRecommend:Z

    .line 66
    .line 67
    :cond_3
    const-string v1, "from"

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
    move-result v0

    .line 79
    iput v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->from:I

    .line 80
    .line 81
    :cond_4
    return-void
.end method

.method public static intent(Landroid/content/Context;)Lcom/join/mgps/activity/SearchListActivity1_$q;
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
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchListActivity1_$q;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static intent(Landroidx/fragment/app/Fragment;)Lcom/join/mgps/activity/SearchListActivity1_$q;
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
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$q;

    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchListActivity1_$q;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method


# virtual methods
.method T(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SearchListActivity1_$c;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/lang/String;)V

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
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1_;->beans_:Ljava/util/Map;

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

.method getSearchAutoData(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/SearchListActivity1_$g;

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
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/SearchListActivity1_$g;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method getSpecialZoneInfo(IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "pn",
            "recommend"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/activity/SearchListActivity1_$e;

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
    move v6, p1

    .line 12
    move v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/SearchListActivity1_$e;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/lang/String;JLjava/lang/String;IZ)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method hideTags(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fresh"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SearchListActivity1_$b;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;Z)V

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

.method initViewpagerAndTab()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchListActivity1_$n;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;)V

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

.method loadingTags()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/SearchListActivity1_$f;

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
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/SearchListActivity1_$f;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
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
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1_;->onViewChangedNotifier_:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 14
    .line 15
    .line 16
    const p1, 0x7f0d0825

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1_;->setContentView(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a03a1

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->clear:Landroid/view/View;

    .line 9
    .line 10
    const v0, 0x7f0a166f

    .line 11
    .line 12
    .line 13
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->tagBackground:Landroid/view/View;

    .line 18
    .line 19
    const v0, 0x7f0a0ddb

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/zhy/view/flowlayout/TagFlowLayout3;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->languages:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    .line 29
    .line 30
    const v0, 0x7f0a0397

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/zhy/view/flowlayout/TagFlowLayout3;

    .line 38
    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->classifies:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    .line 40
    .line 41
    const v0, 0x7f0a0955

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Landroid/widget/EditText;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 51
    .line 52
    const v0, 0x7f0a165c

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 60
    .line 61
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 62
    .line 63
    const v0, 0x7f0a1b84

    .line 64
    .line 65
    .line 66
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 71
    .line 72
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 73
    .line 74
    const v0, 0x7f0a012f

    .line 75
    .line 76
    .line 77
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/widget/ListView;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->autoListView:Landroid/widget/ListView;

    .line 84
    .line 85
    const v0, 0x7f0a0a36

    .line 86
    .line 87
    .line 88
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    check-cast v0, Landroid/widget/ImageView;

    .line 93
    .line 94
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->iv_filter:Landroid/widget/ImageView;

    .line 95
    .line 96
    const v0, 0x7f0a0ef3

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroid/widget/LinearLayout;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->ll_filter:Landroid/widget/LinearLayout;

    .line 106
    .line 107
    const v0, 0x7f0a013b

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Landroid/widget/ImageView;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->back:Landroid/widget/ImageView;

    .line 117
    .line 118
    const v0, 0x7f0a14b4

    .line 119
    .line 120
    .line 121
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const v1, 0x7f0a1966

    .line 126
    .line 127
    .line 128
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const v2, 0x7f0a1967

    .line 133
    .line 134
    .line 135
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->back:Landroid/widget/ImageView;

    .line 140
    .line 141
    if-eqz v2, :cond_0

    .line 142
    .line 143
    new-instance v3, Lcom/join/mgps/activity/SearchListActivity1_$h;

    .line 144
    .line 145
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/SearchListActivity1_$h;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    :cond_0
    if-eqz v0, :cond_1

    .line 152
    .line 153
    new-instance v2, Lcom/join/mgps/activity/SearchListActivity1_$i;

    .line 154
    .line 155
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/SearchListActivity1_$i;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    .line 160
    .line 161
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->clear:Landroid/view/View;

    .line 162
    .line 163
    if-eqz v0, :cond_2

    .line 164
    .line 165
    new-instance v2, Lcom/join/mgps/activity/SearchListActivity1_$j;

    .line 166
    .line 167
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/SearchListActivity1_$j;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->iv_filter:Landroid/widget/ImageView;

    .line 174
    .line 175
    if-eqz v0, :cond_3

    .line 176
    .line 177
    new-instance v2, Lcom/join/mgps/activity/SearchListActivity1_$k;

    .line 178
    .line 179
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/SearchListActivity1_$k;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    :cond_3
    if-eqz v1, :cond_4

    .line 186
    .line 187
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$l;

    .line 188
    .line 189
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchListActivity1_$l;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    :cond_4
    if-eqz p1, :cond_5

    .line 196
    .line 197
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$m;

    .line 198
    .line 199
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/SearchListActivity1_$m;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->afterViews()V

    .line 206
    .line 207
    .line 208
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
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1_;->beans_:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method setClassifiesData(Lcom/join/mgps/dto/ClassfyTypeBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$p;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SearchListActivity1_$p;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;Lcom/join/mgps/dto/ClassfyTypeBean;)V

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
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1_;->onViewChangedNotifier_:Lzc/c;

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
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1_;->onViewChangedNotifier_:Lzc/c;

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
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchListActivity1_;->injectExtras_()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method showTags(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SearchListActivity1_$a;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;I)V

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

.method updateSpecialZoneInfo(Lcom/join/mgps/dto/SearchGameListBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "listBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/SearchListActivity1_$o;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;Lcom/join/mgps/dto/SearchGameListBean;)V

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

.method updateUI(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "searchAutoDataBeans",
            "KEY"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1_$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lcom/join/mgps/activity/SearchListActivity1_$d;-><init>(Lcom/join/mgps/activity/SearchListActivity1_;Ljava/util/List;Ljava/lang/String;)V

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
