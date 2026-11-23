.class public Lcom/join/mgps/recycler/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;)Lcom/join/mgps/recycler/LoadingFooter$State;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recyclerView"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    instance-of v0, p0, Lcom/join/mgps/recycler/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p0, Lcom/join/mgps/recycler/a;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getFooterViewsCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->c()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/join/mgps/recycler/LoadingFooter;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/recycler/LoadingFooter;->getState()Lcom/join/mgps/recycler/LoadingFooter$State;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    sget-object p0, Lcom/join/mgps/recycler/LoadingFooter$State;->Normal:Lcom/join/mgps/recycler/LoadingFooter$State;

    .line 31
    .line 32
    return-object p0
.end method

.method public static b(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;ILcom/join/mgps/recycler/LoadingFooter$State;Landroid/view/View$OnClickListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "recyclerView",
            "pageSize",
            "state",
            "errorListener"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_6

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_6

    .line 15
    .line 16
    instance-of v1, v0, Lcom/join/mgps/recycler/a;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    check-cast v0, Lcom/join/mgps/recycler/a;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/recycler/a;->e()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-ge v1, p2, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/recycler/a;->getFooterViewsCount()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-lez p2, :cond_4

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/recycler/a;->c()Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Lcom/join/mgps/recycler/LoadingFooter;

    .line 45
    .line 46
    invoke-virtual {p0, p3}, Lcom/join/mgps/recycler/LoadingFooter;->setState(Lcom/join/mgps/recycler/LoadingFooter$State;)V

    .line 47
    .line 48
    .line 49
    sget-object p2, Lcom/join/mgps/recycler/LoadingFooter$State;->NetWorkError:Lcom/join/mgps/recycler/LoadingFooter$State;

    .line 50
    .line 51
    if-ne p3, p2, :cond_3

    .line 52
    .line 53
    invoke-virtual {p0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/recycler/a;->getItemCount()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    add-int/lit8 p0, p0, -0x1

    .line 61
    .line 62
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    new-instance p2, Lcom/join/mgps/recycler/LoadingFooter;

    .line 67
    .line 68
    invoke-direct {p2, p0}, Lcom/join/mgps/recycler/LoadingFooter;-><init>(Landroid/content/Context;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p3}, Lcom/join/mgps/recycler/LoadingFooter;->setState(Lcom/join/mgps/recycler/LoadingFooter$State;)V

    .line 72
    .line 73
    .line 74
    sget-object p0, Lcom/join/mgps/recycler/LoadingFooter$State;->NetWorkError:Lcom/join/mgps/recycler/LoadingFooter$State;

    .line 75
    .line 76
    if-ne p3, p0, :cond_5

    .line 77
    .line 78
    invoke-virtual {p2, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    :cond_5
    invoke-virtual {v0, p2}, Lcom/join/mgps/recycler/a;->a(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/join/mgps/recycler/a;->getItemCount()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    add-int/lit8 p0, p0, -0x1

    .line 89
    .line 90
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 91
    .line 92
    .line 93
    :cond_6
    :goto_0
    return-void
.end method

.method public static c(Landroidx/recyclerview/widget/RecyclerView;Lcom/join/mgps/recycler/LoadingFooter$State;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "state"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    instance-of v0, p0, Lcom/join/mgps/recycler/a;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p0, Lcom/join/mgps/recycler/a;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->getFooterViewsCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/recycler/a;->c()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Lcom/join/mgps/recycler/LoadingFooter;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/join/mgps/recycler/LoadingFooter;->setState(Lcom/join/mgps/recycler/LoadingFooter$State;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
