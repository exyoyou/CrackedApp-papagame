.class public Lm/framework/ui/widget/pulltorefresh/ScrollableListView;
.super Landroid/widget/ListView;
.source "SourceFile"

# interfaces
.implements Lm/framework/ui/widget/pulltorefresh/Scrollable;


# instance fields
.field private osListener:Lm/framework/ui/widget/pulltorefresh/OnScrollListener;

.field private pullEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/pulltorefresh/ScrollableListView;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->pullEnable:Z

    .line 2
    .line 3
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setCacheColorHint(I)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lm/framework/ui/widget/pulltorefresh/ScrollableListView$1;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lm/framework/ui/widget/pulltorefresh/ScrollableListView$1;-><init>(Lm/framework/ui/widget/pulltorefresh/ScrollableListView;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->osListener:Lm/framework/ui/widget/pulltorefresh/OnScrollListener;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method protected computeVerticalScrollOffset()I
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->computeVerticalScrollOffset()I

    .line 2
    .line 3
    .line 4
    move-result v6

    .line 5
    iget-object v0, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->osListener:Lm/framework/ui/widget/pulltorefresh/OnScrollListener;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    move-object v1, p0

    .line 13
    move v3, v6

    .line 14
    invoke-interface/range {v0 .. v5}, Lm/framework/ui/widget/pulltorefresh/OnScrollListener;->onScrollChanged(Lm/framework/ui/widget/pulltorefresh/Scrollable;IIII)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return v6
.end method

.method public isReadyToPull()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/framework/ui/widget/pulltorefresh/ScrollableListView;->pullEnable:Z

    .line 2
    .line 3
    return v0
.end method
