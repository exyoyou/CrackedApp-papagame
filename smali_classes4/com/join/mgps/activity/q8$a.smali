.class Lcom/join/mgps/activity/q8$a;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


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
    iput-object p1, p0, Lcom/join/mgps/activity/q8$a;->a:Lcom/join/mgps/activity/q8;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/join/mgps/activity/q8$a;->a:Lcom/join/mgps/activity/q8;

    .line 2
    .line 3
    iget-object p3, p3, Lcom/join/mgps/activity/q8;->g:Lcom/google/android/material/tabs/TabLayout;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setScrollPosition(IFZZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

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
    iget-object v0, p0, Lcom/join/mgps/activity/q8$a;->a:Lcom/join/mgps/activity/q8;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/join/mgps/activity/q8;->Q(Lcom/join/mgps/activity/q8;I)I

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/q8$a;->a:Lcom/join/mgps/activity/q8;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/activity/q8;->g:Lcom/google/android/material/tabs/TabLayout;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/q8$a;->a:Lcom/join/mgps/activity/q8;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/join/mgps/activity/q8;->g:Lcom/google/android/material/tabs/TabLayout;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->r()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
