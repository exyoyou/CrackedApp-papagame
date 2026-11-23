.class Lcom/join/mgps/activity/SearchHintActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchHintActivity;->makeFlawLayoutItem(Landroid/content/Context;Lcom/join/mgps/dto/GameInfoBean;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/GameInfoBean;

.field final synthetic c:Lcom/join/mgps/activity/SearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/dto/GameInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$a;->c:Lcom/join/mgps/activity/SearchHintActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$a;->b:Lcom/join/mgps/dto/GameInfoBean;

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
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$a;->c:Lcom/join/mgps/activity/SearchHintActivity;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$a;->b:Lcom/join/mgps/dto/GameInfoBean;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity$a;->b:Lcom/join/mgps/dto/GameInfoBean;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->goSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$a;->b:Lcom/join/mgps/dto/GameInfoBean;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInfoBean;->isThe_hot()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$a;->b:Lcom/join/mgps/dto/GameInfoBean;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameInfoBean;->isThe_score()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    const/4 p1, 0x2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 p1, 0x0

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$a;->c:Lcom/join/mgps/activity/SearchHintActivity;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/join/mgps/activity/SearchHintActivity;->access$400(Lcom/join/mgps/activity/SearchHintActivity;)Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickSearchRecommend:Lcom/papa/sim/statistic/Event;

    .line 50
    .line 51
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 52
    .line 53
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 54
    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, ""

    .line 65
    .line 66
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v2, p1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
