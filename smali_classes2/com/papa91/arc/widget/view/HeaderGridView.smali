.class public Lcom/papa91/arc/widget/view/HeaderGridView;
.super Landroid/widget/GridView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/widget/view/HeaderGridView$HeaderViewGridAdapter;,
        Lcom/papa91/arc/widget/view/HeaderGridView$FixedViewInfo;,
        Lcom/papa91/arc/widget/view/HeaderGridView$FullWidthFixedViewLayout;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HeaderGridView"


# instance fields
.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/papa91/arc/widget/view/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/widget/view/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/widget/view/HeaderGridView;->initHeaderGridView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/widget/view/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 6
    invoke-direct {p0}, Lcom/papa91/arc/widget/view/HeaderGridView;->initHeaderGridView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/widget/view/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 9
    invoke-direct {p0}, Lcom/papa91/arc/widget/view/HeaderGridView;->initHeaderGridView()V

    return-void
.end method

.method private initHeaderGridView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-super {p0, v0}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/papa91/arc/widget/view/HeaderGridView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    check-cast v2, Lcom/papa91/arc/widget/view/HeaderGridView$FixedViewInfo;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/papa91/arc/widget/view/HeaderGridView$FixedViewInfo;->view:Landroid/view/View;

    .line 15
    .line 16
    if-ne v2, p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0, p1, v0, v1}, Lcom/papa91/arc/widget/view/HeaderGridView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/papa91/arc/widget/view/HeaderGridView$HeaderViewGridAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    new-instance v1, Lcom/papa91/arc/widget/view/HeaderGridView$FixedViewInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/papa91/arc/widget/view/HeaderGridView$FixedViewInfo;-><init>(Lcom/papa91/arc/widget/view/HeaderGridView$1;)V

    .line 5
    new-instance v2, Lcom/papa91/arc/widget/view/HeaderGridView$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/papa91/arc/widget/view/HeaderGridView$FullWidthFixedViewLayout;-><init>(Lcom/papa91/arc/widget/view/HeaderGridView;Landroid/content/Context;)V

    .line 6
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7
    iput-object p1, v1, Lcom/papa91/arc/widget/view/HeaderGridView$FixedViewInfo;->view:Landroid/view/View;

    .line 8
    iput-object v2, v1, Lcom/papa91/arc/widget/view/HeaderGridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 9
    iput-object p2, v1, Lcom/papa91/arc/widget/view/HeaderGridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 10
    iput-boolean p3, v1, Lcom/papa91/arc/widget/view/HeaderGridView$FixedViewInfo;->isSelectable:Z

    .line 11
    iget-object p1, p0, Lcom/papa91/arc/widget/view/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_2

    .line 12
    check-cast v0, Lcom/papa91/arc/widget/view/HeaderGridView$HeaderViewGridAdapter;

    invoke-virtual {v0}, Lcom/papa91/arc/widget/view/HeaderGridView$HeaderViewGridAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public getHeaderViewCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/view/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    instance-of p2, p1, Lcom/papa91/arc/widget/view/HeaderGridView$HeaderViewGridAdapter;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    check-cast p1, Lcom/papa91/arc/widget/view/HeaderGridView$HeaderViewGridAdapter;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1, p2}, Lcom/papa91/arc/widget/view/HeaderGridView$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/view/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/papa91/arc/widget/view/HeaderGridView$HeaderViewGridAdapter;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/papa91/arc/widget/view/HeaderGridView$HeaderViewGridAdapter;->removeHeader(Landroid/view/View;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/widget/view/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p0, p1, v0}, Lcom/papa91/arc/widget/view/HeaderGridView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return v1
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/papa91/arc/widget/view/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/papa91/arc/widget/view/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    new-instance v0, Lcom/papa91/arc/widget/view/HeaderGridView$HeaderViewGridAdapter;

    iget-object v1, p0, Lcom/papa91/arc/widget/view/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p1}, Lcom/papa91/arc/widget/view/HeaderGridView$HeaderViewGridAdapter;-><init>(Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/papa91/arc/widget/view/HeaderGridView$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 6
    :cond_0
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 0

    return-void
.end method
