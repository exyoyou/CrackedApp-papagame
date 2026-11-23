.class public Lin/srain/cube/views/GridViewWithHeaderAndFooter;
.super Landroid/widget/GridView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;,
        Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;,
        Lin/srain/cube/views/GridViewWithHeaderAndFooter$c;,
        Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;
    }
.end annotation


# static fields
.field public static o:Z = false

.field private static final p:Ljava/lang/String; = "GridViewHeaderAndFooter"


# instance fields
.field private b:Landroid/widget/AdapterView$OnItemClickListener;

.field private c:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private d:I

.field private e:Landroid/view/View;

.field private f:I

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/ListAdapter;

.field private j:Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;

.field private k:F

.field private l:F

.field private m:F

.field private n:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->d:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->e:Landroid/view/View;

    .line 4
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:I

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->h:Ljava/util/ArrayList;

    .line 7
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->d:I

    const/4 p2, 0x0

    .line 10
    iput-object p2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->e:Landroid/view/View;

    .line 11
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:I

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->h:Ljava/util/ArrayList;

    .line 14
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->i()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->d:I

    const/4 p2, 0x0

    .line 17
    iput-object p2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->e:Landroid/view/View;

    .line 18
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:I

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->h:Ljava/util/ArrayList;

    .line 21
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->i()V

    return-void
.end method

.method static synthetic a(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic c(Lin/srain/cube/views/GridViewWithHeaderAndFooter;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->c:Landroid/widget/AdapterView$OnItemLongClickListener;

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

.method private getItemClickHandler()Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;
    .locals 2

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->j:Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;-><init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter;Lin/srain/cube/views/GridViewWithHeaderAndFooter$a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->j:Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->j:Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;

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

.method private i()V
    .locals 0

    .line 1
    return-void
.end method

.method private k(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "where"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;",
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
    check-cast v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;

    .line 13
    .line 14
    iget-object v2, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->a:Landroid/view/View;

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
.method public d(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->e(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "data",
            "isSelectable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    instance-of v1, v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string p2, "Cannot add header view to grid -- setAdapter has already been called."

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-direct {v2, v3}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;-><init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter$a;)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lin/srain/cube/views/GridViewWithHeaderAndFooter$c;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-direct {v3, p0, v4}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$c;-><init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter;Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    .line 43
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 44
    .line 45
    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 46
    .line 47
    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    .line 54
    .line 55
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    .line 57
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    .line 59
    invoke-direct {v4, v5, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->a:Landroid/view/View;

    .line 69
    .line 70
    iput-object v3, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->b:Landroid/view/ViewGroup;

    .line 71
    .line 72
    iput-object p2, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->c:Ljava/lang/Object;

    .line 73
    .line 74
    iput-boolean p3, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->d:Z

    .line 75
    .line 76
    iget-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->h:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    .line 84
    .line 85
    invoke-virtual {v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e()V

    .line 86
    .line 87
    .line 88
    :cond_3
    return-void
.end method

.method public f(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "data",
            "isSelectable"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    instance-of v1, v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string p2, "Cannot add header view to grid -- setAdapter has already been called."

    .line 15
    .line 16
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-direct {v2, v3}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;-><init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter$a;)V

    .line 28
    .line 29
    .line 30
    new-instance v3, Lin/srain/cube/views/GridViewWithHeaderAndFooter$c;

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-direct {v3, p0, v4}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$c;-><init>(Lin/srain/cube/views/GridViewWithHeaderAndFooter;Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    .line 43
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 44
    .line 45
    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 46
    .line 47
    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    .line 52
    .line 53
    new-instance v4, Landroid/widget/AbsListView$LayoutParams;

    .line 54
    .line 55
    iget v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    .line 57
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    .line 59
    invoke-direct {v4, v5, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->a:Landroid/view/View;

    .line 69
    .line 70
    iput-object v3, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->b:Landroid/view/ViewGroup;

    .line 71
    .line 72
    iput-object p2, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->c:Ljava/lang/Object;

    .line 73
    .line 74
    iput-boolean p3, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->d:Z

    .line 75
    .line 76
    iget-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    .line 84
    .line 85
    invoke-virtual {v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e()V

    .line 86
    .line 87
    .line 88
    :cond_3
    return-void
.end method

.method public getFooterViewCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->h:Ljava/util/ArrayList;

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

.method public getHeaderViewCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->i:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRowHeight()I
    .locals 6

    .line 1
    iget v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:I

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
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

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
    iget-object v3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->h:Ljava/util/ArrayList;

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
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getColumnWidthCompatible()I

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
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

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
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->e:Landroid/view/View;

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
    iput-object v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->e:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iput v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:I

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

.method public h(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "row"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;

    .line 10
    .line 11
    iget-object p1, p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->a:Landroid/view/View;

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

.method public j()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->f:I

    .line 3
    .line 4
    return-void
.end method

.method public l(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->h:Ljava/util/ArrayList;

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
    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f(Landroid/view/View;)Z

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
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->h:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p0, p1, v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->k(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return v1
.end method

.method public m(Landroid/view/View;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

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
    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->g(Landroid/view/View;)Z

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
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {p0, p1, v0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->k(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return v1
.end method

.method public n()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public o(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    add-int/lit8 v0, v0, -0x1

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, v0, v1, p1}, Landroid/widget/AbsListView;->smoothScrollToPositionFromTop(III)V

    .line 13
    .line 14
    .line 15
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
    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->e:Landroid/view/View;

    .line 6
    .line 7
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->k:F

    .line 20
    .line 21
    iget v3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->m:F

    .line 22
    .line 23
    sub-float v3, v0, v3

    .line 24
    .line 25
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    add-float/2addr v2, v3

    .line 30
    iput v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->k:F

    .line 31
    .line 32
    iget v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->l:F

    .line 33
    .line 34
    iget v3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->n:F

    .line 35
    .line 36
    sub-float v3, v1, v3

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    add-float/2addr v2, v3

    .line 43
    iput v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->l:F

    .line 44
    .line 45
    iput v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->m:F

    .line 46
    .line 47
    iput v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->n:F

    .line 48
    .line 49
    iget v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->k:F

    .line 50
    .line 51
    cmpl-float v0, v0, v2

    .line 52
    .line 53
    if-lez v0, :cond_2

    .line 54
    .line 55
    const/4 p1, 0x0

    .line 56
    return p1

    .line 57
    :cond_1
    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->l:F

    .line 59
    .line 60
    iput v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->k:F

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->m:F

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->n:F

    .line 73
    .line 74
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    return p1
.end method

.method protected onMeasure(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

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
    instance-of p2, p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    check-cast p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    .line 15
    .line 16
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1, p2}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->h(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getRowHeight()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {p1, p2}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->i(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->i:Landroid/widget/ListAdapter;

    .line 3
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->h:Ljava/util/ArrayList;

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
    new-instance v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    iget-object v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->g:Ljava/util/ArrayList;

    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->h:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 6
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getNumColumnsCompatible()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->h(I)V

    .line 8
    :cond_2
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getRowHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->i(I)V

    .line 9
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    return-void
.end method

.method public setClipChildren(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clipChildren"
        }
    .end annotation

    return-void
.end method

.method public setClipChildrenSupper(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clipChildren"
        }
    .end annotation

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numColumns"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->d:I

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
    instance-of v1, v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->h(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->b:Landroid/widget/AdapterView$OnItemClickListener;

    .line 2
    .line 3
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getItemClickHandler()Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->c:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 2
    .line 3
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->getItemClickHandler()Lin/srain/cube/views/GridViewWithHeaderAndFooter$e;

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
