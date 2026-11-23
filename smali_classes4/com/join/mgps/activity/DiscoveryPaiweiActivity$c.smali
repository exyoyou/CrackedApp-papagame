.class Lcom/join/mgps/activity/DiscoveryPaiweiActivity$c;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


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
    iput-object p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$c;->a:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$c;->a:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->rvGame:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$c;->a:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->access$200(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$c;->a:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->access$200(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0, p1}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;->r(Lcom/join/mgps/activity/DiscoveryPaiweiActivity$f;I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method
