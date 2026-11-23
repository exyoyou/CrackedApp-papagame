.class Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2;->setData(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2;

.field final synthetic val$sub:Lcom/join/mgps/dto/CommonGameInfoBean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$sub"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2$1;->this$1:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2$1;->val$sub:Lcom/join/mgps/dto/CommonGameInfoBean;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2$1;->val$sub:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "4"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2$1;->this$1:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$100(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2$1;->this$1:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2;->this$0:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->access$100(Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;)Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter$ViewHolder2$1;->val$sub:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method
