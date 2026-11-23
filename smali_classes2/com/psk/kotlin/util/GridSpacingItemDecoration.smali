.class public final Lcom/psk/kotlin/util/GridSpacingItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J(\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/psk/kotlin/util/GridSpacingItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "spanCount",
        "",
        "spacing",
        "includeEdge",
        "",
        "<init>",
        "(IIZ)V",
        "getItemOffsets",
        "",
        "outRect",
        "Landroid/graphics/Rect;",
        "view",
        "Landroid/view/View;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final includeEdge:Z

.field private final spacing:I

.field private final spanCount:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/psk/kotlin/util/GridSpacingItemDecoration;->spanCount:I

    .line 5
    .line 6
    iput p2, p0, Lcom/psk/kotlin/util/GridSpacingItemDecoration;->spacing:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/psk/kotlin/util/GridSpacingItemDecoration;->includeEdge:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "outRect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "state"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    iget p3, p0, Lcom/psk/kotlin/util/GridSpacingItemDecoration;->spanCount:I

    .line 29
    .line 30
    rem-int p4, p2, p3

    .line 31
    .line 32
    iget-boolean v0, p0, Lcom/psk/kotlin/util/GridSpacingItemDecoration;->includeEdge:Z

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget v0, p0, Lcom/psk/kotlin/util/GridSpacingItemDecoration;->spacing:I

    .line 37
    .line 38
    mul-int v1, p4, v0

    .line 39
    .line 40
    div-int/2addr v1, p3

    .line 41
    sub-int v1, v0, v1

    .line 42
    .line 43
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 44
    .line 45
    add-int/lit8 p4, p4, 0x1

    .line 46
    .line 47
    mul-int p4, p4, v0

    .line 48
    .line 49
    div-int/2addr p4, p3

    .line 50
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 51
    .line 52
    if-ge p2, p3, :cond_0

    .line 53
    .line 54
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 55
    .line 56
    :cond_0
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget v0, p0, Lcom/psk/kotlin/util/GridSpacingItemDecoration;->spacing:I

    .line 60
    .line 61
    mul-int v1, p4, v0

    .line 62
    .line 63
    div-int/2addr v1, p3

    .line 64
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 65
    .line 66
    add-int/lit8 p4, p4, 0x1

    .line 67
    .line 68
    mul-int p4, p4, v0

    .line 69
    .line 70
    div-int/2addr p4, p3

    .line 71
    sub-int p4, v0, p4

    .line 72
    .line 73
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 74
    .line 75
    if-lt p2, p3, :cond_2

    .line 76
    .line 77
    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 78
    .line 79
    :cond_2
    :goto_0
    return-void
.end method
