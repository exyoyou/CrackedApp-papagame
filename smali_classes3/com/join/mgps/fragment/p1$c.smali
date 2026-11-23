.class Lcom/join/mgps/fragment/p1$c;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/p1;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Lcom/join/mgps/fragment/p1;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/p1;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/p1$c;->t:Lcom/join/mgps/fragment/p1;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "newState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    .line 3
    .line 4
    if-nez p2, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/p1$c;->t:Lcom/join/mgps/fragment/p1;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/join/mgps/fragment/p1;->o:Lcom/join/android/app/component/video/h;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 p2, 0x2

    .line 13
    invoke-virtual {p1, p2}, Lcom/join/android/app/component/video/h;->h(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/p1$c;->t:Lcom/join/mgps/fragment/p1;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/mgps/fragment/p1;->Q(Lcom/join/mgps/fragment/p1;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method
