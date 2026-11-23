.class Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->onBindViewHolder(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$VipHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

.field final synthetic val$vipCenterGameListitem:Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$vipCenterGameListitem"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$1;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$1;->val$vipCenterGameListitem:Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;

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
    new-instance p1, Lcom/join/mgps/Util/IntentDateBean;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$1;->val$vipCenterGameListitem:Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;->getTpl_type()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setTpl_type(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$1;->val$vipCenterGameListitem:Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/SpecialZoneColloctionbean;->getCollection_id()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setCrc_link_type_val(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$1;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
