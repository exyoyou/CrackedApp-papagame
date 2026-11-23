.class Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$2;
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

.field final synthetic val$gameInfo:Lcom/join/mgps/dto/CommonGameInfoBean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;Lcom/join/mgps/dto/CommonGameInfoBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$2;->this$1:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$2;->val$gameInfo:Lcom/join/mgps/dto/CommonGameInfoBean;

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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$2;->this$1:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/join/mgps/activity/search/SearchRankingFragment;->activity:Lcom/join/mgps/activity/SearchHintActivity;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$2;->val$gameInfo:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$2;->this$1:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/join/mgps/activity/search/SearchRankingFragment;->hotAdInfo:Lcom/join/mgps/activity/search/SearchHotAdInfo;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/activity/search/SearchHotAdInfo;->getJump_ad_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/papa/sim/statistic/Data;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$2;->this$1:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

    .line 48
    .line 49
    iget-object v1, v1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    .line 50
    .line 51
    iget-object v1, v1, Lcom/join/mgps/activity/search/SearchRankingFragment;->hotAdInfo:Lcom/join/mgps/activity/search/SearchHotAdInfo;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/join/mgps/activity/search/SearchHotAdInfo;->getJump_ad_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter$2;->this$1:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;->this$0:Lcom/join/mgps/activity/search/SearchRankingFragment;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/join/mgps/activity/search/SearchRankingFragment;->activity:Lcom/join/mgps/activity/SearchHintActivity;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    sget-object v2, Lcom/papa/sim/statistic/Event;->hotSearchWordClick:Lcom/papa/sim/statistic/Event;

    .line 79
    .line 80
    invoke-virtual {v1, v2, p1, v0}, Lcom/papa/sim/statistic/t;->W1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
