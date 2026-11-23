.class Lcom/join/mgps/activity/GameDetailActivity$m;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/join/mgps/activity/GameDetailActivity$l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/activity/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/GameDetailActivity$m;Lcom/join/mgps/dto/GameListItemBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/GameDetailActivity$m;->h(Lcom/join/mgps/dto/GameListItemBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/activity/GameDetailActivity$m;Lcom/join/mgps/dto/GameListItemBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/GameDetailActivity$m;->i(Lcom/join/mgps/dto/GameListItemBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/join/mgps/activity/GameDetailActivity$m;Lcom/join/mgps/dto/GameListItemBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/GameDetailActivity$m;->j(Lcom/join/mgps/dto/GameListItemBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/activity/GameDetailActivity$m;Lcom/join/mgps/dto/GameListItemBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/GameDetailActivity$m;->l(Lcom/join/mgps/dto/GameListItemBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/join/mgps/activity/GameDetailActivity$m;Lcom/join/mgps/dto/GameListItemBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/GameDetailActivity$m;->g(Lcom/join/mgps/dto/GameListItemBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/join/mgps/activity/GameDetailActivity$m;Lcom/join/mgps/activity/GameDetailActivity$l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameDetailActivity$m;->k(Lcom/join/mgps/activity/GameDetailActivity$l;)V

    return-void
.end method

.method private synthetic g(Lcom/join/mgps/dto/GameListItemBean;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p2, v0, p1}, Lcom/join/kotlin/utils/DlTaskManager;->performDownloadClick(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic h(Lcom/join/mgps/dto/GameListItemBean;Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p2, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p2, v0, p1}, Lcom/join/kotlin/utils/DlTaskManager;->performDownloadClick(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic i(Lcom/join/mgps/dto/GameListItemBean;Landroid/view/View;)V
    .locals 8

    .line 1
    new-instance p2, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {p2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "brief"

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p2, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->fromid:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickFromUserGameList:Lcom/papa/sim/statistic/Event;

    .line 34
    .line 35
    invoke-virtual {v0, v1, p2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 43
    .line 44
    iget-object v3, p2, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 59
    .line 60
    iget v7, p1, Lcom/join/mgps/activity/GameDetailActivity;->_from:I

    .line 61
    .line 62
    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private synthetic j(Lcom/join/mgps/dto/GameListItemBean;Landroid/view/View;)V
    .locals 8

    .line 1
    new-instance p2, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {p2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "introduction"

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p2, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->fromid:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickFromUserGameList:Lcom/papa/sim/statistic/Event;

    .line 34
    .line 35
    invoke-virtual {v0, v1, p2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 43
    .line 44
    iget-object v3, p2, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 59
    .line 60
    iget v7, p1, Lcom/join/mgps/activity/GameDetailActivity;->_from:I

    .line 61
    .line 62
    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private synthetic k(Lcom/join/mgps/activity/GameDetailActivity$l;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/join/mgps/activity/GameDetailActivity$l;->g:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const v2, 0x7f0713ee

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    div-int/2addr v0, v1

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->access$1100(Lcom/join/mgps/activity/GameDetailActivity;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, "  \u53ef\u4ee5\u663e\u793a\u884c\u6570\u884c"

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v1}, Lcom/join/mgps/Util/g1;->c(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    if-lt v0, v1, :cond_2

    .line 51
    .line 52
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/join/mgps/activity/GameDetailActivity;->access$1100(Lcom/join/mgps/activity/GameDetailActivity;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 61
    .line 62
    invoke-static {v1, v0}, Lcom/join/mgps/activity/GameDetailActivity;->access$1102(Lcom/join/mgps/activity/GameDetailActivity;I)I

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v1, p1, Lcom/join/mgps/activity/GameDetailActivity$l;->g:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$l;->g:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    if-nez v0, :cond_3

    .line 77
    .line 78
    iget-object v0, p1, Lcom/join/mgps/activity/GameDetailActivity$l;->g:Landroid/widget/TextView;

    .line 79
    .line 80
    const/4 v1, 0x2

    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$l;->g:Landroid/widget/TextView;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic l(Lcom/join/mgps/dto/GameListItemBean;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 6
    .line 7
    iget-object v1, p2, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 22
    .line 23
    iget v5, p1, Lcom/join/mgps/activity/GameDetailActivity;->_from:I

    .line 24
    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->access$100(Lcom/join/mgps/activity/GameDetailActivity;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    div-int/lit8 v0, v0, 0x2

    .line 12
    .line 13
    return v0
.end method

.method public m(Lcom/join/mgps/activity/GameDetailActivity$l;I)V
    .locals 17
    .param p1    # Lcom/join/mgps/activity/GameDetailActivity$l;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyHolder",
            "i"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, ""

    .line 6
    .line 7
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->access$100(Lcom/join/mgps/activity/GameDetailActivity;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v4, 0x2

    .line 14
    mul-int/lit8 v5, p2, 0x2

    .line 15
    .line 16
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    move-object v6, v0

    .line 21
    check-cast v6, Lcom/join/mgps/dto/GameListItemBean;

    .line 22
    .line 23
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/join/mgps/Util/w0;->m(Ljava/util/List;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v7, 0x8

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getTagInfo()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/join/mgps/Util/w0;->k(Ljava/util/List;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->o:Landroid/widget/ImageView;

    .line 48
    .line 49
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/LinearLayout;

    .line 53
    .line 54
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :goto_0
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->o:Landroid/widget/ImageView;

    .line 59
    .line 60
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/LinearLayout;

    .line 64
    .line 65
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->o:Landroid/widget/ImageView;

    .line 69
    .line 70
    new-instance v9, Lcom/join/mgps/activity/w1;

    .line 71
    .line 72
    invoke-direct {v9, v1, v6}, Lcom/join/mgps/activity/w1;-><init>(Lcom/join/mgps/activity/GameDetailActivity$m;Lcom/join/mgps/dto/GameListItemBean;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const v9, 0x7f0712ed

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iget-object v9, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 92
    .line 93
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object v9

    .line 97
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 102
    .line 103
    iget-object v10, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 104
    .line 105
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v10

    .line 109
    const v11, 0x7f07148a

    .line 110
    .line 111
    .line 112
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 113
    .line 114
    .line 115
    move-result v10

    .line 116
    sub-int/2addr v9, v10

    .line 117
    const/high16 v10, 0x3f800000    # 1.0f

    .line 118
    .line 119
    if-lt v0, v9, :cond_2

    .line 120
    .line 121
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->s:Landroid/widget/LinearLayout;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 128
    .line 129
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 130
    .line 131
    iget-object v9, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->s:Landroid/widget/LinearLayout;

    .line 132
    .line 133
    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_2
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->m:Lit/sephiroth/android/library/widget/HListView;

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    .line 145
    iput v10, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 146
    .line 147
    iget-object v9, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->m:Lit/sephiroth/android/library/widget/HListView;

    .line 148
    .line 149
    invoke-virtual {v9, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .line 151
    .line 152
    :goto_2
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameListItemBean;->getBg_color_tag_type()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    packed-switch v0, :pswitch_data_0

    .line 157
    .line 158
    .line 159
    const/4 v9, 0x0

    .line 160
    goto/16 :goto_4

    .line 161
    .line 162
    :pswitch_0
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/LinearLayout;

    .line 163
    .line 164
    const v9, 0x7f080633

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 168
    .line 169
    .line 170
    const-string v0, "#68465B"

    .line 171
    .line 172
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    goto/16 :goto_3

    .line 177
    .line 178
    :pswitch_1
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/LinearLayout;

    .line 179
    .line 180
    const v9, 0x7f080636

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 184
    .line 185
    .line 186
    const-string v0, "#41578D"

    .line 187
    .line 188
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    goto :goto_3

    .line 193
    :pswitch_2
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/LinearLayout;

    .line 194
    .line 195
    const v9, 0x7f080632

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 199
    .line 200
    .line 201
    const-string v0, "#3A8282"

    .line 202
    .line 203
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    goto :goto_3

    .line 208
    :pswitch_3
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/LinearLayout;

    .line 209
    .line 210
    const v9, 0x7f080630

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 214
    .line 215
    .line 216
    const-string v0, "#84975C"

    .line 217
    .line 218
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    goto :goto_3

    .line 223
    :pswitch_4
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/LinearLayout;

    .line 224
    .line 225
    const v9, 0x7f080631

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 229
    .line 230
    .line 231
    const-string v0, "#A4961B"

    .line 232
    .line 233
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    goto :goto_3

    .line 238
    :pswitch_5
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/LinearLayout;

    .line 239
    .line 240
    const v9, 0x7f08062f

    .line 241
    .line 242
    .line 243
    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 244
    .line 245
    .line 246
    const-string v0, "#5E4643"

    .line 247
    .line 248
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    goto :goto_3

    .line 253
    :pswitch_6
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/LinearLayout;

    .line 254
    .line 255
    const v9, 0x7f080634

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 259
    .line 260
    .line 261
    const-string v0, "#AB3B3A"

    .line 262
    .line 263
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 264
    .line 265
    .line 266
    move-result v0

    .line 267
    goto :goto_3

    .line 268
    :pswitch_7
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/LinearLayout;

    .line 269
    .line 270
    const v9, 0x7f080635

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 274
    .line 275
    .line 276
    const-string v0, "#776353"

    .line 277
    .line 278
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    goto :goto_3

    .line 283
    :pswitch_8
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/LinearLayout;

    .line 284
    .line 285
    const v9, 0x7f08062e

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 289
    .line 290
    .line 291
    const-string v0, "#767676"

    .line 292
    .line 293
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    :goto_3
    move v9, v0

    .line 298
    :goto_4
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 299
    .line 300
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v10

    .line 304
    iget-object v11, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 305
    .line 306
    iget-object v12, v11, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 307
    .line 308
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 309
    .line 310
    .line 311
    move-result-object v11

    .line 312
    const v13, 0x7f071369

    .line 313
    .line 314
    .line 315
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 316
    .line 317
    .line 318
    move-result v11

    .line 319
    int-to-float v11, v11

    .line 320
    invoke-static {v12, v11}, Lcom/join/android/app/common/utils/l;->F(Landroid/content/Context;F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 321
    .line 322
    .line 323
    move-result-object v11

    .line 324
    const v12, 0x7f080caf

    .line 325
    .line 326
    .line 327
    invoke-static {v0, v12, v10, v11}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 328
    .line 329
    .line 330
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->e:Landroid/widget/TextView;

    .line 331
    .line 332
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object v10

    .line 336
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameListItemBean;->getComment_score_switch()I

    .line 340
    .line 341
    .line 342
    move-result v0

    .line 343
    const/4 v10, 0x5

    .line 344
    const/4 v11, 0x1

    .line 345
    if-ne v0, v11, :cond_4

    .line 346
    .line 347
    const-string v0, "0.0"

    .line 348
    .line 349
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v12

    .line 353
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    .line 355
    .line 356
    move-result v0

    .line 357
    if-eqz v0, :cond_3

    .line 358
    .line 359
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->f:Landroid/widget/TextView;

    .line 360
    .line 361
    const-string v12, "\u6682\u672a\u51fa\u5206"

    .line 362
    .line 363
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    .line 365
    .line 366
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->f:Landroid/widget/TextView;

    .line 367
    .line 368
    const/high16 v12, 0x41400000    # 12.0f

    .line 369
    .line 370
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 371
    .line 372
    .line 373
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->f:Landroid/widget/TextView;

    .line 374
    .line 375
    const-string v12, "#8a8a8a"

    .line 376
    .line 377
    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 378
    .line 379
    .line 380
    move-result v12

    .line 381
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    .line 383
    .line 384
    goto :goto_5

    .line 385
    :cond_3
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->f:Landroid/widget/TextView;

    .line 386
    .line 387
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v12

    .line 391
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    .line 393
    .line 394
    :goto_5
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->k:Lcom/join/mgps/customview/MStarBar;

    .line 395
    .line 396
    invoke-virtual {v0, v8}, Lcom/join/mgps/customview/MStarBar;->setIntegerMark(Z)V

    .line 397
    .line 398
    .line 399
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->k:Lcom/join/mgps/customview/MStarBar;

    .line 400
    .line 401
    invoke-virtual {v0, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 402
    .line 403
    .line 404
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->k:Lcom/join/mgps/customview/MStarBar;

    .line 405
    .line 406
    invoke-virtual {v0, v10}, Lcom/join/mgps/customview/MStarBar;->setStarCount(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 414
    .line 415
    .line 416
    move-result-wide v12

    .line 417
    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    .line 418
    .line 419
    mul-double v12, v12, v14

    .line 420
    .line 421
    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    .line 422
    .line 423
    div-double/2addr v12, v14

    .line 424
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->k:Lcom/join/mgps/customview/MStarBar;

    .line 425
    .line 426
    invoke-virtual {v0, v12, v13}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 427
    .line 428
    .line 429
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->j:Landroid/widget/LinearLayout;

    .line 430
    .line 431
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 432
    .line 433
    .line 434
    goto :goto_6

    .line 435
    :cond_4
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->j:Landroid/widget/LinearLayout;

    .line 436
    .line 437
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 438
    .line 439
    .line 440
    :goto_6
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 441
    .line 442
    iget-object v12, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/LinearLayout;

    .line 443
    .line 444
    invoke-static {v0, v12, v6}, Lcom/join/mgps/Util/UtilsMy;->H3(Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 445
    .line 446
    .line 447
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/LinearLayout;

    .line 448
    .line 449
    new-instance v12, Lcom/join/mgps/activity/x1;

    .line 450
    .line 451
    invoke-direct {v12, v1, v6}, Lcom/join/mgps/activity/x1;-><init>(Lcom/join/mgps/activity/GameDetailActivity$m;Lcom/join/mgps/dto/GameListItemBean;)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    .line 456
    .line 457
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->g:Landroid/widget/TextView;

    .line 458
    .line 459
    new-instance v12, Ljava/lang/StringBuilder;

    .line 460
    .line 461
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .line 463
    .line 464
    const-string v13, "\u7b80\u4ecb\uff1a"

    .line 465
    .line 466
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    .line 468
    .line 469
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameListItemBean;->getGame_describe_second()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v13

    .line 473
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v12

    .line 480
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameListItemBean;->getGame_describe_second()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    if-eqz v0, :cond_5

    .line 492
    .line 493
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->s:Landroid/widget/LinearLayout;

    .line 494
    .line 495
    const/4 v12, 0x4

    .line 496
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 497
    .line 498
    .line 499
    goto :goto_7

    .line 500
    :cond_5
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->s:Landroid/widget/LinearLayout;

    .line 501
    .line 502
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 503
    .line 504
    .line 505
    :goto_7
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->t:Landroid/view/View;

    .line 506
    .line 507
    new-instance v12, Lcom/join/mgps/activity/y1;

    .line 508
    .line 509
    invoke-direct {v12, v1, v6}, Lcom/join/mgps/activity/y1;-><init>(Lcom/join/mgps/activity/GameDetailActivity$m;Lcom/join/mgps/dto/GameListItemBean;)V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 513
    .line 514
    .line 515
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->g:Landroid/widget/TextView;

    .line 516
    .line 517
    new-instance v12, Lcom/join/mgps/activity/z1;

    .line 518
    .line 519
    invoke-direct {v12, v1, v6}, Lcom/join/mgps/activity/z1;-><init>(Lcom/join/mgps/activity/GameDetailActivity$m;Lcom/join/mgps/dto/GameListItemBean;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 523
    .line 524
    .line 525
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->g:Landroid/widget/TextView;

    .line 526
    .line 527
    new-instance v12, Lcom/join/mgps/activity/a2;

    .line 528
    .line 529
    invoke-direct {v12, v1, v2}, Lcom/join/mgps/activity/a2;-><init>(Lcom/join/mgps/activity/GameDetailActivity$m;Lcom/join/mgps/activity/GameDetailActivity$l;)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0, v12}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 533
    .line 534
    .line 535
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->s:Landroid/widget/LinearLayout;

    .line 536
    .line 537
    new-instance v12, Lcom/join/mgps/activity/b2;

    .line 538
    .line 539
    invoke-direct {v12, v1, v6}, Lcom/join/mgps/activity/b2;-><init>(Lcom/join/mgps/activity/GameDetailActivity$m;Lcom/join/mgps/dto/GameListItemBean;)V

    .line 540
    .line 541
    .line 542
    invoke-virtual {v0, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    .line 544
    .line 545
    const-string v0, "res:///2131232323"

    .line 546
    .line 547
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    .line 552
    .line 553
    .line 554
    move-result-object v12

    .line 555
    invoke-virtual {v12, v0}, Lcom/facebook/drawee/backends/pipeline/e;->e0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    iget-object v12, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 560
    .line 561
    invoke-virtual {v12}, Lcom/facebook/drawee/view/DraweeView;->getController()Ls3/a;

    .line 562
    .line 563
    .line 564
    move-result-object v12

    .line 565
    invoke-virtual {v0, v12}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->Q(Ls3/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 570
    .line 571
    invoke-virtual {v0, v11}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->F(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 576
    .line 577
    invoke-virtual {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    check-cast v0, Lcom/facebook/drawee/backends/pipeline/d;

    .line 582
    .line 583
    iget-object v11, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 584
    .line 585
    invoke-virtual {v11, v0}, Lcom/facebook/drawee/view/DraweeView;->setController(Ls3/a;)V

    .line 586
    .line 587
    .line 588
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 589
    .line 590
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->access$100(Lcom/join/mgps/activity/GameDetailActivity;)Ljava/util/List;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 595
    .line 596
    .line 597
    move-result v0

    .line 598
    add-int/2addr v5, v4

    .line 599
    if-gt v0, v5, :cond_6

    .line 600
    .line 601
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 602
    .line 603
    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->access$1000(Lcom/join/mgps/activity/GameDetailActivity;)Z

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    if-eqz v0, :cond_6

    .line 608
    .line 609
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->r:Landroid/widget/TextView;

    .line 610
    .line 611
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 612
    .line 613
    .line 614
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 615
    .line 616
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 617
    .line 618
    .line 619
    goto :goto_8

    .line 620
    :cond_6
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->r:Landroid/widget/TextView;

    .line 621
    .line 622
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 623
    .line 624
    .line 625
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 626
    .line 627
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 628
    .line 629
    .line 630
    :goto_8
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object v11

    .line 634
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    .line 635
    .line 636
    .line 637
    move-result v12

    .line 638
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getAppSize()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v13

    .line 642
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 643
    .line 644
    .line 645
    move-result-object v14

    .line 646
    iget-object v15, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->i:Landroid/widget/LinearLayout;

    .line 647
    .line 648
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 649
    .line 650
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 651
    .line 652
    move-object/from16 v16, v0

    .line 653
    .line 654
    invoke-static/range {v11 .. v16}, Lcom/join/mgps/Util/UtilsMy;->P(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_info()Ljava/util/List;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 662
    .line 663
    .line 664
    move-result v5

    .line 665
    if-nez v5, :cond_7

    .line 666
    .line 667
    iget-object v5, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->l:Lit/sephiroth/android/library/widget/HListView;

    .line 668
    .line 669
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 670
    .line 671
    .line 672
    goto :goto_9

    .line 673
    :cond_7
    iget-object v5, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->l:Lit/sephiroth/android/library/widget/HListView;

    .line 674
    .line 675
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 676
    .line 677
    .line 678
    :goto_9
    new-instance v5, Ljava/util/ArrayList;

    .line 679
    .line 680
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 681
    .line 682
    .line 683
    const/4 v11, 0x0

    .line 684
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 685
    .line 686
    .line 687
    move-result v12

    .line 688
    if-ge v11, v12, :cond_8

    .line 689
    .line 690
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    move-result-object v12

    .line 694
    check-cast v12, Lcom/join/mgps/dto/DetialShowImageBean;

    .line 695
    .line 696
    invoke-virtual {v12}, Lcom/join/mgps/dto/DetialShowImageBean;->getRemote()Lcom/join/mgps/dto/DetialShowImageSingBean;

    .line 697
    .line 698
    .line 699
    move-result-object v12

    .line 700
    invoke-virtual {v12}, Lcom/join/mgps/dto/DetialShowImageSingBean;->getPath()Ljava/lang/String;

    .line 701
    .line 702
    .line 703
    move-result-object v12

    .line 704
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    add-int/lit8 v11, v11, 0x1

    .line 708
    .line 709
    goto :goto_a

    .line 710
    :cond_8
    new-instance v0, Lcom/join/mgps/adapter/h1;

    .line 711
    .line 712
    iget-object v11, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 713
    .line 714
    iget-object v11, v11, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 715
    .line 716
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPic_position()I

    .line 717
    .line 718
    .line 719
    move-result v12

    .line 720
    invoke-direct {v0, v11, v12, v5, v8}, Lcom/join/mgps/adapter/h1;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 721
    .line 722
    .line 723
    invoke-virtual {v0}, Lcom/join/mgps/adapter/h1;->b()V

    .line 724
    .line 725
    .line 726
    iget-object v11, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->l:Lit/sephiroth/android/library/widget/HListView;

    .line 727
    .line 728
    invoke-virtual {v11, v0}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 729
    .line 730
    .line 731
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->l:Lit/sephiroth/android/library/widget/HListView;

    .line 732
    .line 733
    new-instance v11, Lcom/join/mgps/activity/GameDetailActivity$m$a;

    .line 734
    .line 735
    invoke-direct {v11, v1, v5, v6}, Lcom/join/mgps/activity/GameDetailActivity$m$a;-><init>(Lcom/join/mgps/activity/GameDetailActivity$m;Ljava/util/List;Lcom/join/mgps/dto/GameListItemBean;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v0, v11}, Lit/sephiroth/android/library/widget/AdapterView;->setOnItemClickListener(Lit/sephiroth/android/library/widget/AdapterView$d;)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameListItemBean;->getComment_list()Ljava/util/List;

    .line 742
    .line 743
    .line 744
    move-result-object v5

    .line 745
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCustomer_info()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v0

    .line 749
    :try_start_0
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 750
    .line 751
    .line 752
    move-result v11

    .line 753
    if-eqz v11, :cond_9

    .line 754
    .line 755
    if-eqz v5, :cond_9

    .line 756
    .line 757
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 758
    .line 759
    .line 760
    move-result v11

    .line 761
    if-lez v11, :cond_9

    .line 762
    .line 763
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v11

    .line 767
    check-cast v11, Lcom/join/mgps/dto/CommentBaseBean;

    .line 768
    .line 769
    invoke-virtual {v11}, Lcom/join/mgps/dto/CommentBaseBean;->getId()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v11

    .line 773
    invoke-static {v11}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 774
    .line 775
    .line 776
    move-result v11

    .line 777
    if-eqz v11, :cond_9

    .line 778
    .line 779
    new-instance v11, Lcom/join/mgps/dto/CommentBaseBean;

    .line 780
    .line 781
    invoke-direct {v11}, Lcom/join/mgps/dto/CommentBaseBean;-><init>()V

    .line 782
    .line 783
    .line 784
    iget-object v12, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 785
    .line 786
    iget-object v12, v12, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 787
    .line 788
    invoke-virtual {v12}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getPortrait()Ljava/lang/String;

    .line 789
    .line 790
    .line 791
    move-result-object v12

    .line 792
    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/CommentBaseBean;->setHead_portrait(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    iget-object v12, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 796
    .line 797
    iget-object v12, v12, Lcom/join/mgps/activity/GameDetailActivity;->detailsBean:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    .line 798
    .line 799
    invoke-virtual {v12}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getNick_name()Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v12

    .line 803
    invoke-virtual {v11, v12}, Lcom/join/mgps/dto/CommentBaseBean;->setUser_name(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {v11, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setContent(Ljava/lang/String;)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v11, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setId(Ljava/lang/String;)V

    .line 810
    .line 811
    .line 812
    const-string v0, "0"

    .line 813
    .line 814
    invoke-virtual {v11, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setStars_score(Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    invoke-interface {v5, v8, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    .line 819
    .line 820
    goto :goto_b

    .line 821
    :catch_0
    move-exception v0

    .line 822
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 823
    .line 824
    .line 825
    :cond_9
    :goto_b
    if-eqz v5, :cond_b

    .line 826
    .line 827
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 828
    .line 829
    .line 830
    move-result v0

    .line 831
    if-nez v0, :cond_a

    .line 832
    .line 833
    goto :goto_c

    .line 834
    :cond_a
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->m:Lit/sephiroth/android/library/widget/HListView;

    .line 835
    .line 836
    new-instance v11, Lcom/join/mgps/activity/GameDetailActivity$i;

    .line 837
    .line 838
    iget-object v12, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 839
    .line 840
    invoke-direct {v11, v12, v5, v9, v6}, Lcom/join/mgps/activity/GameDetailActivity$i;-><init>(Lcom/join/mgps/activity/GameDetailActivity;Ljava/util/List;ILcom/join/mgps/dto/GameListItemBean;)V

    .line 841
    .line 842
    .line 843
    invoke-virtual {v0, v11}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 844
    .line 845
    .line 846
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->m:Lit/sephiroth/android/library/widget/HListView;

    .line 847
    .line 848
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 849
    .line 850
    .line 851
    goto :goto_d

    .line 852
    :cond_b
    :goto_c
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->m:Lit/sephiroth/android/library/widget/HListView;

    .line 853
    .line 854
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 855
    .line 856
    .line 857
    :goto_d
    invoke-virtual {v6}, Lcom/join/mgps/dto/GameListItemBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 858
    .line 859
    .line 860
    move-result-object v0

    .line 861
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    .line 862
    .line 863
    .line 864
    move-result-object v5

    .line 865
    new-instance v9, Ljava/lang/StringBuilder;

    .line 866
    .line 867
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 868
    .line 869
    .line 870
    sget-object v11, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 871
    .line 872
    invoke-virtual {v11}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 873
    .line 874
    .line 875
    move-result v11

    .line 876
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 877
    .line 878
    .line 879
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    .line 881
    .line 882
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v3

    .line 886
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 887
    .line 888
    .line 889
    move-result v3

    .line 890
    if-eqz v3, :cond_c

    .line 891
    .line 892
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 893
    .line 894
    const-string v2, "\u5f00\u59cb"

    .line 895
    .line 896
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 897
    .line 898
    .line 899
    goto/16 :goto_f

    .line 900
    .line 901
    :cond_c
    const-string v3, "\u66f4\u65b0"

    .line 902
    .line 903
    const v5, 0x7f120105

    .line 904
    .line 905
    .line 906
    const v9, 0x7f080638

    .line 907
    .line 908
    .line 909
    if-nez v0, :cond_11

    .line 910
    .line 911
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->p:Landroid/widget/ImageView;

    .line 912
    .line 913
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 914
    .line 915
    .line 916
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->p:Landroid/widget/ImageView;

    .line 917
    .line 918
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 919
    .line 920
    .line 921
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 922
    .line 923
    .line 924
    move-result-object v0

    .line 925
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 926
    .line 927
    .line 928
    move-result v0

    .line 929
    if-eqz v0, :cond_10

    .line 930
    .line 931
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 932
    .line 933
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 934
    .line 935
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    iget-object v4, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 940
    .line 941
    iget-object v4, v4, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 942
    .line 943
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 944
    .line 945
    .line 946
    move-result-object v7

    .line 947
    invoke-virtual {v0, v4, v7}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 948
    .line 949
    .line 950
    move-result v0

    .line 951
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 952
    .line 953
    .line 954
    move-result-object v4

    .line 955
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v7

    .line 959
    invoke-static {v4, v7}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 960
    .line 961
    .line 962
    move-result v4

    .line 963
    if-lez v4, :cond_d

    .line 964
    .line 965
    goto :goto_e

    .line 966
    :cond_d
    move v8, v0

    .line 967
    :goto_e
    if-eqz v8, :cond_f

    .line 968
    .line 969
    iget-object v0, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 970
    .line 971
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 972
    .line 973
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    iget-object v4, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 978
    .line 979
    iget-object v4, v4, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 980
    .line 981
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    .line 982
    .line 983
    .line 984
    move-result-object v7

    .line 985
    invoke-virtual {v0, v4, v7}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 986
    .line 987
    .line 988
    move-result-object v0

    .line 989
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 990
    .line 991
    .line 992
    move-result-object v4

    .line 993
    invoke-static {v4}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 994
    .line 995
    .line 996
    move-result v4

    .line 997
    if-eqz v4, :cond_e

    .line 998
    .line 999
    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 1000
    .line 1001
    .line 1002
    move-result v0

    .line 1003
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v4

    .line 1007
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1008
    .line 1009
    .line 1010
    move-result v4

    .line 1011
    if-ge v0, v4, :cond_e

    .line 1012
    .line 1013
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 1014
    .line 1015
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    .line 1017
    .line 1018
    goto/16 :goto_f

    .line 1019
    .line 1020
    :cond_e
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 1021
    .line 1022
    iget-object v2, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 1023
    .line 1024
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 1025
    .line 1026
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v2

    .line 1030
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v2

    .line 1034
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    .line 1036
    .line 1037
    goto/16 :goto_f

    .line 1038
    .line 1039
    :cond_f
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 1040
    .line 1041
    .line 1042
    move-result-object v0

    .line 1043
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v3

    .line 1047
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 1048
    .line 1049
    .line 1050
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 1051
    .line 1052
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/LinearLayout;

    .line 1053
    .line 1054
    invoke-static {v0, v2, v6}, Lcom/join/mgps/Util/UtilsMy;->H3(Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 1055
    .line 1056
    .line 1057
    goto/16 :goto_f

    .line 1058
    .line 1059
    :cond_10
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v0

    .line 1063
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v3

    .line 1067
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 1068
    .line 1069
    .line 1070
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 1071
    .line 1072
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/LinearLayout;

    .line 1073
    .line 1074
    invoke-static {v0, v2, v6}, Lcom/join/mgps/Util/UtilsMy;->H3(Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 1075
    .line 1076
    .line 1077
    goto/16 :goto_f

    .line 1078
    .line 1079
    :cond_11
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 1080
    .line 1081
    .line 1082
    move-result v11

    .line 1083
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 1084
    .line 1085
    .line 1086
    move-result-object v12

    .line 1087
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v13

    .line 1091
    invoke-static {v12, v13}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 1092
    .line 1093
    .line 1094
    move-result v12

    .line 1095
    const/16 v13, 0x2b

    .line 1096
    .line 1097
    if-lez v12, :cond_12

    .line 1098
    .line 1099
    const/16 v11, 0x2b

    .line 1100
    .line 1101
    :cond_12
    iget-object v12, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->p:Landroid/widget/ImageView;

    .line 1102
    .line 1103
    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1104
    .line 1105
    .line 1106
    iget-object v9, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->p:Landroid/widget/ImageView;

    .line 1107
    .line 1108
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1109
    .line 1110
    .line 1111
    if-eqz v11, :cond_18

    .line 1112
    .line 1113
    const/16 v8, 0x1b

    .line 1114
    .line 1115
    const v9, 0x7f08049c

    .line 1116
    .line 1117
    .line 1118
    const-string v12, "%"

    .line 1119
    .line 1120
    if-eq v11, v8, :cond_17

    .line 1121
    .line 1122
    const/16 v8, 0x30

    .line 1123
    .line 1124
    if-eq v11, v8, :cond_16

    .line 1125
    .line 1126
    if-eq v11, v4, :cond_15

    .line 1127
    .line 1128
    const/4 v4, 0x3

    .line 1129
    if-eq v11, v4, :cond_14

    .line 1130
    .line 1131
    if-eq v11, v10, :cond_13

    .line 1132
    .line 1133
    const/4 v4, 0x6

    .line 1134
    if-eq v11, v4, :cond_14

    .line 1135
    .line 1136
    const/4 v0, 0x7

    .line 1137
    if-eq v11, v0, :cond_18

    .line 1138
    .line 1139
    const/16 v0, 0x2a

    .line 1140
    .line 1141
    if-eq v11, v0, :cond_13

    .line 1142
    .line 1143
    if-eq v11, v13, :cond_18

    .line 1144
    .line 1145
    packed-switch v11, :pswitch_data_1

    .line 1146
    .line 1147
    .line 1148
    goto/16 :goto_f

    .line 1149
    .line 1150
    :pswitch_9
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 1151
    .line 1152
    const-string v3, "\u89e3\u538b"

    .line 1153
    .line 1154
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1155
    .line 1156
    .line 1157
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->p:Landroid/widget/ImageView;

    .line 1158
    .line 1159
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1160
    .line 1161
    .line 1162
    goto/16 :goto_f

    .line 1163
    .line 1164
    :pswitch_a
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 1165
    .line 1166
    const-string v3, "\u89e3\u538b\u4e2d"

    .line 1167
    .line 1168
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    .line 1170
    .line 1171
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->p:Landroid/widget/ImageView;

    .line 1172
    .line 1173
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1174
    .line 1175
    .line 1176
    goto/16 :goto_f

    .line 1177
    .line 1178
    :pswitch_b
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 1179
    .line 1180
    const-string v3, "\u5b89\u88c5"

    .line 1181
    .line 1182
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    .line 1184
    .line 1185
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->p:Landroid/widget/ImageView;

    .line 1186
    .line 1187
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1188
    .line 1189
    .line 1190
    goto/16 :goto_f

    .line 1191
    .line 1192
    :pswitch_c
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 1193
    .line 1194
    const-string v2, "\u7b49\u5f85"

    .line 1195
    .line 1196
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    .line 1198
    .line 1199
    goto/16 :goto_f

    .line 1200
    .line 1201
    :pswitch_d
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 1202
    .line 1203
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1204
    .line 1205
    .line 1206
    goto/16 :goto_f

    .line 1207
    .line 1208
    :cond_13
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 1209
    .line 1210
    iget-object v3, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 1211
    .line 1212
    iget-object v3, v3, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 1213
    .line 1214
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v3

    .line 1218
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v3

    .line 1222
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    .line 1224
    .line 1225
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->p:Landroid/widget/ImageView;

    .line 1226
    .line 1227
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1228
    .line 1229
    .line 1230
    goto/16 :goto_f

    .line 1231
    .line 1232
    :cond_14
    iget-object v3, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->p:Landroid/widget/ImageView;

    .line 1233
    .line 1234
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1235
    .line 1236
    .line 1237
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 1238
    .line 1239
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1240
    .line 1241
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 1245
    .line 1246
    .line 1247
    move-result-wide v4

    .line 1248
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1255
    .line 1256
    .line 1257
    move-result-object v0

    .line 1258
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    .line 1260
    .line 1261
    goto :goto_f

    .line 1262
    :cond_15
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 1263
    .line 1264
    .line 1265
    iget-object v3, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->p:Landroid/widget/ImageView;

    .line 1266
    .line 1267
    const v4, 0x7f08049d

    .line 1268
    .line 1269
    .line 1270
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1271
    .line 1272
    .line 1273
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 1274
    .line 1275
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1276
    .line 1277
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1278
    .line 1279
    .line 1280
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 1281
    .line 1282
    .line 1283
    move-result-wide v4

    .line 1284
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1291
    .line 1292
    .line 1293
    move-result-object v0

    .line 1294
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    .line 1296
    .line 1297
    goto :goto_f

    .line 1298
    :cond_16
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 1299
    .line 1300
    const-string v3, "\u5b89\u88c5\u4e2d"

    .line 1301
    .line 1302
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1303
    .line 1304
    .line 1305
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->p:Landroid/widget/ImageView;

    .line 1306
    .line 1307
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1308
    .line 1309
    .line 1310
    goto :goto_f

    .line 1311
    :cond_17
    iget-object v3, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->p:Landroid/widget/ImageView;

    .line 1312
    .line 1313
    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1314
    .line 1315
    .line 1316
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 1317
    .line 1318
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1319
    .line 1320
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1321
    .line 1322
    .line 1323
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 1324
    .line 1325
    .line 1326
    move-result-wide v4

    .line 1327
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1331
    .line 1332
    .line 1333
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1334
    .line 1335
    .line 1336
    move-result-object v0

    .line 1337
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1338
    .line 1339
    .line 1340
    goto :goto_f

    .line 1341
    :cond_18
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 1342
    .line 1343
    .line 1344
    move-result-object v0

    .line 1345
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v3

    .line 1349
    invoke-static {v0, v3}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 1350
    .line 1351
    .line 1352
    iget-object v0, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 1353
    .line 1354
    iget-object v2, v2, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/LinearLayout;

    .line 1355
    .line 1356
    invoke-static {v0, v2, v6}, Lcom/join/mgps/Util/UtilsMy;->H3(Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 1357
    .line 1358
    .line 1359
    :goto_f
    return-void

    .line 1360
    nop

    .line 1361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1362
    .line 1363
    .line 1364
    .line 1365
    .line 1366
    .line 1367
    .line 1368
    .line 1369
    .line 1370
    .line 1371
    .line 1372
    .line 1373
    .line 1374
    .line 1375
    .line 1376
    .line 1377
    .line 1378
    .line 1379
    .line 1380
    .line 1381
    .line 1382
    .line 1383
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public n(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/GameDetailActivity$l;
    .locals 2
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
            "i"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const v0, 0x7f0d035c

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Lcom/join/mgps/activity/GameDetailActivity$l;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$m;->e:Lcom/join/mgps/activity/GameDetailActivity;

    .line 20
    .line 21
    invoke-direct {p2, v0, p1}, Lcom/join/mgps/activity/GameDetailActivity$l;-><init>(Lcom/join/mgps/activity/GameDetailActivity;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "recyHolder",
            "i"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/join/mgps/activity/GameDetailActivity$l;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/GameDetailActivity$m;->m(Lcom/join/mgps/activity/GameDetailActivity$l;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/GameDetailActivity$m;->n(Landroid/view/ViewGroup;I)Lcom/join/mgps/activity/GameDetailActivity$l;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
