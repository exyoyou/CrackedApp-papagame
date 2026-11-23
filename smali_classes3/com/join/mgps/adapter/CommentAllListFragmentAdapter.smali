.class public Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;,
        Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;,
        Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;,
        Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;,
        Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;,
        Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$l;,
        Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field k:Lcom/join/mgps/dto/CommentBaseBean;

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field n:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;IILcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "mContext",
            "uid",
            "itemBeans",
            "commentScoreSwitch",
            "sgcSwitch",
            "cpu_type",
            "mListenr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->j:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->e:Landroid/content/Context;

    .line 8
    .line 9
    iput p2, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->g:I

    .line 10
    .line 11
    iput-object p4, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->h:Ljava/lang/String;

    .line 12
    .line 13
    iput p5, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->i:I

    .line 14
    .line 15
    iput-object p3, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->f:Ljava/util/List;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->n:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;

    .line 18
    .line 19
    iput p6, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->m:I

    .line 20
    .line 21
    new-instance p1, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->l:Ljava/util/Map;

    .line 27
    .line 28
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->l:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->e:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->m:I

    .line 2
    .line 3
    return p0
.end method

.method private f(Landroid/content/Context;F)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "dpValue"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    mul-float p2, p2, p1

    .line 12
    .line 13
    const/high16 p1, 0x3f000000    # 0.5f

    .line 14
    .line 15
    add-float/2addr p2, p1

    .line 16
    float-to-int p1, p2

    .line 17
    return p1
.end method

