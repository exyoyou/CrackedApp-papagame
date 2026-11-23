.class Lcom/join/mgps/adapter/f6$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/f6;->d0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/widget/ViewPager2;

.field final synthetic b:Lcom/google/android/material/tabs/TabLayout;

.field final synthetic c:Lcom/join/mgps/adapter/f6;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/f6;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$viewpager",
            "val$tablayout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/f6$d;->c:Lcom/join/mgps/adapter/f6;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/f6$d;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/adapter/f6$d;->b:Lcom/google/android/material/tabs/TabLayout;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 2
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
    iget-object v0, p0, Lcom/join/mgps/adapter/f6$d;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/f6$d;->c:Lcom/join/mgps/adapter/f6;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/adapter/f6$d;->b:Lcom/google/android/material/tabs/TabLayout;

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/f6;->S(Lcom/join/mgps/adapter/f6;Lcom/google/android/material/tabs/TabLayout;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 2
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
    iget-object v0, p0, Lcom/join/mgps/adapter/f6$d;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/adapter/f6$d;->c:Lcom/join/mgps/adapter/f6;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/join/mgps/adapter/f6$d;->b:Lcom/google/android/material/tabs/TabLayout;

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lcom/join/mgps/adapter/f6;->S(Lcom/join/mgps/adapter/f6;Lcom/google/android/material/tabs/TabLayout;I)V

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
