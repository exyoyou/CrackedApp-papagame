.class public final Lcom/join/kotlin/ui/gameexpress/GameExpressActivity$initView$2$11;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/join/kotlin/ui/gameexpress/GameExpressActivity$initView$2$11",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
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
.field final synthetic this$0:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/GameExpressActivity$initView$2$11;->this$0:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

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
    .locals 2

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/kotlin/ui/gameexpress/GameExpressActivity$initView$2$11;->this$0:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x0

    .line 17
    :goto_0
    invoke-static {p1, v1}, Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;->access$setScrolling$p(Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;Z)V

    .line 18
    .line 19
    .line 20
    if-nez p2, :cond_2

    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/kotlin/ui/gameexpress/GameExpressActivity$initView$2$11;->this$0:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;->access$getVideoHelper$p(Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;)Lcom/join/android/app/component/video/h;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/join/android/app/component/video/h;->i(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/gameexpress/GameExpressActivity$initView$2$11;->this$0:Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;->access$expListGame(Lcom/join/kotlin/ui/gameexpress/GameExpressActivity;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method
