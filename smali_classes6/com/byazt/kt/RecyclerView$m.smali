.class public final Lcom/byazt/kt/RecyclerView$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x3ff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kt/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "m"
.end annotation


# instance fields
.field public final synthetic a:Lcom/byazt/kt/RecyclerView;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/byazt/kt/RecyclerView$gu;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/byazt/kt/RecyclerView$rl;

.field public n:Lcom/byazt/kt/RecyclerView$z;

.field public final sp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/kt/RecyclerView$gu;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/byazt/kt/RecyclerView$gu;",
            ">;"
        }
    .end annotation
.end field

.field public uj:I

.field public final ve:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/byazt/kt/RecyclerView$gu;",
            ">;"
        }
    .end annotation
.end field

.field public x:I


# direct methods
.method public constructor <init>(Lcom/byazt/kt/RecyclerView;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$m;->c:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->tt:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$m;->sp:Ljava/util/List;

    .line 28
    .line 29
    const/4 p1, 0x2

    .line 30
    iput p1, p0, Lcom/byazt/kt/RecyclerView$m;->x:I

    .line 31
    .line 32
    iput p1, p0, Lcom/byazt/kt/RecyclerView$m;->uj:I

    .line 33
    .line 34
    return-void
.end method

.method private c(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 83
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 84
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 85
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Lcom/byazt/kt/RecyclerView$m;->c(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    const/4 p2, 0x0

    .line 87
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 89
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p2

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private c(Lcom/byazt/kt/RecyclerView$gu;IIJ)Z
    .locals 9

    .line 14
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iput-object v0, p1, Lcom/byazt/kt/RecyclerView$gu;->m:Lcom/byazt/kt/RecyclerView;

    .line 15
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->x()I

    move-result v2

    .line 16
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView;->getNanoTime()J

    move-result-wide v7

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v3, p4, v0

    if-eqz v3, :cond_0

    .line 17
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$m;->n:Lcom/byazt/kt/RecyclerView$z;

    move-wide v3, v7

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/byazt/kt/RecyclerView$z;->tt(IJJ)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return p1

    .line 18
    :cond_0
    iget-object p4, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object p4, p4, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    invoke-virtual {p4, p1, p2}, Lcom/byazt/kt/RecyclerView$c;->tt(Lcom/byazt/kt/RecyclerView$gu;I)V

    .line 19
    iget-object p2, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {p2}, Lcom/byazt/kt/RecyclerView;->getNanoTime()J

    move-result-wide p4

    .line 20
    iget-object p2, p0, Lcom/byazt/kt/RecyclerView$m;->n:Lcom/byazt/kt/RecyclerView$z;

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->x()I

    move-result v0

    sub-long/2addr p4, v7

    invoke-virtual {p2, v0, p4, p5}, Lcom/byazt/kt/RecyclerView$z;->tt(IJ)V

    .line 21
    iget-object p2, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object p2, p2, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    invoke-virtual {p2}, Lcom/byazt/kt/RecyclerView$gt;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 22
    iput p3, p1, Lcom/byazt/kt/RecyclerView$gu;->sp:I

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private n(Lcom/byazt/kt/RecyclerView$gu;)V
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/byazt/kt/RecyclerView$m;->c(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->tt:Ljava/util/ArrayList;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public c(IZ)Landroid/view/View;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 23
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/byazt/kt/RecyclerView$m;->c(IZJ)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object p1

    iget-object p1, p1, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    return-object p1
.end method

.method public c(IZJ)Lcom/byazt/kt/RecyclerView$gu;
    .locals 16

    move-object/from16 v6, p0

    move/from16 v3, p1

    move/from16 v0, p2

    if-ltz v3, :cond_18

    .line 24
    iget-object v1, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v1, v1, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$gt;->uj()I

    move-result v1

    if-ge v3, v1, :cond_18

    .line 25
    iget-object v1, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v1, v1, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$gt;->c()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    .line 26
    invoke-virtual/range {p0 .. p1}, Lcom/byazt/kt/RecyclerView$m;->n(I)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v1, :cond_6

    .line 27
    invoke-virtual/range {p0 .. p2}, Lcom/byazt/kt/RecyclerView$m;->tt(IZ)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 28
    invoke-virtual {v6, v1}, Lcom/byazt/kt/RecyclerView$m;->c(Lcom/byazt/kt/RecyclerView$gu;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez v0, :cond_4

    const/4 v5, 0x4

    .line 29
    invoke-virtual {v1, v5}, Lcom/byazt/kt/RecyclerView$gu;->tt(I)V

    .line 30
    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$gu;->i()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 31
    iget-object v5, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v9, v1, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    invoke-virtual {v5, v9, v8}, Lcom/byazt/kt/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 32
    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$gu;->da()V

    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$gu;->sl()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 34
    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$gu;->t()V

    .line 35
    :cond_3
    :goto_1
    invoke-virtual {v6, v1}, Lcom/byazt/kt/RecyclerView$m;->tt(Lcom/byazt/kt/RecyclerView$gu;)V

    :cond_4
    move-object v1, v2

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    :cond_6
    :goto_2
    if-nez v1, :cond_10

    .line 36
    iget-object v5, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v5, v5, Lcom/byazt/kt/RecyclerView;->a:Lcom/byazt/kt/c;

    invoke-virtual {v5, v3}, Lcom/byazt/kt/c;->tt(I)I

    move-result v5

    if-ltz v5, :cond_f

    .line 37
    iget-object v9, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v9, v9, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    invoke-virtual {v9}, Lcom/byazt/kt/RecyclerView$c;->c()I

    move-result v9

    if-ge v5, v9, :cond_f

    .line 38
    iget-object v9, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v9, v9, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    invoke-virtual {v9, v5}, Lcom/byazt/kt/RecyclerView$c;->c(I)I

    move-result v9

    .line 39
    iget-object v10, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v10, v10, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    invoke-virtual {v10}, Lcom/byazt/kt/RecyclerView$c;->tt()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 40
    iget-object v1, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v1, v1, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    invoke-virtual {v1, v5}, Lcom/byazt/kt/RecyclerView$c;->tt(I)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11, v9, v0}, Lcom/byazt/kt/RecyclerView$m;->c(JIZ)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 41
    iput v5, v1, Lcom/byazt/kt/RecyclerView$gu;->ve:I

    const/4 v4, 0x1

    :cond_7
    if-nez v1, :cond_a

    .line 42
    iget-object v0, v6, Lcom/byazt/kt/RecyclerView$m;->i:Lcom/byazt/kt/RecyclerView$rl;

    if-eqz v0, :cond_a

    .line 43
    invoke-virtual {v0, v6, v3, v9}, Lcom/byazt/kt/RecyclerView$rl;->c(Lcom/byazt/kt/RecyclerView$m;II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 44
    iget-object v1, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/byazt/kt/RecyclerView;->tt(Landroid/view/View;)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 45
    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$gu;->R_()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    .line 46
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v2}, Lcom/byazt/kt/RecyclerView;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v2}, Lcom/byazt/kt/RecyclerView;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_3
    if-nez v1, :cond_c

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/byazt/kt/RecyclerView$m;->sp()Lcom/byazt/kt/RecyclerView$z;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/byazt/kt/RecyclerView$z;->c(I)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 49
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->qy()V

    .line 50
    sget-boolean v1, Lcom/byazt/kt/RecyclerView;->c:Z

    if-eqz v1, :cond_b

    .line 51
    invoke-direct {v6, v0}, Lcom/byazt/kt/RecyclerView$m;->n(Lcom/byazt/kt/RecyclerView$gu;)V

    :cond_b
    move-object v1, v0

    :cond_c
    if-nez v1, :cond_10

    .line 52
    iget-object v0, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView;->getNanoTime()J

    move-result-wide v0

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v5, p3, v10

    if-eqz v5, :cond_d

    .line 53
    iget-object v10, v6, Lcom/byazt/kt/RecyclerView$m;->n:Lcom/byazt/kt/RecyclerView$z;

    move v11, v9

    move-wide v12, v0

    move-wide/from16 v14, p3

    invoke-virtual/range {v10 .. v15}, Lcom/byazt/kt/RecyclerView$z;->c(IJJ)Z

    move-result v5

    if-nez v5, :cond_d

    return-object v2

    .line 54
    :cond_d
    iget-object v2, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v5, v2, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    invoke-virtual {v5, v2, v9}, Lcom/byazt/kt/RecyclerView$c;->tt(Landroid/view/ViewGroup;I)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object v2

    .line 55
    sget-boolean v5, Lcom/byazt/kt/RecyclerView;->uj:Z

    if-eqz v5, :cond_e

    .line 56
    iget-object v5, v2, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    invoke-static {v5}, Lcom/byazt/kt/RecyclerView;->da(Landroid/view/View;)Lcom/byazt/kt/RecyclerView;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 57
    new-instance v10, Ljava/lang/ref/WeakReference;

    invoke-direct {v10, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v10, v2, Lcom/byazt/kt/RecyclerView$gu;->tt:Ljava/lang/ref/WeakReference;

    .line 58
    :cond_e
    iget-object v5, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v5}, Lcom/byazt/kt/RecyclerView;->getNanoTime()J

    move-result-wide v10

    .line 59
    iget-object v5, v6, Lcom/byazt/kt/RecyclerView$m;->n:Lcom/byazt/kt/RecyclerView$z;

    sub-long/2addr v10, v0

    invoke-virtual {v5, v9, v10, v11}, Lcom/byazt/kt/RecyclerView$z;->c(IJ)V

    move-object v9, v2

    goto :goto_4

    .line 60
    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v2, v2, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    invoke-virtual {v2}, Lcom/byazt/kt/RecyclerView$gt;->uj()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v2}, Lcom/byazt/kt/RecyclerView;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object v9, v1

    :goto_4
    move v10, v4

    if-eqz v10, :cond_11

    .line 61
    iget-object v0, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gt;->c()Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x2000

    invoke-virtual {v9, v0}, Lcom/byazt/kt/RecyclerView$gu;->c(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 62
    invoke-virtual {v9, v8, v0}, Lcom/byazt/kt/RecyclerView$gu;->c(II)V

    .line 63
    iget-object v0, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    iget-boolean v0, v0, Lcom/byazt/kt/RecyclerView$gt;->da:Z

    if-eqz v0, :cond_11

    .line 64
    invoke-static {v9}, Lcom/byazt/kt/RecyclerView$a;->n(Lcom/byazt/kt/RecyclerView$gu;)I

    move-result v0

    or-int/lit16 v0, v0, 0x1000

    .line 65
    iget-object v1, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v2, v1, Lcom/byazt/kt/RecyclerView;->zm:Lcom/byazt/kt/RecyclerView$a;

    iget-object v1, v1, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    invoke-virtual {v9}, Lcom/byazt/kt/RecyclerView$gu;->rl()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v1, v9, v0, v4}, Lcom/byazt/kt/RecyclerView$a;->c(Lcom/byazt/kt/RecyclerView$gt;Lcom/byazt/kt/RecyclerView$gu;ILjava/util/List;)Lcom/byazt/kt/RecyclerView$a$tt;

    move-result-object v0

    .line 66
    iget-object v1, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v1, v9, v0}, Lcom/byazt/kt/RecyclerView;->c(Lcom/byazt/kt/RecyclerView$gu;Lcom/byazt/kt/RecyclerView$a$tt;)V

    .line 67
    :cond_11
    iget-object v0, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gt;->c()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v9}, Lcom/byazt/kt/RecyclerView$gu;->m()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 68
    iput v3, v9, Lcom/byazt/kt/RecyclerView$gu;->sp:I

    goto :goto_5

    .line 69
    :cond_12
    invoke-virtual {v9}, Lcom/byazt/kt/RecyclerView$gu;->m()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v9}, Lcom/byazt/kt/RecyclerView$gu;->z()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {v9}, Lcom/byazt/kt/RecyclerView$gu;->yp()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_6

    :cond_13
    :goto_5
    const/4 v0, 0x0

    goto :goto_7

    .line 70
    :cond_14
    :goto_6
    iget-object v0, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->a:Lcom/byazt/kt/c;

    invoke-virtual {v0, v3}, Lcom/byazt/kt/c;->tt(I)I

    move-result v2

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v3, p1

    move-wide/from16 v4, p3

    .line 71
    invoke-direct/range {v0 .. v5}, Lcom/byazt/kt/RecyclerView$m;->c(Lcom/byazt/kt/RecyclerView$gu;IIJ)Z

    move-result v0

    .line 72
    :goto_7
    iget-object v1, v9, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_15

    .line 73
    iget-object v1, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/byazt/kt/RecyclerView$da;

    .line 74
    iget-object v2, v9, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 75
    :cond_15
    iget-object v2, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v2, v1}, Lcom/byazt/kt/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 76
    iget-object v2, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v2, v1}, Lcom/byazt/kt/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/byazt/kt/RecyclerView$da;

    .line 77
    iget-object v2, v9, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 78
    :cond_16
    check-cast v1, Lcom/byazt/kt/RecyclerView$da;

    .line 79
    :goto_8
    iput-object v9, v1, Lcom/byazt/kt/RecyclerView$da;->c:Lcom/byazt/kt/RecyclerView$gu;

    if-eqz v10, :cond_17

    if-eqz v0, :cond_17

    goto :goto_9

    :cond_17
    const/4 v7, 0x0

    .line 80
    :goto_9
    iput-boolean v7, v1, Lcom/byazt/kt/RecyclerView$da;->uj:Z

    return-object v9

    .line 81
    :cond_18
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v2, v2, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    invoke-virtual {v2}, Lcom/byazt/kt/RecyclerView$gt;->uj()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v2}, Lcom/byazt/kt/RecyclerView;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(JIZ)Lcom/byazt/kt/RecyclerView$gu;
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 107
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$m;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/kt/RecyclerView$gu;

    .line 108
    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$gu;->sp()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$gu;->sl()Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$gu;->x()I

    move-result v2

    if-ne p3, v2, :cond_1

    const/16 p1, 0x20

    .line 110
    invoke-virtual {v1, p1}, Lcom/byazt/kt/RecyclerView$gu;->tt(I)V

    .line 111
    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$gu;->nu()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object p1, p1, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gt;->c()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    const/16 p2, 0xe

    .line 112
    invoke-virtual {v1, p1, p2}, Lcom/byazt/kt/RecyclerView$gu;->c(II)V

    :cond_0
    return-object v1

    :cond_1
    if-nez p4, :cond_2

    .line 113
    iget-object v2, p0, Lcom/byazt/kt/RecyclerView$m;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 114
    iget-object v2, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v3, v1, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/byazt/kt/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 115
    iget-object v1, v1, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/byazt/kt/RecyclerView$m;->tt(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    const/4 v1, 0x0

    if-ltz v0, :cond_7

    .line 117
    iget-object v2, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/kt/RecyclerView$gu;

    .line 118
    invoke-virtual {v2}, Lcom/byazt/kt/RecyclerView$gu;->sp()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_6

    .line 119
    invoke-virtual {v2}, Lcom/byazt/kt/RecyclerView$gu;->x()I

    move-result v3

    if-ne p3, v3, :cond_5

    if-nez p4, :cond_4

    .line 120
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    return-object v2

    :cond_5
    if-nez p4, :cond_6

    .line 121
    invoke-virtual {p0, v0}, Lcom/byazt/kt/RecyclerView$m;->ve(I)V

    return-object v1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    return-object v1
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$m;->uj()V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/kt/RecyclerView$m;->x:I

    .line 4
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$m;->tt()V

    return-void
.end method

.method public c(II)V
    .locals 8

    if-ge p1, p2, :cond_0

    const/4 v0, -0x1

    move v1, p1

    move v2, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v2, p1

    move v1, p2

    .line 124
    :goto_0
    iget-object v3, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_3

    .line 125
    iget-object v6, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/byazt/kt/RecyclerView$gu;

    if-eqz v6, :cond_2

    .line 126
    iget v7, v6, Lcom/byazt/kt/RecyclerView$gu;->ve:I

    if-lt v7, v1, :cond_2

    if-gt v7, v2, :cond_2

    if-ne v7, p1, :cond_1

    sub-int v7, p2, p1

    .line 127
    invoke-virtual {v6, v7, v4}, Lcom/byazt/kt/RecyclerView$gu;->c(IZ)V

    goto :goto_2

    .line 128
    :cond_1
    invoke-virtual {v6, v0, v4}, Lcom/byazt/kt/RecyclerView$gu;->c(IZ)V

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public c(IIZ)V
    .locals 4

    add-int v0, p1, p2

    .line 129
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 130
    iget-object v2, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/kt/RecyclerView$gu;

    if-eqz v2, :cond_1

    .line 131
    iget v3, v2, Lcom/byazt/kt/RecyclerView$gu;->ve:I

    if-lt v3, v0, :cond_0

    neg-int v3, p2

    .line 132
    invoke-virtual {v2, v3, p3}, Lcom/byazt/kt/RecyclerView$gu;->c(IZ)V

    goto :goto_1

    :cond_0
    if-lt v3, p1, :cond_1

    const/16 v3, 0x8

    .line 133
    invoke-virtual {v2, v3}, Lcom/byazt/kt/RecyclerView$gu;->tt(I)V

    .line 134
    invoke-virtual {p0, v1}, Lcom/byazt/kt/RecyclerView$m;->ve(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 3

    .line 92
    invoke-static {p1}, Lcom/byazt/kt/RecyclerView;->n(Landroid/view/View;)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->rh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/byazt/kt/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 95
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->da()V

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->sl()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 98
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->t()V

    .line 99
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/byazt/kt/RecyclerView$m;->tt(Lcom/byazt/kt/RecyclerView$gu;)V

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$c;Lcom/byazt/kt/RecyclerView$c;Z)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$m;->c()V

    .line 123
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$m;->sp()Lcom/byazt/kt/RecyclerView$z;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/kt/RecyclerView$z;->c(Lcom/byazt/kt/RecyclerView$c;Lcom/byazt/kt/RecyclerView$c;Z)V

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$gu;Z)V
    .locals 2

    .line 100
    invoke-static {p1}, Lcom/byazt/kt/RecyclerView;->ve(Lcom/byazt/kt/RecyclerView$gu;)V

    const/16 v0, 0x4000

    .line 101
    invoke-virtual {p1, v0}, Lcom/byazt/kt/RecyclerView$gu;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1, v1, v0}, Lcom/byazt/kt/RecyclerView$gu;->c(II)V

    :cond_0
    if-eqz p2, :cond_1

    .line 103
    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$m;->uj(Lcom/byazt/kt/RecyclerView$gu;)V

    :cond_1
    const/4 p2, 0x0

    .line 104
    iput-object p2, p1, Lcom/byazt/kt/RecyclerView$gu;->m:Lcom/byazt/kt/RecyclerView;

    .line 105
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$m;->sp()Lcom/byazt/kt/RecyclerView$z;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/byazt/kt/RecyclerView$z;->c(Lcom/byazt/kt/RecyclerView$gu;)V

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$rl;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$m;->i:Lcom/byazt/kt/RecyclerView$rl;

    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$z;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->n:Lcom/byazt/kt/RecyclerView$z;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$z;->ve()V

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$m;->n:Lcom/byazt/kt/RecyclerView$z;

    if-eqz p1, :cond_1

    .line 139
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView;->getAdapter()Lcom/byazt/kt/RecyclerView$c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$m;->n:Lcom/byazt/kt/RecyclerView$z;

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$z;->tt()V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/kt/RecyclerView$gu;)Z
    .locals 7

    .line 5
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->nu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object p1, p1, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gt;->c()Z

    move-result p1

    return p1

    .line 7
    :cond_0
    iget v0, p1, Lcom/byazt/kt/RecyclerView$gu;->ve:I

    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v1, v1, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView$c;->c()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 8
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gt;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    iget v2, p1, Lcom/byazt/kt/RecyclerView$gu;->ve:I

    invoke-virtual {v0, v2}, Lcom/byazt/kt/RecyclerView$c;->c(I)I

    move-result v0

    .line 10
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->x()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$c;->tt()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->sp()J

    move-result-wide v3

    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    iget p1, p1, Lcom/byazt/kt/RecyclerView$gu;->ve:I

    invoke-virtual {v0, p1}, Lcom/byazt/kt/RecyclerView$c;->tt(I)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    return v2

    .line 13
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public da()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

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
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/byazt/kt/RecyclerView$gu;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/byazt/kt/RecyclerView$da;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    iput-boolean v3, v2, Lcom/byazt/kt/RecyclerView$da;->ve:Z

    .line 30
    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return-void
