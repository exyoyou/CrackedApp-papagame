.class public final Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$1",
        "Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$OnSelectedTabListener;",
        "onSelected",
        "",
        "id",
        "",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->setSelectedType(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->getChoiceListData()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/Collection;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 26
    :goto_1
    if-eqz v0, :cond_2

    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment$onCreateView$1;->this$0:Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Lcom/join/kotlin/ui/findgame/FindGameClassfyFragment;->showTypeList(I)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
