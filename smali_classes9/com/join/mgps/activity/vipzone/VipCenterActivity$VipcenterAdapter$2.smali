.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/ScratchView$b;


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

.field final synthetic val$holderLuck:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

.field final synthetic val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;Lcom/join/mgps/activity/vipzone/bean/Luckbean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$holderLuck",
            "val$luckbean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$holderLuck:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public complete()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$holderLuck:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ScratchView;->setCanCratch(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$holderLuck:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getCount()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/ScratchView;->setNumber(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$holderLuck:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->delaysetStrcth(Lcom/join/mgps/customview/ScratchView;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$holderLuck:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    .line 36
    .line 37
    const/16 v2, 0x8

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getLastPrize()Lcom/join/mgps/activity/vipzone/bean/PrizeBean;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    new-instance v2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 53
    .line 54
    iget-object v3, v3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 55
    .line 56
    iget-object v3, v3, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    .line 57
    .line 58
    invoke-direct {v2, v3}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;-><init>(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawFinishDialog;->showMydialog(Lcom/join/mgps/activity/vipzone/bean/PrizeBean;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/join/mgps/activity/vipzone/bean/Luckbean;->getCount()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-lez v0, :cond_0

    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$holderLuck:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

    .line 73
    .line 74
    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$2;->val$holderLuck:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipLuckDrawlHolder;->scratch:Lcom/join/mgps/customview/ScratchView;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/join/mgps/customview/ScratchView;->k()V

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void
.end method
