.class Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/srain/cube/views/GridViewWithHeaderAndFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field static final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/database/DataSetObservable;

.field private final c:Landroid/widget/ListAdapter;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:I

.field h:Z

.field private final i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->l:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "headerViewInfos",
            "footViewInfos",
            "adapter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/database/DataSetObservable;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->b:Landroid/database/DataSetObservable;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    iput v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->g:I

    .line 16
    .line 17
    iput-boolean v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->j:Z

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->k:Z

    .line 21
    .line 22
    iput-object p3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 23
    .line 24
    instance-of p3, p3, Landroid/widget/Filterable;

    .line 25
    .line 26
    iput-boolean p3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->i:Z

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    sget-object p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->l:Ljava/util/ArrayList;

    .line 31
    .line 32
    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d:Ljava/util/ArrayList;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d:Ljava/util/ArrayList;

    .line 36
    .line 37
    :goto_0
    if-nez p2, :cond_1

    .line 38
    .line 39
    sget-object p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->l:Ljava/util/ArrayList;

    .line 40
    .line 41
    iput-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e:Ljava/util/ArrayList;

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    iput-object p2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e:Ljava/util/ArrayList;

    .line 45
    .line 46
    :goto_1
    iget-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {p0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->a(Ljava/util/ArrayList;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    iget-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {p0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->a(Ljava/util/ArrayList;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    const/4 v0, 0x0

    .line 64
    :goto_2
    iput-boolean v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->h:Z

    .line 65
    .line 66
    return-void
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "infos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;",
            ">;)Z"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;

    .line 18
    .line 19
    iget-boolean v0, v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->d:Z

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    return p1

    .line 25
    :cond_1
    const/4 p1, 0x1

    .line 26
    return p1
.end method

.method private b()I
    .locals 4

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    mul-float v0, v0, v1

    .line 11
    .line 12
    iget v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 13
    .line 14
    int-to-float v1, v1

    .line 15
    div-float/2addr v0, v1

    .line 16
    float-to-double v0, v0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 22
    .line 23
    int-to-double v2, v2

    .line 24
    mul-double v0, v0, v2

    .line 25
    .line 26
    double-to-int v0, v0

    .line 27
    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->h:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e:Ljava/util/ArrayList;

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

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d:Ljava/util/ArrayList;

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

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->b:Landroid/database/DataSetObservable;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Landroid/view/View;)Z
    .locals 3
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
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;

    .line 18
    .line 19
    iget-object v2, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->a:Landroid/view/View;

    .line 20
    .line 21
    if-ne v2, p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->a(Ljava/util/ArrayList;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v1, 0x1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {p0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->a(Ljava/util/ArrayList;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    :cond_0
    iput-boolean v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->h:Z

    .line 47
    .line 48
    iget-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->b:Landroid/database/DataSetObservable;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 51
    .line 52
    .line 53
    return v1

    .line 54
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    return v0
.end method

.method public g(Landroid/view/View;)Z
    .locals 3
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
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;

    .line 18
    .line 19
    iget-object v2, v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->a:Landroid/view/View;

    .line 20
    .line 21
    if-ne v2, p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->a(Ljava/util/ArrayList;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const/4 v1, 0x1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-direct {p0, p1}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->a(Ljava/util/ArrayList;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_0

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    :cond_0
    iput-boolean v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->h:Z

    .line 47
    .line 48
    iget-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->b:Landroid/database/DataSetObservable;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 51
    .line 52
    .line 53
    return v1

    .line 54
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    return v0
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    iget v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 15
    .line 16
    mul-int v0, v0, v1

    .line 17
    .line 18
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->b()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    return v0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/2addr v0, v1

    .line 33
    iget v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 34
    .line 35
    mul-int v0, v0, v1

    .line 36
    .line 37
    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 6
    .line 7
    check-cast v0, Landroid/widget/Filterable;

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
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
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 6
    .line 7
    mul-int v0, v0, v1

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-ge p1, v0, :cond_1

    .line 11
    .line 12
    rem-int v0, p1, v1

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d:Ljava/util/ArrayList;

    .line 17
    .line 18
    div-int/2addr p1, v1

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;

    .line 24
    .line 25
    iget-object p1, p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->c:Ljava/lang/Object;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_0
    return-object v2

    .line 29
    :cond_1
    sub-int/2addr p1, v0

    .line 30
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 31
    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->b()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-ge p1, v0, :cond_4

    .line 39
    .line 40
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 41
    .line 42
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-ge p1, v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 49
    .line 50
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1

    .line 55
    :cond_2
    return-object v2

    .line 56
    :cond_3
    const/4 v0, 0x0

    .line 57
    :cond_4
    sub-int/2addr p1, v0

    .line 58
    iget v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 59
    .line 60
    rem-int v0, p1, v0

    .line 61
    .line 62
    if-nez v0, :cond_5

    .line 63
    .line 64
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;

    .line 71
    .line 72
    iget-object p1, p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->c:Ljava/lang/Object;

    .line 73
    .line 74
    return-object p1

    .line 75
    :cond_5
    return-object v2
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 6
    .line 7
    mul-int v0, v0, v1

    .line 8
    .line 9
    iget-object v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    if-lt p1, v0, :cond_0

    .line 14
    .line 15
    sub-int/2addr p1, v0

    .line 16
    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ge p1, v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    return-wide v0

    .line 29
    :cond_0
    const-wide/16 v0, -0x1

    .line 30
    .line 31
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 6
    .line 7
    mul-int v0, v0, v1

    .line 8
    .line 9
    iget-object v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {v1}, Landroid/widget/Adapter;->getViewTypeCount()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    sub-int/2addr v1, v3

    .line 22
    :goto_0
    iget-boolean v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->j:Z

    .line 23
    .line 24
    const/4 v5, -0x2

    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    if-ge p1, v0, :cond_2

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    iget-boolean v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->k:Z

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    add-int/2addr v4, v1

    .line 42
    iget-object v5, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    add-int/2addr v4, v5

    .line 49
    add-int/2addr v4, v3

    .line 50
    add-int/lit8 v5, v4, 0x1

    .line 51
    .line 52
    :cond_1
    iget v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 53
    .line 54
    rem-int v6, p1, v4

    .line 55
    .line 56
    if-eqz v6, :cond_2

    .line 57
    .line 58
    div-int v4, p1, v4

    .line 59
    .line 60
    add-int/2addr v4, v3

    .line 61
    add-int v5, v1, v4

    .line 62
    .line 63
    :cond_2
    sub-int v0, p1, v0

    .line 64
    .line 65
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 66
    .line 67
    if-eqz v4, :cond_4

    .line 68
    .line 69
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->b()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-ltz v0, :cond_5

    .line 74
    .line 75
    if-ge v0, v4, :cond_5

    .line 76
    .line 77
    iget-object v6, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 78
    .line 79
    invoke-interface {v6}, Landroid/widget/Adapter;->getCount()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-ge v0, v6, :cond_3

    .line 84
    .line 85
    iget-object v5, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 86
    .line 87
    invoke-interface {v5, v0}, Landroid/widget/Adapter;->getItemViewType(I)I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    goto :goto_1

    .line 92
    :cond_3
    iget-boolean v6, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->j:Z

    .line 93
    .line 94
    if-eqz v6, :cond_5

    .line 95
    .line 96
    iget-object v5, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d:Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    add-int/2addr v5, v1

    .line 103
    add-int/2addr v5, v3

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    const/4 v4, 0x0

    .line 106
    :cond_5
    :goto_1
    iget-boolean v6, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->j:Z

    .line 107
    .line 108
    if-eqz v6, :cond_6

    .line 109
    .line 110
    sub-int/2addr v0, v4

    .line 111
    if-ltz v0, :cond_6

    .line 112
    .line 113
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->getCount()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-ge v0, v4, :cond_6

    .line 118
    .line 119
    iget v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 120
    .line 121
    rem-int v4, v0, v4

    .line 122
    .line 123
    if-eqz v4, :cond_6

    .line 124
    .line 125
    iget-object v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d:Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    add-int/2addr v1, v4

    .line 132
    add-int/2addr v1, v3

    .line 133
    iget v4, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 134
    .line 135
    div-int/2addr v0, v4

    .line 136
    add-int/2addr v0, v3

    .line 137
    add-int v5, v1, v0

    .line 138
    .line 139
    :cond_6
    sget-boolean v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->o:Z

    .line 140
    .line 141
    if-eqz v0, :cond_7

    .line 142
    .line 143
    const/4 v0, 0x4

    .line 144
    new-array v0, v0, [Ljava/lang/Object;

    .line 145
    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    aput-object p1, v0, v2

    .line 151
    .line 152
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    aput-object p1, v0, v3

    .line 157
    .line 158
    iget-boolean p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->j:Z

    .line 159
    .line 160
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    const/4 v1, 0x2

    .line 165
    aput-object p1, v0, v1

    .line 166
    .line 167
    iget-boolean p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->k:Z

    .line 168
    .line 169
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    const/4 v1, 0x3

    .line 174
    aput-object p1, v0, v1

    .line 175
    .line 176
    const-string p1, "getItemViewType: pos: %s, result: %s"

    .line 177
    .line 178
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    :cond_7
    return v5
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->o:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    aput-object v2, v0, v1

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v3, 0x0

    .line 21
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    aput-object v3, v0, v2

    .line 26
    .line 27
    const-string v2, "getView: %s, reused: %s"

    .line 28
    .line 29
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 37
    .line 38
    mul-int v0, v0, v2

    .line 39
    .line 40
    const/4 v3, 0x4

    .line 41
    if-ge p1, v0, :cond_4

    .line 42
    .line 43
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d:Ljava/util/ArrayList;

    .line 44
    .line 45
    div-int v1, p1, v2

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;

    .line 52
    .line 53
    iget-object v0, v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->b:Landroid/view/ViewGroup;

    .line 54
    .line 55
    iget v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 56
    .line 57
    rem-int/2addr p1, v1

    .line 58
    if-nez p1, :cond_2

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_2
    if-nez p2, :cond_3

    .line 62
    .line 63
    new-instance p2, Landroid/view/View;

    .line 64
    .line 65
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    :cond_3
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 80
    .line 81
    .line 82
    return-object p2

    .line 83
    :cond_4
    sub-int v0, p1, v0

    .line 84
    .line 85
    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 86
    .line 87
    if-eqz v2, :cond_7

    .line 88
    .line 89
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->b()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-ge v0, v1, :cond_7

    .line 94
    .line 95
    iget-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 96
    .line 97
    invoke-interface {p1}, Landroid/widget/Adapter;->getCount()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    if-ge v0, p1, :cond_5

    .line 102
    .line 103
    iget-object p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 104
    .line 105
    invoke-interface {p1, v0, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    return-object p1

    .line 110
    :cond_5
    if-nez p2, :cond_6

    .line 111
    .line 112
    new-instance p2, Landroid/view/View;

    .line 113
    .line 114
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 119
    .line 120
    .line 121
    :cond_6
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iget p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->g:I

    .line 125
    .line 126
    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 127
    .line 128
    .line 129
    return-object p2

    .line 130
    :cond_7
    sub-int/2addr v0, v1

    .line 131
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->getCount()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-ge v0, v1, :cond_a

    .line 136
    .line 137
    iget-object v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e:Ljava/util/ArrayList;

    .line 138
    .line 139
    iget v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 140
    .line 141
    div-int/2addr v0, v2

    .line 142
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;

    .line 147
    .line 148
    iget-object v0, v0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->b:Landroid/view/ViewGroup;

    .line 149
    .line 150
    iget v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 151
    .line 152
    rem-int/2addr p1, v1

    .line 153
    if-nez p1, :cond_8

    .line 154
    .line 155
    return-object v0

    .line 156
    :cond_8
    if-nez p2, :cond_9

    .line 157
    .line 158
    new-instance p2, Landroid/view/View;

    .line 159
    .line 160
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 165
    .line 166
    .line 167
    :cond_9
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 175
    .line 176
    .line 177
    return-object p2

    .line 178
    :cond_a
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 179
    .line 180
    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    .line 181
    .line 182
    .line 183
    throw p2
.end method

.method public getViewTypeCount()I
    .locals 4

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    iget-boolean v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->j:Z

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    iget-object v2, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    add-int/2addr v2, v1

    .line 23
    iget-object v3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    add-int/2addr v2, v3

    .line 30
    iget-boolean v3, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->k:Z

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    :cond_1
    add-int/2addr v0, v2

    .line 37
    :cond_2
    sget-boolean v2, Lin/srain/cube/views/GridViewWithHeaderAndFooter;->o:Z

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    aput-object v3, v1, v2

    .line 49
    .line 50
    const-string v2, "getViewTypeCount: %s"

    .line 51
    .line 52
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    :cond_3
    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numColumns"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p1, v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    iget v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 6
    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 10
    .line 11
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e()V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public hasStableIds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public i(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 1
    iput p1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public isEnabled(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 6
    .line 7
    mul-int v0, v0, v1

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ge p1, v0, :cond_1

    .line 12
    .line 13
    rem-int v0, p1, v1

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->d:Ljava/util/ArrayList;

    .line 18
    .line 19
    div-int/2addr p1, v1

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;

    .line 25
    .line 26
    iget-boolean p1, p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->d:Z

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v2, 0x0

    .line 32
    :goto_0
    return v2

    .line 33
    :cond_1
    sub-int/2addr p1, v0

    .line 34
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    invoke-direct {p0}, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->b()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-ge p1, v0, :cond_4

    .line 43
    .line 44
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 45
    .line 46
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-ge p1, v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 53
    .line 54
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    const/4 v2, 0x0

    .line 62
    :goto_1
    return v2

    .line 63
    :cond_3
    const/4 v0, 0x0

    .line 64
    :cond_4
    sub-int/2addr p1, v0

    .line 65
    iget v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->f:I

    .line 66
    .line 67
    rem-int v1, p1, v0

    .line 68
    .line 69
    if-nez v1, :cond_5

    .line 70
    .line 71
    iget-object v1, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->e:Ljava/util/ArrayList;

    .line 72
    .line 73
    div-int/2addr p1, v0

    .line 74
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;

    .line 79
    .line 80
    iget-boolean p1, p1, Lin/srain/cube/views/GridViewWithHeaderAndFooter$b;->d:Z

    .line 81
    .line 82
    if-eqz p1, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    const/4 v2, 0x0

    .line 86
    :goto_2
    return v2
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->b:Landroid/database/DataSetObservable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->b:Landroid/database/DataSetObservable;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/database/Observable;->unregisterObserver(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lin/srain/cube/views/GridViewWithHeaderAndFooter$d;->c:Landroid/widget/ListAdapter;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
