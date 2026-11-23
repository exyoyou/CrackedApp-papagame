.class public Lcom/byazt/kt/RecyclerView$da;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xa6,
        0x941
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/kt/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "da"
.end annotation


# instance fields
.field public c:Lcom/byazt/kt/RecyclerView$gu;

.field public final tt:Landroid/graphics/Rect;

.field public uj:Z

.field public ve:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$da;->tt:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/byazt/kt/RecyclerView$da;->ve:Z

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/byazt/kt/RecyclerView$da;->uj:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$da;->tt:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/byazt/kt/RecyclerView$da;->ve:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/kt/RecyclerView$da;->uj:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$da;->tt:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/byazt/kt/RecyclerView$da;->ve:Z

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/byazt/kt/RecyclerView$da;->uj:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 10
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$da;->tt:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/byazt/kt/RecyclerView$da;->ve:Z

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcom/byazt/kt/RecyclerView$da;->uj:Z

    return-void
.end method

.method public constructor <init>(Lcom/byazt/kt/RecyclerView$da;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/byazt/kt/RecyclerView$da;->tt:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Lcom/byazt/kt/RecyclerView$da;->ve:Z

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/byazt/kt/RecyclerView$da;->uj:Z

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$da;->c:Lcom/byazt/kt/RecyclerView$gu;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->yp()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public tt()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$da;->c:Lcom/byazt/kt/RecyclerView$gu;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->nu()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public uj()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$da;->c:Lcom/byazt/kt/RecyclerView$gu;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->uj()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kt/RecyclerView$da;->c:Lcom/byazt/kt/RecyclerView$gu;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kt/RecyclerView$gu;->yv()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
