.class Lcom/join/mgps/activity/SearchHintActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchHintActivity;->makeFlawLayoutItem(Landroid/content/Context;Lcom/join/mgps/dto/SearchGameZoneBean;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/SearchGameZoneBean;

.field final synthetic c:Lcom/join/mgps/activity/SearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchHintActivity;Lcom/join/mgps/dto/SearchGameZoneBean;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$b;->c:Lcom/join/mgps/activity/SearchHintActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/SearchHintActivity$b;->b:Lcom/join/mgps/dto/SearchGameZoneBean;

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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$b;->b:Lcom/join/mgps/dto/SearchGameZoneBean;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameZoneBean;->getZone_id()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$b;->c:Lcom/join/mgps/activity/SearchHintActivity;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$b;->b:Lcom/join/mgps/dto/SearchGameZoneBean;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameZoneBean;->getZone_name()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->goSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    .line 27
    .line 28
    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x21

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/SearchHintActivity$b;->b:Lcom/join/mgps/dto/SearchGameZoneBean;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameZoneBean;->getZone_id()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/join/mgps/activity/SearchHintActivity$b;->c:Lcom/join/mgps/activity/SearchHintActivity;

    .line 50
    .line 51
    invoke-static {v1}, Lcom/join/mgps/activity/SearchHintActivity;->access$400(Lcom/join/mgps/activity/SearchHintActivity;)Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/SearchHintActivity$b;->c:Lcom/join/mgps/activity/SearchHintActivity;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/join/mgps/activity/SearchHintActivity;->access$400(Lcom/join/mgps/activity/SearchHintActivity;)Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    sget-object v0, Lcom/papa/sim/statistic/Event;->clickSearchRecommend:Lcom/papa/sim/statistic/Event;

    .line 69
    .line 70
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 71
    .line 72
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "0"

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method
