.class public Lcom/papa91/arc/widget/listview/GridViewSupport;
.super Landroid/widget/GridView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;,
        Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;,
        Lcom/papa91/arc/widget/listview/GridViewSupport$FullWidthFixedViewLayout;,
        Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;
    }
.end annotation


# instance fields
.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mItemClickHandler:Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;

.field private mNumColumns:I

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnItemSelectedListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/AdapterView$OnItemSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mOnScrollListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalAdapter:Landroid/widget/ListAdapter;

.field private mRowHeight:I

.field private mViewForMeasureRowHeight:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mNumColumns:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 4
    iput p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mRowHeight:I

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnScrollListenerList:Ljava/util/ArrayList;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnItemSelectedListenerList:Ljava/util/ArrayList;

    .line 9
    new-instance p1, Lcom/papa91/arc/widget/listview/GridViewSupport$1;

    invoke-direct {p1, p0}, Lcom/papa91/arc/widget/listview/GridViewSupport$1;-><init>(Lcom/papa91/arc/widget/listview/GridViewSupport;)V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 10
    new-instance p1, Lcom/papa91/arc/widget/listview/GridViewSupport$2;

    invoke-direct {p1, p0}, Lcom/papa91/arc/widget/listview/GridViewSupport$2;-><init>(Lcom/papa91/arc/widget/listview/GridViewSupport;)V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 11
    invoke-direct {p0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->initHeaderGridView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mNumColumns:I

    const/4 p2, 0x0

    .line 14
    iput-object p2, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 15
    iput p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mRowHeight:I

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 17
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnScrollListenerList:Ljava/util/ArrayList;

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnItemSelectedListenerList:Ljava/util/ArrayList;

    .line 20
    new-instance p1, Lcom/papa91/arc/widget/listview/GridViewSupport$1;

    invoke-direct {p1, p0}, Lcom/papa91/arc/widget/listview/GridViewSupport$1;-><init>(Lcom/papa91/arc/widget/listview/GridViewSupport;)V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 21
    new-instance p1, Lcom/papa91/arc/widget/listview/GridViewSupport$2;

    invoke-direct {p1, p0}, Lcom/papa91/arc/widget/listview/GridViewSupport$2;-><init>(Lcom/papa91/arc/widget/listview/GridViewSupport;)V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 22
    invoke-direct {p0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->initHeaderGridView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 24
    iput p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mNumColumns:I

    const/4 p2, 0x0

    .line 25
    iput-object p2, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 26
    iput p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mRowHeight:I

    .line 27
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 29
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnScrollListenerList:Ljava/util/ArrayList;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnItemSelectedListenerList:Ljava/util/ArrayList;

    .line 31
    new-instance p1, Lcom/papa91/arc/widget/listview/GridViewSupport$1;

    invoke-direct {p1, p0}, Lcom/papa91/arc/widget/listview/GridViewSupport$1;-><init>(Lcom/papa91/arc/widget/listview/GridViewSupport;)V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 32
    new-instance p1, Lcom/papa91/arc/widget/listview/GridViewSupport$2;

    invoke-direct {p1, p0}, Lcom/papa91/arc/widget/listview/GridViewSupport$2;-><init>(Lcom/papa91/arc/widget/listview/GridViewSupport;)V

    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 33
    invoke-direct {p0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->initHeaderGridView()V

    return-void
.end method

.method static synthetic access$200(Lcom/papa91/arc/widget/listview/GridViewSupport;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/papa91/arc/widget/listview/GridViewSupport;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->getNumColumnsCompatible()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$400(Lcom/papa91/arc/widget/listview/GridViewSupport;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/papa91/arc/widget/listview/GridViewSupport;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnScrollListenerList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/papa91/arc/widget/listview/GridViewSupport;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnItemSelectedListenerList:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method private getColumnWidthCompatible()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->getColumnWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private getItemClickHandler()Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mItemClickHandler:Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;-><init>(Lcom/papa91/arc/widget/listview/GridViewSupport;Lcom/papa91/arc/widget/listview/GridViewSupport$1;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mItemClickHandler:Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mItemClickHandler:Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;

    .line 14
    .line 15
    return-object v0
.end method

.method private getNumColumnsCompatible()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->getNumColumns()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private initHeaderGridView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;",
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
    check-cast v2, Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;->view:Landroid/view/View;

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
.method public addFooterView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/papa91/arc/widget/listview/GridViewSupport;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 7

    .line 2
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;-><init>(Lcom/papa91/arc/widget/listview/GridViewSupport$1;)V

    .line 7
    new-instance v3, Lcom/papa91/arc/widget/listview/GridViewSupport$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/papa91/arc/widget/listview/GridViewSupport$FullWidthFixedViewLayout;-><init>(Lcom/papa91/arc/widget/listview/GridViewSupport;Landroid/content/Context;)V

    if-eqz v1, :cond_2

    .line 8
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_2
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    iput-object p1, v2, Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;->view:Landroid/view/View;

    .line 12
    iput-object v3, v2, Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 13
    iput-object p2, v2, Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;->data:Ljava/lang/Object;

    .line 14
    iput-boolean p3, v2, Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;->isSelectable:Z

    .line 15
    iget-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    .line 16
    check-cast v0, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;

    invoke-virtual {v0}, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/papa91/arc/widget/listview/GridViewSupport;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 7

    .line 2
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;-><init>(Lcom/papa91/arc/widget/listview/GridViewSupport$1;)V

    .line 7
    new-instance v3, Lcom/papa91/arc/widget/listview/GridViewSupport$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/papa91/arc/widget/listview/GridViewSupport$FullWidthFixedViewLayout;-><init>(Lcom/papa91/arc/widget/listview/GridViewSupport;Landroid/content/Context;)V

    if-eqz v1, :cond_2

    .line 8
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v4, v5, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_2
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 11
    iput-object p1, v2, Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;->view:Landroid/view/View;

    .line 12
    iput-object v3, v2, Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 13
    iput-object p2, v2, Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;->data:Ljava/lang/Object;

    .line 14
    iput-boolean p3, v2, Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;->isSelectable:Z

    .line 15
    iget-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    .line 16
    check-cast v0, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;

    invoke-virtual {v0}, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public addOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnItemSelectedListenerList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnItemSelectedListenerList:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnScrollListenerList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnScrollListenerList:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public getFooterViewCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mFooterViewInfos:Ljava/util/ArrayList;

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

.method public getHeaderHeight(I)I
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/papa91/arc/widget/listview/GridViewSupport$FixedViewInfo;->view:Landroid/view/View;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return p1
.end method

.method public getHeaderViewCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mHeaderViewInfos:Ljava/util/ArrayList;

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

.method public getHorizontalSpacing()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/widget/GridView;->getHorizontalSpacing()I

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    return v0
.end method

.method public getOriginalAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOriginalAdapter:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRowHeight()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mRowHeight:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->getNumColumnsCompatible()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v3, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iget-object v4, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    add-int/2addr v3, v4

    .line 34
    mul-int v3, v3, v1

    .line 35
    .line 36
    if-gt v0, v3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-direct {p0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->getColumnWidthCompatible()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    iget-object v4, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    mul-int v1, v1, v4

    .line 54
    .line 55
    iget-object v4, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 56
    .line 57
    invoke-interface {v3, v1, v4, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 66
    .line 67
    const/4 v4, 0x0

    .line 68
    if-nez v3, :cond_2

    .line 69
    .line 70
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    .line 71
    .line 72
    const/4 v5, -0x2

    .line 73
    invoke-direct {v3, v2, v5, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    iget v5, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    .line 84
    .line 85
    invoke-static {v2, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    const/high16 v5, 0x40000000    # 2.0f

    .line 90
    .line 91
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iget v3, v3, Landroid/widget/AbsListView$LayoutParams;->width:I

    .line 96
    .line 97
    invoke-static {v0, v4, v3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-virtual {v1, v0, v2}, Landroid/view/View;->measure(II)V

    .line 102
    .line 103
    .line 104
    iput-object v1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iput v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mRowHeight:I

    .line 111
    .line 112
    return v0

    .line 113
    :cond_3
    :goto_0
    return v2
.end method

.method public getVerticalSpacing()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Landroid/widget/GridView;->getVerticalSpacing()I

    .line 2
    .line 3
    .line 4
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    return v0
.end method

.method public invalidateRowHeight()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mRowHeight:I

    .line 3
    .line 4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/GridView;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mViewForMeasureRowHeight:Landroid/view/View;

    .line 6
    .line 7
    return-void
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
    instance-of p2, p1, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    check-cast p1, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->getNumColumnsCompatible()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1, p2}, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->getRowHeight()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {p1, p2}, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;->setRowHeight(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mFooterViewInfos:Ljava/util/ArrayList;

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
    check-cast v0, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;->removeFooter(Landroid/view/View;)Z

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
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p0, p1, v0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return v1
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mHeaderViewInfos:Ljava/util/ArrayList;

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
    check-cast v0, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;->removeHeader(Landroid/view/View;)Z

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
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p0, p1, v0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return v1
.end method

.method public removeOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnItemSelectedListenerList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnScrollListenerList:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/papa91/arc/widget/listview/GridViewSupport;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .line 2
    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOriginalAdapter:Landroid/widget/ListAdapter;

    .line 3
    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;

    iget-object v1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 6
    invoke-direct {p0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->getNumColumnsCompatible()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->getRowHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;->setRowHeight(I)V

    .line 9
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 0

    return-void
.end method

.method public setClipChildrenSupper(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public setNumColumns(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mNumColumns:I

    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    instance-of v1, v0, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/papa91/arc/widget/listview/GridViewSupport$HeaderViewGridAdapter;->setNumColumns(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->getItemClickHandler()Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-super {p0, p1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/widget/listview/GridViewSupport;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/papa91/arc/widget/listview/GridViewSupport;->getItemClickHandler()Lcom/papa91/arc/widget/listview/GridViewSupport$ItemClickHandler;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-super {p0, p1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public tryToScrollToBottomSmoothly()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    return-void
.end method

.method public tryToScrollToBottomSmoothly(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 3
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    return-void
.end method
