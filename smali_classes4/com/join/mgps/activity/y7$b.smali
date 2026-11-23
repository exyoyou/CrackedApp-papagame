.class Lcom/join/mgps/activity/y7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/base/BaseQuickAdapter$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/y7;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/y7;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/y7;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/y7$b;->a:Lcom/join/mgps/activity/y7;

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
    iget-object p1, p0, Lcom/join/mgps/activity/y7$b;->a:Lcom/join/mgps/activity/y7;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/y7;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eq p1, p3, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/y7$b;->a:Lcom/join/mgps/activity/y7;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/join/mgps/activity/y7;->d:Landroidx/viewpager2/widget/ViewPager2;

    .line 16
    .line 17
    invoke-virtual {p1, p3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/y7$b;->a:Lcom/join/mgps/activity/y7;

    .line 21
    .line 22
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/y7;->Y(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/y7$b;->a:Lcom/join/mgps/activity/y7;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/join/mgps/activity/y7;->P(Lcom/join/mgps/activity/y7;)Lcom/join/mgps/activity/y7$e;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