.end method

.method public i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

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
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    iget-object v3, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/byazt/kt/RecyclerView$gu;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$gu;->c()V

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->c:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x0

    .line 32
    :goto_1
    if-ge v2, v0, :cond_1

    .line 33
    .line 34
    iget-object v3, p0, Lcom/byazt/kt/RecyclerView$m;->c:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/byazt/kt/RecyclerView$gu;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$gu;->c()V

    .line 43
    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->tt:Ljava/util/ArrayList;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    :goto_2
    if-ge v1, v0, :cond_2

    .line 57
    .line 58
    iget-object v2, p0, Lcom/byazt/kt/RecyclerView$m;->tt:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lcom/byazt/kt/RecyclerView$gu;

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/byazt/kt/RecyclerView$gu;->c()V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    return-void
.end method

.method public n()I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public n(I)Lcom/byazt/kt/RecyclerView$gu;
    .locals 9

    .line 4
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->tt:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_1

    .line 5
    iget-object v5, p0, Lcom/byazt/kt/RecyclerView$m;->tt:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/byazt/kt/RecyclerView$gu;

    .line 6
    invoke-virtual {v5}, Lcom/byazt/kt/RecyclerView$gu;->sl()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/byazt/kt/RecyclerView$gu;->uj()I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 7
    invoke-virtual {v5, v4}, Lcom/byazt/kt/RecyclerView$gu;->tt(I)V

    return-object v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v3, v3, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$c;->tt()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    iget-object v3, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v3, v3, Lcom/byazt/kt/RecyclerView;->a:Lcom/byazt/kt/c;

    invoke-virtual {v3, p1}, Lcom/byazt/kt/c;->tt(I)I

    move-result p1

    if-lez p1, :cond_3

    .line 10
    iget-object v3, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v3, v3, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$c;->c()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 11
    iget-object v3, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v3, v3, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    invoke-virtual {v3, p1}, Lcom/byazt/kt/RecyclerView$c;->tt(I)J

    move-result-wide v5

    :goto_1
    if-ge v2, v0, :cond_3

    .line 12
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$m;->tt:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/kt/RecyclerView$gu;

    .line 13
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->sl()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->sp()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-nez v3, :cond_2

    .line 14
    invoke-virtual {p1, v4}, Lcom/byazt/kt/RecyclerView$gu;->tt(I)V

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public sp()Lcom/byazt/kt/RecyclerView$z;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->n:Lcom/byazt/kt/RecyclerView$z;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/byazt/kt/RecyclerView$z;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/byazt/kt/RecyclerView$z;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->n:Lcom/byazt/kt/RecyclerView$z;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->n:Lcom/byazt/kt/RecyclerView$z;

    .line 13
    .line 14
    return-object v0
