.class abstract Lcom/melnykov/fab/c;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field private t:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method abstract m()V
.end method

.method abstract n()V
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/melnykov/fab/c;->t:I

    .line 2
    .line 3
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget p2, p0, Lcom/melnykov/fab/c;->t:I

    .line 6
    .line 7
    if-le p1, p2, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    if-eqz p1, :cond_2

    .line 13
    .line 14
    if-lez p3, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/melnykov/fab/c;->n()V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/melnykov/fab/c;->m()V

    .line 21
    .line 22
    .line 23
    :cond_2
    :goto_1
    return-void
.end method
