.class public final Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment$setupTabs$2;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;->setupTabs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/join/kotlin/ui/netgame/NetGameCategoryFragment$setupTabs$2",
        "Landroidx/viewpager2/adapter/FragmentStateAdapter;",
        "getItemCount",
        "",
        "createFragment",
        "Landroidx/fragment/app/Fragment;",
        "position",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment$setupTabs$2;->this$0:Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment$setupTabs$2;->this$0:Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;->access$getTabTypes$p(Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/join/kotlin/ui/netgame/data/NetGameTypeData;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/kotlin/ui/netgame/data/NetGameTypeData;->getId()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance p1, Lcom/join/mgps/activity/p0;

    .line 20
    .line 21
    invoke-direct {p1}, Lcom/join/mgps/activity/p0;-><init>()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    sget-object v1, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;->Companion:Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment$setupTabs$2;->this$0:Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;

    .line 28
    .line 29
    invoke-static {v2}, Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;->access$getTabTypes$p(Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/join/kotlin/ui/netgame/data/NetGameTypeData;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/join/kotlin/ui/netgame/data/NetGameTypeData;->getTitle()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    const-string v2, ""

    .line 46
    .line 47
    :cond_1
    const/4 v3, 0x1

    .line 48
    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;->newInstance(ILjava/lang/String;IZ)Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment$setupTabs$2;->this$0:Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;->access$getTabTypes$p(Lcom/join/kotlin/ui/netgame/NetGameCategoryFragment;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
