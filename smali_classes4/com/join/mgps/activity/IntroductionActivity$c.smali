.class Lcom/join/mgps/activity/IntroductionActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/IntroductionActivity;->onClickMore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/IntroductionActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/IntroductionActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$c;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$c;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/IntroductionActivity;->window:Landroid/widget/PopupWindow;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$c;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-object v2, Lcom/papa/sim/statistic/Event;->singleStartGamePageDetail:Lcom/papa/sim/statistic/Event;

    .line 19
    .line 20
    sget-object v3, Lcom/papa/sim/statistic/Event;->ClickBrowser:Lcom/papa/sim/statistic/Event;

    .line 21
    .line 22
    const-string v4, ""

    .line 23
    .line 24
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 25
    .line 26
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v0, "1"

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$c;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getId()Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$c;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 52
    .line 53
    iget v0, v0, Lcom/join/mgps/activity/IntroductionActivity;->tagId:I

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    new-instance p1, Lcom/papa/sim/statistic/Data;

    .line 64
    .line 65
    invoke-direct {p1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/join/mgps/activity/IntroductionActivity$c;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/join/mgps/activity/IntroductionActivity;->gameId:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual/range {v1 .. v6}, Lcom/papa/sim/statistic/t;->s1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/join/mgps/activity/IntroductionActivity$c;->b:Lcom/join/mgps/activity/IntroductionActivity;

    .line 80
    .line 81
    iget-object v0, p1, Lcom/join/mgps/activity/IntroductionActivity;->detailBean:Lcom/join/mgps/dto/BbsDetailBean;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/join/mgps/dto/BbsDetailBean;->getSourceUrl()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/IntroductionActivity;->openSystemWeb(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_0
    return-void
.end method
