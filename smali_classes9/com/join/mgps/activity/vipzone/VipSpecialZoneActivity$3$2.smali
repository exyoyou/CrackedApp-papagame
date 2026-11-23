.class Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;

.field final synthetic val$intentDateBean:Lcom/join/mgps/Util/IntentDateBean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;Lcom/join/mgps/Util/IntentDateBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$intentDateBean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3$2;->val$intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

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
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$3$2;->val$intentDateBean:Lcom/join/mgps/Util/IntentDateBean;

    .line 12
    .line 13
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
