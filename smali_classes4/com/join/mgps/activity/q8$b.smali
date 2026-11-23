.class Lcom/join/mgps/activity/q8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/q8;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/q8;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/q8;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/q8$b;->a:Lcom/join/mgps/activity/q8;

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
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/q8$b;->a:Lcom/join/mgps/activity/q8;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/mgps/activity/q8;->h:Landroidx/viewpager2/widget/ViewPager2;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/q8$b;->a:Lcom/join/mgps/activity/q8;

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/join/mgps/activity/q8;->R(Lcom/join/mgps/activity/q8;I)V

    .line 15
    .line 16
    .line 17
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
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/q8$b;->a:Lcom/join/mgps/activity/q8;

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/join/mgps/activity/q8;->R(Lcom/join/mgps/activity/q8;I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/q8$b;->a:Lcom/join/mgps/activity/q8;

    .line 11
    .line 12
    invoke-static {v0, p1}, Lcom/join/mgps/activity/q8;->Q(Lcom/join/mgps/activity/q8;I)I

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/q8$b;->a:Lcom/join/mgps/activity/q8;

    .line 16
    .line 17
    iget-object v0, p1, Lcom/join/mgps/activity/q8;->h:Landroidx/viewpager2/widget/ViewPager2;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/activity/q8;->P(Lcom/join/mgps/activity/q8;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 24
    .line 25
    .line 26
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
