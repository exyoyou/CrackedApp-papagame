.class public final Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$5$onBind$1$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$5;->onBind(Lv2/a;ILcom/join/mgps/dto/CommonMultiItemBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J \u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/join/kotlin/ui/search/adapter/SearchListGameAdapter$5$onBind$1$1",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrollStateChanged",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "newState",
        "",
        "onScrolled",
        "dx",
        "dy",
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
.field final synthetic $holder:Lv2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv2/a<",
            "Lcom/join/android/app/mgsim/wufun/databinding/t50;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isExposure:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic $lastVisibleIndex:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic $mAdapter:Lcom/join/kotlin/ui/search/adapter/SearchListAdGridAdapter;

.field final synthetic this$0:Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/join/kotlin/ui/search/adapter/SearchListAdGridAdapter;Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;Lv2/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/join/kotlin/ui/search/adapter/SearchListAdGridAdapter;",
            "Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;",
            "Lv2/a<",
            "Lcom/join/android/app/mgsim/wufun/databinding/t50;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$5$onBind$1$1;->$isExposure:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$5$onBind$1$1;->$lastVisibleIndex:Lkotlin/jvm/internal/Ref$IntRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$5$onBind$1$1;->$mAdapter:Lcom/join/kotlin/ui/search/adapter/SearchListAdGridAdapter;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$5$onBind$1$1;->this$0:Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$5$onBind$1$1;->$holder:Lv2/a;

    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 12
    .line 13
    .line 14
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
    if-nez p2, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$5$onBind$1$1;->$isExposure:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 12
    .line 13
    iget-object p2, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$5$onBind$1$1;->$lastVisibleIndex:Lkotlin/jvm/internal/Ref$IntRef;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$5$onBind$1$1;->$mAdapter:Lcom/join/kotlin/ui/search/adapter/SearchListAdGridAdapter;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$5$onBind$1$1;->this$0:Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;

    .line 18
    .line 19
    invoke-static {p1, p2, v0, v1}, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$5;->access$onBind$exposureItem(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lcom/join/kotlin/ui/search/adapter/SearchListAdGridAdapter;Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$5$onBind$1$1;->$lastVisibleIndex:Lkotlin/jvm/internal/Ref$IntRef;

    .line 10
    .line 11
    iget-object p2, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$5$onBind$1$1;->$holder:Lv2/a;

    .line 12
    .line 13
    invoke-virtual {p2}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/t50;

    .line 18
    .line 19
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/t50;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    invoke-static {p2}, Lcom/join/android/app/component/video/h;->q(Landroidx/recyclerview/widget/RecyclerView;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    iput p2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 26
    .line 27
    return-void
.end method
