.class Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;


# direct methods
.method constructor <init>(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->a(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)Lcom/dingmouren/layoutmanagergroup/viewpager/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->a(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)Lcom/dingmouren/layoutmanagergroup/viewpager/a;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Lcom/dingmouren/layoutmanagergroup/viewpager/a;->b()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->b(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->a(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)Lcom/dingmouren/layoutmanagergroup/viewpager/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->a(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)Lcom/dingmouren/layoutmanagergroup/viewpager/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-interface {v0, v1, p1}, Lcom/dingmouren/layoutmanagergroup/viewpager/a;->a(ZI)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->a(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)Lcom/dingmouren/layoutmanagergroup/viewpager/a;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;->a(Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;)Lcom/dingmouren/layoutmanagergroup/viewpager/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager$a;->a:Lcom/dingmouren/layoutmanagergroup/viewpager/ViewPagerLayoutManager;

    .line 49
    .line 50
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-interface {v0, v1, p1}, Lcom/dingmouren/layoutmanagergroup/viewpager/a;->a(ZI)V

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_0
    return-void
.end method