.method private n(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "view",
            "commitDataBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$d;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private o(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "view",
            "tv",
            "commitDataBean",
            "position"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p3

    .line 6
    move v3, p4

    .line 7
    move-object v4, p1

    .line 8
    move-object v5, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$e;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private p(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "view",
            "tv",
            "commitDataBean",
            "position"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$f;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p3

    .line 6
    move v3, p4

    .line 7
    move-object v4, p1

    .line 8
    move-object v5, p2

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$f;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Lcom/join/mgps/dto/CommentBaseBean;ILandroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-wide/16 v3, 0x1

    .line 35
    .line 36
    add-long/2addr v0, v3

    .line 37
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ""

    .line 41
    .line 42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public e(I)V
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 20
    .line 21
    const-wide/16 v2, 0x1

    .line 22
    .line 23
    add-long/2addr v0, v2

    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public g()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->j:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->f:Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->f:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;->b()Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    .line 28
    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->f:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;->a()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommentBaseBean;->getUid()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget v2, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->g:I

    .line 52
    .line 53
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_0

    .line 62
    .line 63
    iput v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->j:I

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    :goto_1
    iget v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->j:I

    .line 70
    .line 71
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->f:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->f:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
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

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->f:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i;->b()Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, -0x1

    .line 21
    return p1
.end method

.method public h()Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->n:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;

    .line 2
    .line 3
    return-object v0
.end method

.method public i(II)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "state"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const-string v3, ""

    .line 28
    .line 29
    const-wide/16 v4, 0x1

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    if-ne v2, v6, :cond_1

    .line 33
    .line 34
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p2, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 38
    .line 39
    .line 40
    sub-long/2addr v0, v4

    .line 41
    const-wide/16 v4, 0x0

    .line 42
    .line 43
    cmp-long p2, v0, v4

    .line 44
    .line 45
    if-gez p2, :cond_0

    .line 46
    .line 47
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 48
    .line 49
    const-string p2, "0"

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 56
    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    if-eq p2, v6, :cond_2

    .line 77
    .line 78
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 79
    .line 80
    invoke-virtual {p2, v6}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 84
    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    add-long/2addr v0, v4

    .line 91
    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public j(II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "state"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 14
    .line 15
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const-wide/16 v3, 0x1

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    if-ne v2, v5, :cond_1

    .line 23
    .line 24
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p2, v2}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 28
    .line 29
    .line 30
    sub-long/2addr v0, v3

    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    cmp-long p2, v0, v2

    .line 34
    .line 35
    if-gez p2, :cond_0

    .line 36
    .line 37
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 38
    .line 39
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 44
    .line 45
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    if-eq p2, v5, :cond_2

    .line 50
    .line 51
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 52
    .line 53
    invoke-virtual {p2, v5}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 57
    .line 58
    add-long/2addr v0, v3

    .line 59
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method k(Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scoringDetailsBean",
            "viewHolderHead"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x5

    .line 4
    :try_start_0
    new-array v2, v1, [Lcom/join/mgps/customview/HistogramView;

    .line 5
    .line 6
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->a(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 12
    .line 13
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->b(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const/4 v5, 0x1

    .line 18
    aput-object v3, v2, v5

    .line 19
    .line 20
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->c(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v6, 0x2

    .line 25
    aput-object v3, v2, v6

    .line 26
    .line 27
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->d(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const/4 v7, 0x3

    .line 32
    aput-object v3, v2, v7

    .line 33
    .line 34
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->e(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/4 v8, 0x4

    .line 39
    aput-object v3, v2, v8

    .line 40
    .line 41
    new-array v3, v1, [Ljava/lang/String;

    .line 42
    .line 43
    const-string v9, "#F47500"

    .line 44
    .line 45
    aput-object v9, v3, v4

    .line 46
    .line 47
    const-string v9, "#FFA423"

    .line 48
    .line 49
    aput-object v9, v3, v5

    .line 50
    .line 51
    const-string v9, "#FFB53D"

    .line 52
    .line 53
    aput-object v9, v3, v6

    .line 54
    .line 55
    const-string v9, "#FBCD36"

    .line 56
    .line 57
    aput-object v9, v3, v7

    .line 58
    .line 59
    const-string v9, "#E4DECA"

    .line 60
    .line 61
    aput-object v9, v3, v8

    .line 62
    .line 63
    new-instance v9, Ljava/text/DecimalFormat;

    .line 64
    .line 65
    const-string v10, "#.0"

    .line 66
    .line 67
    invoke-direct {v9, v10}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getTotal_score()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-static {v10}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    const-wide/16 v11, 0x0

    .line 79
    .line 80
    if-eqz v10, :cond_0

    .line 81
    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getTotal_score()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 91
    .line 92
    .line 93
    move-result-wide v13

    .line 94
    goto :goto_0

    .line 95
    :cond_0
    move-wide v13, v11

    .line 96
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->f(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/TextView;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    invoke-virtual {v9, v13, v14}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->g(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/MStarBar;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getTotal_stars()D

    .line 112
    .line 113
    .line 114
    move-result-wide v13

    .line 115
    invoke-virtual {v9, v13, v14}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 116
    .line 117
    .line 118
    new-array v9, v1, [D

    .line 119
    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getStars_score5()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v10

    .line 124
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 125
    .line 126
    .line 127
    move-result-object v10

    .line 128
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 129
    .line 130
    .line 131
    move-result-wide v13

    .line 132
    aput-wide v13, v9, v4

    .line 133
    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getStars_score4()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v10

    .line 138
    invoke-static {v10}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    .line 143
    .line 144
    .line 145
    move-result-wide v13

    .line 146
    aput-wide v13, v9, v5

    .line 147
    .line 148
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getStars_score3()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 157
    .line 158
    .line 159
    move-result-wide v13

    .line 160
    aput-wide v13, v9, v6

    .line 161
    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getStars_score2()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 171
    .line 172
    .line 173
    move-result-wide v5

    .line 174
    aput-wide v5, v9, v7

    .line 175
    .line 176
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getStars_score1()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v5

    .line 180
    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    .line 185
    .line 186
    .line 187
    move-result-wide v5

    .line 188
    aput-wide v5, v9, v8

    .line 189
    .line 190
    move-wide v6, v11

    .line 191
    const/4 v5, 0x0

    .line 192
    const/4 v8, 0x0

    .line 193
    :goto_1
    if-ge v5, v1, :cond_2

    .line 194
    .line 195
    aget-wide v13, v9, v5

    .line 196
    .line 197
    cmpl-double v10, v13, v6

    .line 198
    .line 199
    if-lez v10, :cond_1

    .line 200
    .line 201
    move v8, v5

    .line 202
    move-wide v6, v13

    .line 203
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 204
    .line 205
    goto :goto_1

    .line 206
    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->h(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/TextView;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .line 214
    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getP_count()I

    .line 216
    .line 217
    .line 218
    move-result v13

    .line 219
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v13, "\u4eba"

    .line 223
    .line 224
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual/range {p1 .. p1}, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;->getP_count()I

    .line 235
    .line 236
    .line 237
    move-result v5

    .line 238
    if-gtz v5, :cond_3

    .line 239
    .line 240
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->g(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/MStarBar;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v5, v11, v12}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 245
    .line 246
    .line 247
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->i(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/TextView;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 252
    .line 253
    .line 254
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->f(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/TextView;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    const/16 v10, 0x8

    .line 259
    .line 260
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->h(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/TextView;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->j(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/LinearLayout;

    .line 272
    .line 273
    .line 274
    move-result-object v5

    .line 275
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 276
    .line 277
    .line 278
    :goto_2
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 279
    .line 280
    iget-object v10, v0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->e:Landroid/content/Context;

    .line 281
    .line 282
    const/high16 v13, 0x41200000    # 10.0f

    .line 283
    .line 284
    invoke-direct {v0, v10, v13}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->f(Landroid/content/Context;F)I

    .line 285
    .line 286
    .line 287
    move-result v10

    .line 288
    const/4 v13, -0x1

    .line 289
    invoke-direct {v5, v13, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 290
    .line 291
    .line 292
    const/4 v10, 0x0

    .line 293
    :goto_3
    if-ge v10, v1, :cond_7

    .line 294
    .line 295
    aget-object v13, v2, v10

    .line 296
    .line 297
    invoke-virtual {v13, v4}, Lcom/join/mgps/customview/HistogramView;->setAnim(Z)V

    .line 298
    .line 299
    .line 300
    aget-wide v13, v9, v10

    .line 301
    .line 302
    cmpl-double v15, v13, v11

    .line 303
    .line 304
    if-nez v15, :cond_4

    .line 305
    .line 306
    aget-object v13, v2, v10

    .line 307
    .line 308
    invoke-virtual {v13, v11, v12}, Lcom/join/mgps/customview/HistogramView;->setProgress(D)V

    .line 309
    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_4
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 313
    .line 314
    if-ne v10, v8, :cond_5

    .line 315
    .line 316
    aget-object v13, v2, v10

    .line 317
    .line 318
    invoke-virtual {v13, v11, v12}, Lcom/join/mgps/customview/HistogramView;->setProgress(D)V

    .line 319
    .line 320
    .line 321
    goto :goto_4

    .line 322
    :cond_5
    cmpl-double v16, v6, v13

    .line 323
    .line 324
    if-nez v16, :cond_6

    .line 325
    .line 326
    aget-object v13, v2, v10

    .line 327
    .line 328
    invoke-virtual {v13, v11, v12}, Lcom/join/mgps/customview/HistogramView;->setProgress(D)V

    .line 329
    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_6
    aget-object v11, v2, v10

    .line 333
    .line 334
    div-double/2addr v13, v6

    .line 335
    invoke-virtual {v11, v13, v14}, Lcom/join/mgps/customview/HistogramView;->setProgress(D)V

    .line 336
    .line 337
    .line 338
    :goto_4
    aget-object v11, v2, v10

    .line 339
    .line 340
    aget-object v12, v3, v10

    .line 341
    .line 342
    invoke-virtual {v11, v12}, Lcom/join/mgps/customview/HistogramView;->setRateBackgroundColor(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    aget-object v11, v2, v10

    .line 346
    .line 347
    invoke-virtual {v11, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    .line 349
    .line 350
    aget-object v11, v2, v10

    .line 351
    .line 352
    invoke-virtual {v11, v4}, Lcom/join/mgps/customview/HistogramView;->setOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .line 354
    .line 355
    add-int/lit8 v10, v10, 0x1

    .line 356
    .line 357
    const-wide/16 v11, 0x0

    .line 358
    .line 359
    goto :goto_3

    .line 360
    :catch_0
    :cond_7
    return-void
.end method

.method public l(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mListenr"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->n:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$h;

    .line 2
    .line 3
    return-void
.end method

.method public m(Lcom/join/mgps/dto/CommentBaseBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mySelf"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->k:Lcom/join/mgps/dto/CommentBaseBean;

    .line 2
    .line 3
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    if-ne v0, v1, :cond_f

    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 23
    .line 24
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->a(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/high16 v4, -0x1000000

    .line 31
    .line 32
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-lez v1, :cond_0

    .line 40
    .line 41
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->a(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v4, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->e:Landroid/content/Context;

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    const v5, 0x7f0604f7

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    .line 60
    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-lez v1, :cond_1

    .line 66
    .line 67
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->a(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-object v4, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->e:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    const v5, 0x7f0604f8

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->b(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Lcom/join/mgps/customview/VipView;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getVip_level()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getSvip_level()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    invoke-virtual {v1, v4, v5}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getUid()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iget v4, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->g:I

    .line 107
    .line 108
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    const/4 v4, 0x0

    .line 117
    if-eqz v1, :cond_2

    .line 118
    .line 119
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->m(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    iput p2, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->j:I

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->m(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->n(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    new-instance v5, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$a;

    .line 141
    .line 142
    invoke-direct {v5, p0, v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$a;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->a(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getUser_name()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v5

    .line 156
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->o(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eq v1, v3, :cond_4

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    if-eqz v1, :cond_4

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_3

    .line 191
    .line 192
    goto :goto_1

    .line 193
    :cond_3
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->p(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->p(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getMobile_phone_model()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->p(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const/4 v5, 0x4

    .line 217
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .line 219
    .line 220
    :goto_2
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->q(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    .line 230
    .line 231
    .line 232
    move-result-wide v6

    .line 233
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    const-string v6, ""

    .line 237
    .line 238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->r(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    .line 273
    .line 274
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->s(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getReply_count()J

    .line 284
    .line 285
    .line 286
    move-result-wide v7

    .line 287
    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v5

    .line 297
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    .line 299
    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getAdd_times()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v5, "000"

    .line 313
    .line 314
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 322
    .line 323
    .line 324
    move-result-wide v7

    .line 325
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->t(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-static {v7, v8}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v5

    .line 333
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-eq v1, v3, :cond_6

    .line 341
    .line 342
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 351
    .line 352
    .line 353
    move-result v1

    .line 354
    const/4 v5, 0x0

    .line 355
    cmpl-float v1, v1, v5

    .line 356
    .line 357
    if-eqz v1, :cond_6

    .line 358
    .line 359
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->h:Ljava/lang/String;

    .line 360
    .line 361
    if-eqz v1, :cond_5

    .line 362
    .line 363
    const-string v5, "1"

    .line 364
    .line 365
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-nez v1, :cond_5

    .line 370
    .line 371
    goto :goto_3

    .line 372
    :cond_5
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->c(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 377
    .line 378
    .line 379
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->c(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getStars_score()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v5

    .line 387
    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    .line 388
    .line 389
    .line 390
    move-result-object v5

    .line 391
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 392
    .line 393
    .line 394
    move-result v5

    .line 395
    float-to-double v7, v5

    .line 396
    invoke-virtual {v1, v7, v8}, Lcom/join/mgps/customview/MStarBar;->setStarMark(D)V

    .line 397
    .line 398
    .line 399
    goto :goto_4

    .line 400
    :cond_6
    :goto_3
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->c(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 405
    .line 406
    .line 407
    :goto_4
    iget v1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->i:I

    .line 408
    .line 409
    if-ne v1, v3, :cond_8

    .line 410
    .line 411
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_old()I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-nez v1, :cond_7

    .line 416
    .line 417
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->d(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 418
    .line 419
    .line 420
    move-result-object v1

    .line 421
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 422
    .line 423
    .line 424
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->d(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    new-instance v5, Ljava/lang/StringBuilder;

    .line 429
    .line 430
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    .line 432
    .line 433
    const-string v7, "\u542f\u52a8\u6e38\u620f "

    .line 434
    .line 435
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getStart_game_count()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v7

    .line 442
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    const-string v7, " \u6b21"

    .line 446
    .line 447
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v5

    .line 454
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    .line 456
    .line 457
    goto :goto_5

    .line 458
    :cond_7
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->d(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 459
    .line 460
    .line 461
    move-result-object v1

    .line 462
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 463
    .line 464
    .line 465
    goto :goto_5

    .line 466
    :cond_8
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->d(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 471
    .line 472
    .line 473
    :goto_5
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->c(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Lcom/join/mgps/customview/MStarBar;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    if-eqz v1, :cond_9

    .line 485
    .line 486
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getApproval_rate()Ljava/lang/String;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 495
    .line 496
    .line 497
    move-result-wide v7

    .line 498
    const-wide v9, 0x4051800000000000L    # 70.0

    .line 499
    .line 500
    .line 501
    .line 502
    .line 503
    cmpl-double v1, v7, v9

    .line 504
    .line 505
    if-lez v1, :cond_9

    .line 506
    .line 507
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->e(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    .line 513
    .line 514
    goto :goto_6

    .line 515
    :cond_9
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->e(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    .line 521
    .line 522
    :goto_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    if-eqz v1, :cond_a

    .line 531
    .line 532
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->f(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 537
    .line 538
    .line 539
    goto :goto_7

    .line 540
    :cond_a
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->f(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 545
    .line 546
    .line 547
    :goto_7
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->g(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getRank()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_praise()I

    .line 559
    .line 560
    .line 561
    move-result v1

    .line 562
    if-ne v1, v3, :cond_b

    .line 563
    .line 564
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->h(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    const v2, 0x7f081329

    .line 569
    .line 570
    .line 571
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 572
    .line 573
    .line 574
    goto :goto_8

    .line 575
    :cond_b
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->h(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    .line 576
    .line 577
    .line 578
    move-result-object v1

    .line 579
    const v2, 0x7f081324

    .line 580
    .line 581
    .line 582
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 583
    .line 584
    .line 585
    :goto_8
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_despise()I

    .line 586
    .line 587
    .line 588
    move-result v1

    .line 589
    if-ne v1, v3, :cond_c

    .line 590
    .line 591
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    const v2, 0x7f080511

    .line 596
    .line 597
    .line 598
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 599
    .line 600
    .line 601
    goto :goto_9

    .line 602
    :cond_c
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    .line 603
    .line 604
    .line 605
    move-result-object v1

    .line 606
    const v2, 0x7f08050f

    .line 607
    .line 608
    .line 609
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 610
    .line 611
    .line 612
    :goto_9
    iget-object v1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->e:Landroid/content/Context;

    .line 613
    .line 614
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getHead_portrait()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v2

    .line 618
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->n(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 619
    .line 620
    .line 621
    move-result-object v5

    .line 622
    invoke-static {v1, v2, v5}, Lcom/join/mgps/Util/UtilsMy;->J3(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 623
    .line 624
    .line 625
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->h(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->q(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    invoke-direct {p0, v1, v2, v0, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->o(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 634
    .line 635
    .line 636
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->i(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    .line 637
    .line 638
    .line 639
    move-result-object v1

    .line 640
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->r(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    invoke-direct {p0, v1, v2, v0, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->p(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/join/mgps/dto/CommentBaseBean;I)V

    .line 645
    .line 646
    .line 647
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->j(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    invoke-direct {p0, v1, v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->n(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 652
    .line 653
    .line 654
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->k(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/LinearLayout;

    .line 655
    .line 656
    .line 657
    move-result-object v1

    .line 658
    invoke-direct {p0, v1, v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->n(Landroid/view/View;Lcom/join/mgps/dto/CommentBaseBean;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getContent()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 666
    .line 667
    .line 668
    move-result v1

    .line 669
    const/16 v2, 0x73

    .line 670
    .line 671
    if-le v1, v2, :cond_d

    .line 672
    .line 673
    invoke-virtual {v0, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setShowMore(Z)V

    .line 674
    .line 675
    .line 676
    :cond_d
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->isShowMore()Z

    .line 677
    .line 678
    .line 679
    move-result v1

    .line 680
    if-eqz v1, :cond_e

    .line 681
    .line 682
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->l(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 683
    .line 684
    .line 685
    move-result-object v1

    .line 686
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 687
    .line 688
    .line 689
    :cond_e
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->o(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    new-instance v2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;

    .line 694
    .line 695
    invoke-direct {v2, p0, v0, p1, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$b;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Lcom/join/mgps/dto/CommentBaseBean;Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;I)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 699
    .line 700
    .line 701
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->l(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;

    .line 702
    .line 703
    .line 704
    move-result-object v1

    .line 705
    new-instance v2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$c;

    .line 706
    .line 707
    invoke-direct {v2, p0, p1, p2, v0}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$c;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;ILcom/join/mgps/dto/CommentBaseBean;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    .line 712
    .line 713
    goto :goto_b

    .line 714
    :cond_f
    sget-object v1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;->HEAD:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    .line 715
    .line 716
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    if-ne v0, v1, :cond_10

    .line 721
    .line 722
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;

    .line 723
    .line 724
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    .line 725
    .line 726
    .line 727
    move-result-object p2

    .line 728
    check-cast p2, Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;

    .line 729
    .line 730
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->k(Lcom/join/mgps/dto/CommentAllListBean$ScoringDetailsBean;Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)V

    .line 731
    .line 732
    .line 733
    goto :goto_b

    .line 734
    :cond_10
    sget-object v1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;->TITLE:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    .line 735
    .line 736
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 737
    .line 738
    .line 739
    move-result v1

    .line 740
    if-ne v0, v1, :cond_12

    .line 741
    .line 742
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$l;

    .line 743
    .line 744
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object p2

    .line 748
    check-cast p2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    .line 749
    .line 750
    iget-object p2, p2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 751
    .line 752
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommentBaseBean;->getIs_hot()I

    .line 753
    .line 754
    .line 755
    move-result p2

    .line 756
    if-ne p2, v3, :cond_11

    .line 757
    .line 758
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$l;->d:Landroid/widget/TextView;

    .line 759
    .line 760
    const-string v0, "\u70ed\u95e8\u70b9\u8bc4"

    .line 761
    .line 762
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    .line 764
    .line 765
    goto :goto_a

    .line 766
    :cond_11
    iget-object p2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$l;->d:Landroid/widget/TextView;

    .line 767
    .line 768
    const-string v0, "\u6700\u65b0\u70b9\u8bc4"

    .line 769
    .line 770
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    .line 772
    .line 773
    :goto_a
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$l;->f:Landroid/view/View;

    .line 774
    .line 775
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 776
    .line 777
    .line 778
    :cond_12
    :goto_b
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;->COMMENT:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-ne p2, v0, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->e:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const v0, 0x7f0d016c

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;

    .line 24
    .line 25
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    sget-object v0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;->HEAD:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$ViewType;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-ne p2, v0, :cond_1

    .line 36
    .line 37
    iget-object p2, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->e:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const v0, 0x7f0d0168

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance p2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;

    .line 51
    .line 52
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->e:Landroid/content/Context;

    .line 57
    .line 58
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const v0, 0x7f0d0330

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    new-instance p2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$l;

    .line 70
    .line 71
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$l;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-object p2
.end method

.method public q(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getDespise_count()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_despise(I)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v2, 0x1

    .line 28
    .line 29
    sub-long/2addr v0, v2

    .line 30
    const-wide/16 v2, 0x0

    .line 31
    .line 32
    cmp-long v4, v0, v2

    .line 33
    .line 34
    if-gez v4, :cond_0

    .line 35
    .line 36
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 37
    .line 38
    const-string v0, "0"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 45
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, ""

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CommentBaseBean;->setDespise_count(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public r(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommentBaseBean;->getPraise_count()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-object v2, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setIs_praise(I)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v2, 0x1

    .line 20
    .line 21
    sub-long/2addr v0, v2

    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    cmp-long v4, v0, v2

    .line 25
    .line 26
    if-gez v4, :cond_0

    .line 27
    .line 28
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 29
    .line 30
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p1, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$i$a;->a:Lcom/join/mgps/dto/CommentBaseBean;

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/dto/CommentBaseBean;->setPraise_count(J)V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 40
    .line 41
    .line 42
    return-void
.end method
