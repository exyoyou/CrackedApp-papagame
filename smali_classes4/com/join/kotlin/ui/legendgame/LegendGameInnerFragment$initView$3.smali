.class public final Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$3",
        "Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;",
        "onRefresh",
        "",
        "onLoadMore",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$3;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 0

    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment$initView$3;->this$0:Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;->access$getZoneViewModel(Lcom/join/kotlin/ui/legendgame/LegendGameInnerFragment;)Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/ui/legendgame/viewmodel/LegendGameZoneViewModel;->loadZone()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
