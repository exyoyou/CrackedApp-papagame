.class Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->onBindViewHolder(Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

.field final synthetic val$gameInfo:Lcom/join/mgps/dto/GameInfoBean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;Lcom/join/mgps/dto/GameInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$gameInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;->this$1:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;->val$gameInfo:Lcom/join/mgps/dto/GameInfoBean;

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
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Lcom/papa/sim/statistic/Event;->clickSearchRankingGame:Lcom/papa/sim/statistic/Event;

    .line 10
    .line 11
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, ""

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v4, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;->this$1:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

    .line 27
    .line 28
    iget-object v4, v4, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    .line 29
    .line 30
    iget v4, v4, Lcom/join/mgps/activity/search/SearchRankingFragment;->type:I

    .line 31
    .line 32
    add-int/lit8 v4, v4, -0x1

    .line 33
    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;->val$gameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    iget-object v4, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;->this$1:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

    .line 61
    .line 62
    iget-object v4, v4, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    .line 63
    .line 64
    iget v4, v4, Lcom/join/mgps/activity/search/SearchRankingFragment;->type:I

    .line 65
    .line 66
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;->this$1:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

    .line 84
    .line 85
    iget-object p1, p1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/join/mgps/activity/search/SearchRankingFragment;->activity:Lcom/join/mgps/activity/SearchHintActivity;

    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;->val$gameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameInfoBean;->getGame_name()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$1;->val$gameInfo:Lcom/join/mgps/dto/GameInfoBean;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->goSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method
