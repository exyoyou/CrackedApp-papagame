.class Lcom/join/mgps/activity/GameDetailActivity$j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity$j;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameListItemBean;

.field final synthetic c:Lcom/join/mgps/activity/GameDetailActivity$j;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity$j;Lcom/join/mgps/dto/GameListItemBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$searchDataBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->c:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/dto/GameListItemBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->c:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 4
    .line 5
    iget-boolean v0, p1, Lcom/join/mgps/activity/GameDetailActivity;->isFinish:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v0, "brief"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/dto/GameListItemBean;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->c:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->fromid:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->c:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickFromUserGameList:Lcom/papa/sim/statistic/Event;

    .line 48
    .line 49
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->c:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 59
    .line 60
    iget-object v3, p1, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/dto/GameListItemBean;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/dto/GameListItemBean;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->b:Lcom/join/mgps/dto/GameListItemBean;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$b;->c:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 81
    .line 82
    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 83
    .line 84
    iget v7, p1, Lcom/join/mgps/activity/GameDetailActivity;->_from:I

    .line 85
    .line 86
    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    const-string v0, "\u8bf7\u5148\u70b9\u51fb\u5b8c\u6210"

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameDetailActivity;->showToastSystem(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    return-void
.end method
