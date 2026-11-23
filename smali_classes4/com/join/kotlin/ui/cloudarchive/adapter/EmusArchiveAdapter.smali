.class public final Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;
.super Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter<",
        "Lcom/join/mgps/dto/CloudListDataBean;",
        "Landroidx/databinding/ViewDataBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\"\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u0019H\u0014J\"\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020\u00022\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0014J\"\u0010*\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020\u00022\u0008\u0010(\u001a\u0004\u0018\u00010)H\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\n \u0014*\u0004\u0018\u00010\u00130\u0013\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u001c\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001bR\u0011\u0010\u001e\u001a\u00020\u001f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!\u00a8\u0006+"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;",
        "Lcom/join/mgps/dto/CloudListDataBean;",
        "Landroidx/databinding/ViewDataBinding;",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;",
        "<init>",
        "(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "getListener",
        "()Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;",
        "setListener",
        "(Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V",
        "defaultDisplay",
        "Landroid/view/Display;",
        "kotlin.jvm.PlatformType",
        "getDefaultDisplay",
        "()Landroid/view/Display;",
        "Landroid/view/Display;",
        "width",
        "",
        "getWidth",
        "()I",
        "height",
        "getHeight",
        "ratio",
        "",
        "getRatio",
        "()F",
        "getLayoutResId",
        "viewType",
        "onBindItem",
        "",
        "binding",
        "item",
        "holder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "onBindItemPayloads",
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
.field private context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final defaultDisplay:Landroid/view/Display;

.field private final height:I

.field private listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ratio:F

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->context:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;

    .line 17
    .line 18
    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    .line 19
    .line 20
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast p1, Landroid/app/Activity;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->defaultDisplay:Landroid/view/Display;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iput p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->width:I

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->height:I

    .line 46
    .line 47
    if-le p2, p1, :cond_0

    .line 48
    .line 49
    int-to-float p2, p2

    .line 50
    int-to-float p1, p1

    .line 51
    div-float/2addr p2, p1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    int-to-float p1, p1

    .line 54
    int-to-float p2, p2

    .line 55
    div-float p2, p1, p2

    .line 56
    .line 57
    :goto_0
    iput p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->ratio:F

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->defaultDisplay:Landroid/view/Display;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->height:I

    .line 2
    .line 3
    return v0
.end method

.method protected getLayoutResId(I)I
    .locals 0

    const p1, 0x7f0d0257

    return p1
.end method

.method public final getListener()Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->ratio:F

    .line 2
    .line 3
    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->width:I

    .line 2
    .line 3
    return v0
.end method

.method protected onBindItem(Landroidx/databinding/ViewDataBinding;Lcom/join/mgps/dto/CloudListDataBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/databinding/ViewDataBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p3, "binding"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of p3, p1, Lcom/join/android/app/mgsim/wufun/databinding/cj;

    if-eqz p3, :cond_0

    .line 3
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/cj;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/cj;->u(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 4
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/cj;->t(Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindItem(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->onBindItem(Landroidx/databinding/ViewDataBinding;Lcom/join/mgps/dto/CloudListDataBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Lcom/join/mgps/dto/CloudListDataBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1    # Landroidx/databinding/ViewDataBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CloudListDataBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p3, "binding"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of p3, p1, Lcom/join/android/app/mgsim/wufun/databinding/cj;

    if-eqz p3, :cond_0

    .line 3
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/cj;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/cj;->u(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 4
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/cj;->t(Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Lcom/join/mgps/dto/CloudListDataBean;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public final setListener(Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/EmusArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnEmusClickArchiveListener;

    .line 7
    .line 8
    return-void
.end method
