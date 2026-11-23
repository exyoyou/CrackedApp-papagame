.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/ScratchView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->onBindViewHolder(Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

.field final synthetic val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;Lcom/join/mgps/activity/vipzone/bean/Luckbean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$luckbean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$1;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$1;->val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onScratch()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$1;->val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$1;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 12
    .line 13
    iget-boolean v1, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->isstruckting:Z

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iput-boolean v1, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->isstruckting:Z

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->access$100(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
