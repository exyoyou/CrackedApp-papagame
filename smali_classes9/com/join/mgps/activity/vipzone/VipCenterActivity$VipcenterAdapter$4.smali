.class Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$4;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$4;->val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

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
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$4;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->access$300(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$4;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$4;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Lcom/join/android/app/common/utils/q;->k(Landroid/app/Activity;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    div-int/lit8 p1, p1, 0x2

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$4;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 33
    .line 34
    new-instance v2, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 35
    .line 36
    iget-object v3, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$4;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 39
    .line 40
    iget-object v3, v3, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->context:Landroid/content/Context;

    .line 41
    .line 42
    invoke-direct {v2, v3, v0, p1}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;-><init>(Landroid/content/Context;II)V

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v2}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->access$302(Lcom/join/mgps/activity/vipzone/VipCenterActivity;Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$4;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 49
    .line 50
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->access$300(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const/4 v1, -0x1

    .line 57
    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$4;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->access$300(Lcom/join/mgps/activity/vipzone/VipCenterActivity;)Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$4;->this$1:Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipCenterActivity;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipCenterActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/join/mgps/activity/vipzone/VipCenterActivity$VipcenterAdapter$4;->val$luckbean:Lcom/join/mgps/activity/vipzone/bean/Luckbean;

    .line 75
    .line 76
    invoke-virtual {p1, v1, v2, v0}, Lcom/join/mgps/activity/vipzone/dialog/LuckDrawBasPopupWindow;->show(Landroid/view/View;Lcom/join/mgps/activity/vipzone/bean/Luckbean;I)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
