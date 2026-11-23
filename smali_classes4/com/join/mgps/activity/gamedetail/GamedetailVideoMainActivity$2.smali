.class Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->updateNewUi(Lcom/join/kotlin/discount/model/bean/GameDetailBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$2;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$2;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->access$200(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$2;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->access$200(Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity$2;->this$0:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->viewpager:Landroidx/viewpager2/widget/ViewPager2;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    return-void
.end method
