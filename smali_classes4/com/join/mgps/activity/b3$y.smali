.class public Lcom/join/mgps/activity/b3$y;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/b3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "y"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/b3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/b3;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "position",
            "object"
        }
    .end annotation

    .line 1
    check-cast p3, Landroid/view/View;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/b3;->c0(Lcom/join/mgps/activity/b3;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getPageWidth(I)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/b3;->c0(Lcom/join/mgps/activity/b3;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/join/mgps/activity/b3$z;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/activity/b3$z;->a(Lcom/join/mgps/activity/b3$z;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 20
    .line 21
    iget-boolean v1, v0, Lcom/join/mgps/activity/b3;->L1:Z

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/activity/b3;->c0(Lcom/join/mgps/activity/b3;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/join/mgps/activity/b3$z;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/join/mgps/activity/b3$z;->b(Lcom/join/mgps/activity/b3$z;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-ne v0, v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/join/mgps/activity/b3;->c0(Lcom/join/mgps/activity/b3;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Lcom/join/mgps/activity/b3$z;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/join/mgps/activity/b3$z;->b(Lcom/join/mgps/activity/b3$z;)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-ne v0, v2, :cond_1

    .line 60
    .line 61
    const p1, 0x3ea8f5c3    # 0.33f

    .line 62
    .line 63
    .line 64
    return p1

    .line 65
    :cond_1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    return p1

    .line 70
    :cond_2
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 71
    .line 72
    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "container",
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/b3;->c0(Lcom/join/mgps/activity/b3;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/join/mgps/activity/b3$z;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/activity/b3$z;->c(Lcom/join/mgps/activity/b3$z;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/b3$y;->a:Lcom/join/mgps/activity/b3;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/join/mgps/activity/b3;->c0(Lcom/join/mgps/activity/b3;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/join/mgps/activity/b3$z;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/join/mgps/activity/b3$z;->e()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v0, Lcom/join/mgps/activity/b3$y$a;

    .line 37
    .line 38
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/b3$y$a;-><init>(Lcom/join/mgps/activity/b3$y;I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "object"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
