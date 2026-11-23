.class Lcom/join/mgps/activity/q8$f;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/q8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/q8$e;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic f:Lcom/join/mgps/activity/q8;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/q8;Landroidx/fragment/app/Fragment;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/q8;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "fragment",
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/q8$e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/q8$f;->f:Lcom/join/mgps/activity/q8;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/join/mgps/activity/q8$f;->e:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    new-instance p1, Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    invoke-direct {p1}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_0
    new-instance p1, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;-><init>()V

    .line 24
    .line 25
    .line 26
    return-object p1

    .line 27
    :cond_1
    new-instance p1, Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;

    .line 28
    .line 29
    invoke-direct {p1}, Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;-><init>()V

    .line 30
    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_2
    new-instance p1, Lcom/join/kotlin/EveryDayNewGameFragment;

    .line 34
    .line 35
    invoke-direct {p1}, Lcom/join/kotlin/EveryDayNewGameFragment;-><init>()V

    .line 36
    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_3
    new-instance p1, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 40
    .line 41
    invoke-direct {p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;-><init>()V

    .line 42
    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_4
    new-instance p1, Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_;

    .line 46
    .line 47
    invoke-direct {p1}, Lcom/join/mgps/activity/PapaMainV4SubHomeFragment_;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/activity/q8$f;->f:Lcom/join/mgps/activity/q8;

    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/t8;->w0(Lcom/join/mgps/callbacks/k;)V

    .line 53
    .line 54
    .line 55
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/q8$f;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
