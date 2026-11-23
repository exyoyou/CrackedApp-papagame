.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;

.field final synthetic val$recomDatabean:Lcom/join/mgps/dto/RecomDatabean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;Lcom/join/mgps/dto/RecomDatabean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$recomDatabean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter$1;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter$1;->val$recomDatabean:Lcom/join/mgps/dto/RecomDatabean;

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
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter$1;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$CollotionHlistAdapter$1;->val$recomDatabean:Lcom/join/mgps/dto/RecomDatabean;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/join/mgps/dto/AppBeanMain;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
