.class public Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "c"
.end annotation


# static fields
.field protected static final i:I = -0x1

.field protected static final j:I = 0x1

.field protected static final k:I = -0x80000000


# instance fields
.field protected a:I

.field protected b:Z

.field protected c:I

.field protected d:I

.field protected e:I

.field protected final f:Landroid/graphics/Rect;

.field protected g:I

.field protected h:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->f:Landroid/graphics/Rect;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected a(IIIILandroidx/recyclerview/widget/RecyclerView$State;)I
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
            "currentPosition",
            "orientation",
            "rows",
            "columns",
            "state"
        }
    .end annotation

    .line 1
    mul-int v0, p3, p4

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez p2, :cond_4

    .line 5
    .line 6
    rem-int p2, p1, v0

    .line 7
    .line 8
    sub-int/2addr v0, v1

    .line 9
    if-ne p2, v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    rem-int v0, p1, p4

    .line 13
    .line 14
    div-int/2addr p2, p4

    .line 15
    sub-int/2addr p3, v1

    .line 16
    if-ne p2, p3, :cond_1

    .line 17
    .line 18
    const/4 p3, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p3, 0x0

    .line 21
    :goto_0
    if-eqz p3, :cond_2

    .line 22
    .line 23
    :goto_1
    mul-int p2, p2, p4

    .line 24
    .line 25
    sub-int/2addr p1, p2

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    add-int p3, p1, p4

    .line 28
    .line 29
    invoke-virtual {p5}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 30
    .line 31
    .line 32
    move-result p5

    .line 33
    if-lt p3, p5, :cond_3

    .line 34
    .line 35
    add-int/lit8 p5, p4, -0x1

    .line 36
    .line 37
    if-eq v0, p5, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    move p1, p3

    .line 41
    goto :goto_3

    .line 42
    :cond_4
    :goto_2
    add-int/2addr p1, v1

    .line 43
    :goto_3
    return p1
.end method

.method protected b(IIIILandroidx/recyclerview/widget/RecyclerView$State;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentPosition",
            "orientation",
            "rows",
            "columns",
            "state"
        }
    .end annotation

    .line 1
    mul-int p5, p3, p4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p2, :cond_3

    .line 5
    .line 6
    rem-int p2, p1, p5

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    div-int/2addr p2, p4

    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 p2, 0x0

    .line 17
    :goto_0
    if-eqz p2, :cond_2

    .line 18
    .line 19
    sub-int/2addr p1, v0

    .line 20
    sub-int/2addr p3, v0

    .line 21
    mul-int p3, p3, p4

    .line 22
    .line 23
    add-int/2addr p1, p3

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    sub-int/2addr p1, p4

    .line 26
    goto :goto_2

    .line 27
    :cond_3
    :goto_1
    sub-int/2addr p1, v0

    .line 28
    :goto_2
    return p1
.end method

.method protected c(Landroidx/recyclerview/widget/RecyclerView$State;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->c:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-ge v0, p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method protected d(Landroidx/recyclerview/widget/RecyclerView$Recycler;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recycler"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->c:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected e(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$c;->f:Landroid/graphics/Rect;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
