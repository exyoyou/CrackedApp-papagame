.class public final Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$ptrDefaultHandler$1;
.super Lcom/join/mgps/ptr/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0002J \u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/join/kotlin/base/widget/recycleview/XQuickRecyclerView$ptrDefaultHandler$1",
        "Lcom/join/mgps/ptr/PtrDefaultHandler;",
        "onRefreshBegin",
        "",
        "frame",
        "Lcom/join/mgps/ptr/PtrFrameLayout;",
        "setFooterDefault",
        "checkCanDoRefresh",
        "",
        "content",
        "Landroid/view/View;",
        "header",
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
.field final synthetic this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;


# direct methods
.method constructor <init>(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$ptrDefaultHandler$1;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/mgps/ptr/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final setFooterDefault()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$ptrDefaultHandler$1;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getLoadingMoreEnabled$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public checkCanDoRefresh(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    const-string v0, "frame"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "content"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "header"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$ptrDefaultHandler$1;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getAppbarState$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    invoke-static {p1, p2, p3}, Lcom/join/mgps/ptr/a;->checkContentCanBePulledDown(Lcom/join/mgps/ptr/PtrFrameLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const/4 p1, 0x1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    :goto_0
    return p1
.end method

.method public onRefreshBegin(Lcom/join/mgps/ptr/PtrFrameLayout;)V
    .locals 1

    .line 1
    const-string v0, "frame"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$ptrDefaultHandler$1;->setFooterDefault()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$ptrDefaultHandler$1;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getMLoadingListener$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$ptrDefaultHandler$1;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$getMLoadingListener$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;)Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$LoadingListener;->onRefresh()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
