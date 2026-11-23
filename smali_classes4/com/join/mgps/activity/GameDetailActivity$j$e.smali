.class Lcom/join/mgps/activity/GameDetailActivity$j$e;
.super Lm6/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity$j;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameListItemBean;

.field final synthetic b:Lcom/join/mgps/activity/GameDetailActivity$j;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity$j;Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;Lcom/join/mgps/dto/GameListItemBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$1",
            "ctx",
            "info",
            "val$searchDataBeanSub"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$e;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 2
    .line 3
    iput-object p4, p0, Lcom/join/mgps/activity/GameDetailActivity$j$e;->a:Lcom/join/mgps/dto/GameListItemBean;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onButtonClicked(Lcom/join/mgps/customview/DownloadNormalView;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downView"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j$e;->a:Lcom/join/mgps/dto/GameListItemBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameListItemBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$j$e;->a:Lcom/join/mgps/dto/GameListItemBean;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameListItemBean;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x7

    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const/16 v1, 0x2b

    .line 27
    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$e;->a:Lcom/join/mgps/dto/GameListItemBean;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$e;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 48
    .line 49
    iget v1, v1, Lcom/join/mgps/activity/GameDetailActivity;->uiMode:I

    .line 50
    .line 51
    const/4 v2, 0x1

    .line 52
    if-ne v1, v2, :cond_2

    .line 53
    .line 54
    const-string v1, "listMode"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    const-string v1, "defaultMode"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 63
    .line 64
    .line 65
    :goto_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$e;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 68
    .line 69
    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity;->fromid:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$j$e;->b:Lcom/join/mgps/activity/GameDetailActivity$j;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity$j;->b:Lcom/join/mgps/activity/GameDetailActivity;

    .line 77
    .line 78
    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity;->context:Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    sget-object v2, Lcom/papa/sim/statistic/Event;->downloadFromUserGameList:Lcom/papa/sim/statistic/Event;

    .line 85
    .line 86
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 87
    .line 88
    .line 89
    :goto_2
    invoke-super {p0, p1}, Lm6/c;->onButtonClicked(Lcom/join/mgps/customview/DownloadNormalView;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method