.end method

.method public tt(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/byazt/kt/RecyclerView$m;->c(IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public tt(IZ)Lcom/byazt/kt/RecyclerView$gu;
    .locals 5

    .line 31
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 32
    iget-object v3, p0, Lcom/byazt/kt/RecyclerView$m;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/kt/RecyclerView$gu;

    .line 33
    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$gu;->sl()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$gu;->uj()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$gu;->yp()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v4, v4, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    iget-boolean v4, v4, Lcom/byazt/kt/RecyclerView$gt;->sp:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/byazt/kt/RecyclerView$gu;->nu()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/16 p1, 0x20

    .line 34
    invoke-virtual {v3, p1}, Lcom/byazt/kt/RecyclerView$gu;->tt(I)V

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    .line 35
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->sp:Lcom/byazt/kt/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/kt/tt;->ve(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 36
    invoke-static {v0}, Lcom/byazt/kt/RecyclerView;->n(Landroid/view/View;)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object p1

    .line 37
    iget-object p2, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object p2, p2, Lcom/byazt/kt/RecyclerView;->sp:Lcom/byazt/kt/tt;

    invoke-virtual {p2, v0}, Lcom/byazt/kt/tt;->n(Landroid/view/View;)V

    .line 38
    iget-object p2, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object p2, p2, Lcom/byazt/kt/RecyclerView;->sp:Lcom/byazt/kt/tt;

    invoke-virtual {p2, v0}, Lcom/byazt/kt/tt;->tt(Landroid/view/View;)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    .line 39
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v1, v1, Lcom/byazt/kt/RecyclerView;->sp:Lcom/byazt/kt/tt;

    invoke-virtual {v1, p2}, Lcom/byazt/kt/tt;->n(I)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/byazt/kt/RecyclerView$m;->ve(Landroid/view/View;)V

    const/16 p2, 0x2020

    .line 41
    invoke-virtual {p1, p2}, Lcom/byazt/kt/RecyclerView$gu;->tt(I)V

    return-object p1

    .line 42
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 43
    :cond_4
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_7

    .line 44
    iget-object v2, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/kt/RecyclerView$gu;

    .line 45
    invoke-virtual {v2}, Lcom/byazt/kt/RecyclerView$gu;->yp()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/byazt/kt/RecyclerView$gu;->uj()I

    move-result v3

    if-ne v3, p1, :cond_6

    if-nez p2, :cond_5

    .line 46
    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    return-object v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public tt()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->yp:Lcom/byazt/kt/RecyclerView$i;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/byazt/kt/RecyclerView$i;->m:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/byazt/kt/RecyclerView$m;->x:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/byazt/kt/RecyclerView$m;->uj:I

    .line 3
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/byazt/kt/RecyclerView$m;->uj:I

    if-le v1, v2, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lcom/byazt/kt/RecyclerView$m;->ve(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public tt(II)V
    .locals 4

    .line 47
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 48
    iget-object v2, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/kt/RecyclerView$gu;

    if-eqz v2, :cond_0

    .line 49
    iget v3, v2, Lcom/byazt/kt/RecyclerView$gu;->ve:I

    if-lt v3, p1, :cond_0

    const/4 v3, 0x1

    .line 50
    invoke-virtual {v2, p2, v3}, Lcom/byazt/kt/RecyclerView$gu;->c(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public tt(Landroid/view/View;)V
    .locals 1

    .line 26
    invoke-static {p1}, Lcom/byazt/kt/RecyclerView;->n(Landroid/view/View;)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object p1

    const/4 v0, 0x0

    .line 27
    iput-object v0, p1, Lcom/byazt/kt/RecyclerView$gu;->u:Lcom/byazt/kt/RecyclerView$m;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p1, Lcom/byazt/kt/RecyclerView$gu;->yp:Z

    .line 29
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->t()V

    .line 30
    invoke-virtual {p0, p1}, Lcom/byazt/kt/RecyclerView$m;->tt(Lcom/byazt/kt/RecyclerView$gu;)V

    return-void
.end method

.method public tt(Lcom/byazt/kt/RecyclerView$gu;)V
    .locals 6

    .line 6
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->i()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_b

    iget-object v0, p1, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_b

    .line 7
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->rh()Z

    move-result v0

    if-nez v0, :cond_a

    .line 8
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->R_()Z

    move-result v0

    if-nez v0, :cond_9

    .line 9
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->zm()Z

    move-result v0

    .line 10
    iget-object v3, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v3, v3, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v3, p1}, Lcom/byazt/kt/RecyclerView$c;->tt(Lcom/byazt/kt/RecyclerView$gu;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->gu()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x0

    goto :goto_5

    .line 12
    :cond_2
    :goto_2
    iget v3, p0, Lcom/byazt/kt/RecyclerView$m;->uj:I

    if-lez v3, :cond_6

    const/16 v3, 0x20e

    invoke-virtual {p1, v3}, Lcom/byazt/kt/RecyclerView$gu;->c(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 13
    iget-object v3, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 14
    iget v4, p0, Lcom/byazt/kt/RecyclerView$m;->uj:I

    if-lt v3, v4, :cond_3

    if-lez v3, :cond_3

    .line 15
    invoke-virtual {p0, v1}, Lcom/byazt/kt/RecyclerView$m;->ve(I)V

    add-int/lit8 v3, v3, -0x1

    .line 16
    :cond_3
    sget-boolean v4, Lcom/byazt/kt/RecyclerView;->uj:Z

    if-eqz v4, :cond_5

    if-lez v3, :cond_5

    iget-object v4, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v4, v4, Lcom/byazt/kt/RecyclerView;->md:Lcom/byazt/kt/uj$c;

    iget v5, p1, Lcom/byazt/kt/RecyclerView$gu;->ve:I

    invoke-virtual {v4, v5}, Lcom/byazt/kt/uj$c;->c(I)Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v3, v3, -0x1

    :goto_3
    if-ltz v3, :cond_4

    .line 17
    iget-object v4, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/kt/RecyclerView$gu;

    iget v4, v4, Lcom/byazt/kt/RecyclerView$gu;->ve:I

    .line 18
    iget-object v5, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v5, v5, Lcom/byazt/kt/RecyclerView;->md:Lcom/byazt/kt/uj$c;

    invoke-virtual {v5, v4}, Lcom/byazt/kt/uj$c;->c(I)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_4
    add-int/2addr v3, v2

    .line 19
    :cond_5
    iget-object v4, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_7

    .line 20
    invoke-virtual {p0, p1, v2}, Lcom/byazt/kt/RecyclerView$m;->c(Lcom/byazt/kt/RecyclerView$gu;Z)V

    move v1, v3

    goto :goto_5

    :cond_7
    move v1, v3

    goto :goto_1

    .line 21
    :goto_5
    iget-object v3, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v3, v3, Lcom/byazt/kt/RecyclerView;->x:Lcom/byazt/kt/yp;

    invoke-virtual {v3, p1}, Lcom/byazt/kt/yp;->sp(Lcom/byazt/kt/RecyclerView$gu;)V

    if-nez v1, :cond_8

    if-nez v2, :cond_8

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 22
    iput-object v0, p1, Lcom/byazt/kt/RecyclerView$gu;->m:Lcom/byazt/kt/RecyclerView;

    :cond_8
    return-void

    .line 23
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->i()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_c

    const/4 v1, 0x1

    :cond_c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public uj(I)Landroid/view/View;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/kt/RecyclerView$gu;

    iget-object p1, p1, Lcom/byazt/kt/RecyclerView$gu;->c:Landroid/view/View;

    return-object p1
.end method

.method public uj()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/kt/RecyclerView$m;->ve(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    sget-boolean v0, Lcom/byazt/kt/RecyclerView;->uj:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->md:Lcom/byazt/kt/uj$c;

    invoke-virtual {v0}, Lcom/byazt/kt/uj$c;->c()V

    :cond_1
    return-void
.end method

.method public uj(Lcom/byazt/kt/RecyclerView$gu;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/byazt/kt/RecyclerView$c;->c(Lcom/byazt/kt/RecyclerView$gu;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v1, v0, Lcom/byazt/kt/RecyclerView;->h:Lcom/byazt/kt/RecyclerView$gt;

    if-eqz v1, :cond_1

    .line 10
    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->x:Lcom/byazt/kt/yp;

    invoke-virtual {v0, p1}, Lcom/byazt/kt/yp;->sp(Lcom/byazt/kt/RecyclerView$gu;)V

    :cond_1
    return-void
.end method

.method public ve()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/kt/RecyclerView$gu;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->sp:Ljava/util/List;

    return-object v0
.end method

.method public ve(I)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/kt/RecyclerView$gu;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/byazt/kt/RecyclerView$m;->c(Lcom/byazt/kt/RecyclerView$gu;Z)V

    .line 4
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public ve(II)V
    .locals 3

    add-int/2addr p2, p1

    .line 21
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 22
    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/kt/RecyclerView$gu;

    if-eqz v1, :cond_0

    .line 23
    iget v2, v1, Lcom/byazt/kt/RecyclerView$gu;->ve:I

    if-lt v2, p1, :cond_0

    if-ge v2, p2, :cond_0

    const/4 v2, 0x2

    .line 24
    invoke-virtual {v1, v2}, Lcom/byazt/kt/RecyclerView$gu;->tt(I)V

    .line 25
    invoke-virtual {p0, v0}, Lcom/byazt/kt/RecyclerView$m;->ve(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public ve(Landroid/view/View;)V
    .locals 2

    .line 5
    invoke-static {p1}, Lcom/byazt/kt/RecyclerView;->n(Landroid/view/View;)Lcom/byazt/kt/RecyclerView$gu;

    move-result-object p1

    const/16 v0, 0xc

    .line 6
    invoke-virtual {p1, v0}, Lcom/byazt/kt/RecyclerView$gu;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->yv()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/byazt/kt/RecyclerView;->tt(Lcom/byazt/kt/RecyclerView$gu;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->tt:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->tt:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x1

    .line 9
    invoke-virtual {p1, p0, v0}, Lcom/byazt/kt/RecyclerView$gu;->c(Lcom/byazt/kt/RecyclerView$m;Z)V

    .line 10
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->tt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 11
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->yp()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->nu()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$c;->tt()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    invoke-virtual {v1}, Lcom/byazt/kt/RecyclerView;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, p0, v0}, Lcom/byazt/kt/RecyclerView$gu;->c(Lcom/byazt/kt/RecyclerView$m;Z)V

    .line 14
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public ve(Lcom/byazt/kt/RecyclerView$gu;)V
    .locals 1

    .line 15
    iget-boolean v0, p1, Lcom/byazt/kt/RecyclerView$gu;->yp:Z

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->tt:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    const/4 v0, 0x0

    .line 18
    iput-object v0, p1, Lcom/byazt/kt/RecyclerView$gu;->u:Lcom/byazt/kt/RecyclerView$m;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p1, Lcom/byazt/kt/RecyclerView$gu;->yp:Z

    .line 20
    invoke-virtual {p1}, Lcom/byazt/kt/RecyclerView$gu;->t()V

    return-void
.end method

.method public x()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

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
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/byazt/kt/RecyclerView$m;->ve:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/byazt/kt/RecyclerView$gu;

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    const/4 v3, 0x6

    .line 21
    invoke-virtual {v2, v3}, Lcom/byazt/kt/RecyclerView$gu;->tt(I)V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v2, v3}, Lcom/byazt/kt/RecyclerView$gu;->c(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$m;->a:Lcom/byazt/kt/RecyclerView;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/byazt/kt/RecyclerView;->u:Lcom/byazt/kt/RecyclerView$c;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$c;->tt()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_3

    .line 42
    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/kt/RecyclerView$m;->uj()V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void
.end method
