.class Lcom/xuanyu/stickyheader/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xuanyu/stickyheader/f;->c(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/ViewGroup;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic d:I


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$stickyHeaderLayout",
            "val$recyclerView",
            "val$offset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xuanyu/stickyheader/f$a;->b:Landroid/view/ViewGroup;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xuanyu/stickyheader/f$a;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    iput p3, p0, Lcom/xuanyu/stickyheader/f$a;->d:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xuanyu/stickyheader/f$a;->b:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Lcom/xuanyu/stickyheader/i;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/xuanyu/stickyheader/f$a;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/xuanyu/stickyheader/f$a;->b:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-direct {v1, v2, v3, v0}, Lcom/xuanyu/stickyheader/i;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/ViewGroup;I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/xuanyu/stickyheader/f$a;->d:I

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/xuanyu/stickyheader/i;->s(I)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/xuanyu/stickyheader/f;->a()Ljava/util/WeakHashMap;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v2, p0, Lcom/xuanyu/stickyheader/f$a;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/xuanyu/stickyheader/f$a;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
