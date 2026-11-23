.class public final Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$setupTabs$2;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;->setupTabs()V
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
        "com/join/kotlin/ui/legendgame/LegendGameCategoryFragment$setupTabs$2",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$setupTabs$2;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

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
    .locals 3

    .line 1
    sget-object v0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->Companion:Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$setupTabs$2;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;->access$getTabTypes$p(Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lcom/join/kotlin/ui/legendgame/data/LegendGameTabData;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/join/kotlin/ui/legendgame/data/LegendGameTabData;->getId()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$setupTabs$2;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;->access$getTabTypes$p(Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/join/kotlin/ui/legendgame/data/LegendGameTabData;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/join/kotlin/ui/legendgame/data/LegendGameTabData;->getTitle()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    const-string v2, ""

    .line 38
    .line 39
    :cond_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$Companion;->newInstance(ILjava/lang/String;I)Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment$setupTabs$2;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;->access$getTabTypes$p(Lcom/join/kotlin/ui/legendgame/LegendGameCategoryFragment;)Ljava/util/List;

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
