.class Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final b:I

.field private final c:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(ILcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p2    # Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "layoutManager",
            "recyclerView"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$e;->b:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$e;->c:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$e;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shencoder/pagergridlayoutmanager/b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$e;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$e;->c:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/shencoder/pagergridlayoutmanager/b;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;)V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$e;->b:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$e;->c:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
