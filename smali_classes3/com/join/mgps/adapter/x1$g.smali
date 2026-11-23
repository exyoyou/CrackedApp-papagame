.class Lcom/join/mgps/adapter/x1$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lit/sephiroth/android/library/widget/AbsHListView$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/x1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/join/mgps/adapter/x1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/x1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$g;->d:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lit/sephiroth/android/library/widget/AbsHListView;III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$g;->d:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/adapter/x1;->r:Lcom/join/android/app/component/video/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/join/android/app/component/video/c;->g(Lit/sephiroth/android/library/widget/AbsHListView;III)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public b(Lit/sephiroth/android/library/widget/AbsHListView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/x1$g;->d:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/adapter/x1;->r:Lcom/join/android/app/component/video/c;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/join/android/app/component/video/c;->k(Lit/sephiroth/android/library/widget/AbsHListView;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
