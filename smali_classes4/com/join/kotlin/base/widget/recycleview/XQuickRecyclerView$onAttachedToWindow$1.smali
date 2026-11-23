.class public final Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$onAttachedToWindow$1;
.super Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/join/kotlin/base/widget/recycleview/XQuickRecyclerView$onAttachedToWindow$1",
        "Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener;",
        "onStateChanged",
        "",
        "appBarLayout",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        "state",
        "Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;",
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
    iput-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$onAttachedToWindow$1;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/google/android/material/appbar/AppBarLayout;Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;)V
    .locals 1

    .line 1
    const-string v0, "appBarLayout"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "state"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView$onAttachedToWindow$1;->this$0:Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;->access$setAppbarState$p(Lcom/join/kotlin/base/widget/recycleview/XQuickRecyclerView;Lcom/join/android/app/component/xrecyclerview/AppBarStateChangeListener$State;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
