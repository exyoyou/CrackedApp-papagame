.class Lcom/join/mgps/activity/SimulatorFastEntryActivity$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SimulatorFastEntryActivity;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Lcom/join/mgps/activity/SimulatorFastEntryActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SimulatorFastEntryActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity$a;->t:Lcom/join/mgps/activity/SimulatorFastEntryActivity;

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
    if-nez p2, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity$a;->t:Lcom/join/mgps/activity/SimulatorFastEntryActivity;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->expListPoint()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity$a;->t:Lcom/join/mgps/activity/SimulatorFastEntryActivity;

    .line 12
    .line 13
    if-eqz p2, :cond_1

    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 p2, 0x0

    .line 18
    :goto_0
    invoke-static {p1, p2}, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->access$002(Lcom/join/mgps/activity/SimulatorFastEntryActivity;Z)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
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
            "recyclerView",
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/join/android/app/component/video/h;->m(Landroidx/recyclerview/widget/RecyclerView;)[I

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity$a;->t:Lcom/join/mgps/activity/SimulatorFastEntryActivity;

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    aget p3, p1, p3

    .line 12
    .line 13
    invoke-static {p2, p3}, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->access$102(Lcom/join/mgps/activity/SimulatorFastEntryActivity;I)I

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/activity/SimulatorFastEntryActivity$a;->t:Lcom/join/mgps/activity/SimulatorFastEntryActivity;

    .line 17
    .line 18
    const/4 p3, 0x1

    .line 19
    aget p1, p1, p3

    .line 20
    .line 21
    invoke-static {p2, p1}, Lcom/join/mgps/activity/SimulatorFastEntryActivity;->access$202(Lcom/join/mgps/activity/SimulatorFastEntryActivity;I)I

    .line 22
    .line 23
    .line 24
    return-void
.end method
