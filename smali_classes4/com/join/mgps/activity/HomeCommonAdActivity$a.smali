.class Lcom/join/mgps/activity/HomeCommonAdActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HomeCommonAdActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/HomeCommonAdActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HomeCommonAdActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/HomeCommonAdActivity$a;->b:Lcom/join/mgps/activity/HomeCommonAdActivity;

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
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/HomeCommonAdActivity$a;->b:Lcom/join/mgps/activity/HomeCommonAdActivity;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/join/mgps/activity/HomeCommonAdActivity;->commonGameInfoBean:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/HomeCommonAdActivity$a;->b:Lcom/join/mgps/activity/HomeCommonAdActivity;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v0, Lcom/papa/sim/statistic/Event;->wfAdUpTipsClick:Lcom/papa/sim/statistic/Event;

    .line 23
    .line 24
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 25
    .line 26
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/HomeCommonAdActivity$a;->b:Lcom/join/mgps/activity/HomeCommonAdActivity;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
