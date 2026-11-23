.class Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;
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


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->lambda$onClick$1()V

    return-void
.end method

.method public static synthetic b(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->lambda$onClick$0(Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;)V

    return-void
.end method

.method private synthetic lambda$onClick$0(Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;Lcom/join/mgps/activity/vipzone/bean/SpecialTag;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 4
    .line 5
    iput-object p1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag1:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 6
    .line 7
    iput-object p2, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag2:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 8
    .line 9
    iput-object p3, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->tag3:Lcom/join/mgps/activity/vipzone/bean/SpecialTag;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput p1, v0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->page:I

    .line 13
    .line 14
    invoke-static {v0}, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->access$000(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static synthetic lambda$onClick$1()V
    .locals 0

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
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterGames:Lcom/join/mgps/customview/q0;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/join/mgps/customview/q0;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->context:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/join/mgps/customview/q0;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterGames:Lcom/join/mgps/customview/q0;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterGames:Lcom/join/mgps/customview/q0;

    .line 27
    .line 28
    new-instance v0, Lcom/join/mgps/activity/vipzone/e;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/vipzone/e;-><init>(Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/q0;->g(Lcom/join/mgps/customview/q0$f;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterGames:Lcom/join/mgps/customview/q0;

    .line 41
    .line 42
    new-instance v0, Lcom/join/mgps/activity/vipzone/f;

    .line 43
    .line 44
    invoke-direct {v0}, Lcom/join/mgps/activity/vipzone/f;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterGames:Lcom/join/mgps/customview/q0;

    .line 55
    .line 56
    const/4 v0, -0x1

    .line 57
    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 58
    .line 59
    .line 60
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter$2;->this$1:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity$SpecialAdapter;->this$0:Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;

    .line 63
    .line 64
    iget-object v0, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->filterGames:Lcom/join/mgps/customview/q0;

    .line 65
    .line 66
    iget-object v1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->recyclerView:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/join/mgps/activity/vipzone/VipSpecialZoneActivity;->screening_condition:Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;

    .line 69
    .line 70
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/customview/q0;->h(Landroid/view/View;Lcom/join/mgps/activity/vipzone/bean/ScreeningConditionBean;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
