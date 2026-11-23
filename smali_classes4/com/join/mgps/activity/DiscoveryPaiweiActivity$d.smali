.class Lcom/join/mgps/activity/DiscoveryPaiweiActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$d;->a:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/join/mgps/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "adapter",
            "view",
            "position"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$d;->a:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->access$200(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1, p3}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;->r(Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$d;->a:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->vpRank:Landroidx/viewpager2/widget/ViewPager2;

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    invoke-virtual {p1, p3, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
