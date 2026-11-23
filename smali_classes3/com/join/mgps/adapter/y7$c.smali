.class Lcom/join/mgps/adapter/y7$c;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/y7;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic t:Lcom/join/mgps/adapter/g8;

.field final synthetic u:Lcom/join/mgps/adapter/y7;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/y7;Lcom/join/mgps/adapter/g8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$mAdapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/y7$c;->u:Lcom/join/mgps/adapter/y7;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/y7$c;->t:Lcom/join/mgps/adapter/g8;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 6
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
    invoke-static {p1}, Lcom/join/android/app/component/video/h;->m(Landroidx/recyclerview/widget/RecyclerView;)[I

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const/4 v0, 0x0

    .line 11
    aget v0, p2, v0

    .line 12
    .line 13
    :goto_0
    const/4 v1, 0x1

    .line 14
    aget v2, p2, v1

    .line 15
    .line 16
    if-gt v0, v2, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/adapter/y7$c;->t:Lcom/join/mgps/adapter/g8;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v3}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    sget-object v4, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 47
    .line 48
    invoke-virtual {v2}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v5}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v5}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v3, v4, v5}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 68
    .line 69
    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method
