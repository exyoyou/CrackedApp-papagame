.class public final Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCategoryDetailItemFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CategoryDetailItemFragment.kt\ncom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,464:1\n1#2:465\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2",
        "Lcom/join/android/app/component/xrecyclerview/XRecyclerView$LoadingListener;",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCategoryDetailItemFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CategoryDetailItemFragment.kt\ncom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,464:1\n1#2:465\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getRequestArgs()Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getPage()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/join/kotlin/ui/findgame/data/CategoryRequest;->setPage(I)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment$initView$2;->this$0:Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getCategoryPrensenter()Lcom/join/kotlin/presenter/CategoryPrensenter;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1}, Lcom/join/kotlin/ui/findgame/CategoryDetailItemFragment;->getRequestArgs()Lcom/join/kotlin/ui/findgame/data/CategoryRequest;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v2, v0, v1}, Lcom/join/kotlin/presenter/CategoryPrensenter;->loadCategoryData(Landroid/content/Context;Lcom/join/kotlin/ui/findgame/data/CategoryRequest;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 0

    return-void
.end method
