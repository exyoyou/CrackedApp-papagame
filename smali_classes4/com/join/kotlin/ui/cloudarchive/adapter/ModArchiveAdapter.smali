.class public final Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;
.super Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$ModArchiveType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter<",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "Landroidx/databinding/ViewDataBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u00012B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\'\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020\u001eH\u0014J\u0010\u0010)\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020\u001eH\u0016J\"\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u00022\u0008\u0010/\u001a\u0004\u0018\u000100H\u0014J\"\u00101\u001a\u00020,2\u0006\u0010-\u001a\u00020\u00032\u0006\u0010.\u001a\u00020\u00022\u0008\u0010/\u001a\u0004\u0018\u000100H\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u0017\u001a\n \u0019*\u0004\u0018\u00010\u00180\u0018\u00a2\u0006\n\n\u0002\u0010\u001c\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u001d\u001a\u00020\u001e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010!\u001a\u00020\u001e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010 R\u0011\u0010#\u001a\u00020$\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&\u00a8\u00063"
    }
    d2 = {
        "Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;",
        "Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;",
        "Lcom/psk/kotlin/util/CommonListMainData;",
        "Landroidx/databinding/ViewDataBinding;",
        "context",
        "Landroid/content/Context;",
        "listener",
        "Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;",
        "isChoice",
        "",
        "<init>",
        "(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;Z)V",
        "getContext",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
        "getListener",
        "()Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;",
        "setListener",
        "(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V",
        "()Z",
        "setChoice",
        "(Z)V",
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
        "getItemViewType",
        "position",
        "onBindItem",
        "",
        "binding",
        "item",
        "holder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "onBindItemPayloads",
        "ModArchiveType",
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

.field private isChoice:Z

.field private listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ratio:F

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->context:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 17
    .line 18
    iput-boolean p3, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->isChoice:Z

    .line 19
    .line 20
    const-string p2, "null cannot be cast to non-null type android.app.Activity"

    .line 21
    .line 22
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast p1, Landroid/app/Activity;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->defaultDisplay:Landroid/view/Display;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    iput p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->width:I

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->height:I

    .line 48
    .line 49
    if-le p2, p1, :cond_0

    .line 50
    .line 51
    int-to-float p2, p2

    .line 52
    int-to-float p1, p1

    .line 53
    div-float/2addr p2, p1

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    int-to-float p1, p1

    .line 56
    int-to-float p2, p2

    .line 57
    div-float p2, p1, p2

    .line 58
    .line 59
    :goto_0
    iput p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->ratio:F

    .line 60
    .line 61
    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/databinding/ViewDataBinding;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->onBindItem$lambda$2(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/databinding/ViewDataBinding;)V

    return-void
.end method

.method public static synthetic d(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/databinding/ViewDataBinding;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->onBindItem$lambda$4(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/databinding/ViewDataBinding;)V

    return-void
.end method

.method public static synthetic e(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->onBindItem$lambda$3(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->onBindItem$lambda$1(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->onBindItem$lambda$5(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/databinding/ViewDataBinding;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->onBindItem$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/databinding/ViewDataBinding;)V

    return-void
.end method

.method public static synthetic i(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/databinding/ViewDataBinding;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->onBindItem$lambda$6(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/databinding/ViewDataBinding;)V

    return-void
.end method

.method public static synthetic j(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->onBindItem$lambda$7(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    return-void
.end method

.method private static final onBindItem$lambda$0(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/databinding/ViewDataBinding;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowMoreStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->b:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x2

    .line 30
    const/4 v5, 0x0

    .line 31
    if-le v3, v2, :cond_1

    .line 32
    .line 33
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->f:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 41
    .line 42
    invoke-virtual {p0, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-lez v3, :cond_4

    .line 47
    .line 48
    sub-int/2addr v3, v2

    .line 49
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-lez v0, :cond_2

    .line 54
    .line 55
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->f:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 63
    .line 64
    invoke-virtual {p0, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->f:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 76
    .line 77
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->f:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_0
    return-void
.end method

.method private static final onBindItem$lambda$1(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 1

    .line 1
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->f:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string v0, "\u5c55\u5f00"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 20
    .line 21
    const/4 p2, 0x3

    .line 22
    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->b:Landroid/widget/TextView;

    .line 26
    .line 27
    const/4 p2, 0x4

    .line 28
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->f:Landroid/widget/TextView;

    .line 32
    .line 33
    const-string p1, "\u6536\u8d77"

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->f:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 47
    .line 48
    const/4 p2, 0x2

    .line 49
    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->b:Landroid/widget/TextView;

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method private static final onBindItem$lambda$2(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/databinding/ViewDataBinding;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowMoreStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/om0;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->b:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x2

    .line 30
    const/4 v5, 0x0

    .line 31
    if-le v3, v2, :cond_1

    .line 32
    .line 33
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->f:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 41
    .line 42
    invoke-virtual {p0, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-lez v3, :cond_4

    .line 47
    .line 48
    sub-int/2addr v3, v2

    .line 49
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-lez v0, :cond_2

    .line 54
    .line 55
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->f:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 63
    .line 64
    invoke-virtual {p0, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->f:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 76
    .line 77
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/om0;->f:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_0
    return-void
.end method

.method private static final onBindItem$lambda$3(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 1

    .line 1
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->f:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string v0, "\u5c55\u5f00"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 20
    .line 21
    const/4 p2, 0x3

    .line 22
    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->b:Landroid/widget/TextView;

    .line 26
    .line 27
    const/4 p2, 0x4

    .line 28
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->f:Landroid/widget/TextView;

    .line 32
    .line 33
    const-string p1, "\u6536\u8d77"

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->f:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 47
    .line 48
    const/4 p2, 0x2

    .line 49
    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/om0;->b:Landroid/widget/TextView;

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method private static final onBindItem$lambda$4(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/databinding/ViewDataBinding;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowMoreStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/um0;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/um0;->b:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x2

    .line 30
    const/4 v5, 0x0

    .line 31
    if-le v3, v2, :cond_1

    .line 32
    .line 33
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/um0;->h:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 41
    .line 42
    invoke-virtual {p0, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-lez v3, :cond_4

    .line 47
    .line 48
    sub-int/2addr v3, v2

    .line 49
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-lez v0, :cond_2

    .line 54
    .line 55
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/um0;->h:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 63
    .line 64
    invoke-virtual {p0, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/um0;->h:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 76
    .line 77
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/um0;->h:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_0
    return-void
.end method

.method private static final onBindItem$lambda$5(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 1

    .line 1
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/um0;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/um0;->h:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string v0, "\u5c55\u5f00"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 20
    .line 21
    const/4 p2, 0x3

    .line 22
    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/um0;->b:Landroid/widget/TextView;

    .line 26
    .line 27
    const/4 p2, 0x4

    .line 28
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/um0;->h:Landroid/widget/TextView;

    .line 32
    .line 33
    const-string p1, "\u6536\u8d77"

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/um0;->h:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 47
    .line 48
    const/4 p2, 0x2

    .line 49
    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/um0;->b:Landroid/widget/TextView;

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method private static final onBindItem$lambda$6(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/databinding/ViewDataBinding;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowMoreStatus()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->b:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x2

    .line 30
    const/4 v5, 0x0

    .line 31
    if-le v3, v2, :cond_1

    .line 32
    .line 33
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->h:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 41
    .line 42
    invoke-virtual {p0, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-lez v3, :cond_4

    .line 47
    .line 48
    sub-int/2addr v3, v2

    .line 49
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-lez v0, :cond_2

    .line 54
    .line 55
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->h:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 63
    .line 64
    invoke-virtual {p0, v4}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->h:Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 76
    .line 77
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->h:Landroid/widget/TextView;

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 89
    .line 90
    invoke-virtual {p0, v2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_0
    return-void
.end method

.method private static final onBindItem$lambda$7(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V
    .locals 1

    .line 1
    check-cast p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->h:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string v0, "\u5c55\u5f00"

    .line 10
    .line 11
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 20
    .line 21
    const/4 p2, 0x3

    .line 22
    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->b:Landroid/widget/TextView;

    .line 26
    .line 27
    const/4 p2, 0x4

    .line 28
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 29
    .line 30
    .line 31
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->h:Landroid/widget/TextView;

    .line 32
    .line 33
    const-string p1, "\u6536\u8d77"

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p2, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->h:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 47
    .line 48
    const/4 p2, 0x2

    .line 49
    invoke-virtual {p1, p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setShowMoreStatus(I)V

    .line 50
    .line 51
    .line 52
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->b:Landroid/widget/TextView;

    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->defaultDisplay:Landroid/view/Display;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->height:I

    .line 2
    .line 3
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->getListDatas()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/psk/kotlin/util/CommonListMainData;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/psk/kotlin/util/CommonListMainData;->getType()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method protected getLayoutResId(I)I
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    const v1, 0x7f0d0734

    .line 3
    .line 4
    .line 5
    const v2, 0x40066666    # 2.1f

    .line 6
    .line 7
    .line 8
    if-eq p1, v0, :cond_5

    .line 9
    .line 10
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x6

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    iget p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->ratio:F

    .line 21
    .line 22
    cmpl-float p1, p1, v2

    .line 23
    .line 24
    if-ltz p1, :cond_1

    .line 25
    .line 26
    const p1, 0x7f0d0732

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const p1, 0x7f0d0733

    .line 31
    .line 32
    .line 33
    :goto_0
    return p1

    .line 34
    :cond_2
    const p1, 0x7f0d0731

    .line 35
    .line 36
    .line 37
    return p1

    .line 38
    :cond_3
    iget p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->ratio:F

    .line 39
    .line 40
    cmpl-float p1, p1, v2

    .line 41
    .line 42
    if-ltz p1, :cond_4

    .line 43
    .line 44
    const p1, 0x7f0d0736

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    const p1, 0x7f0d0737

    .line 49
    .line 50
    .line 51
    :goto_1
    return p1

    .line 52
    :cond_5
    iget p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->ratio:F

    .line 53
    .line 54
    cmpl-float p1, p1, v2

    .line 55
    .line 56
    if-ltz p1, :cond_6

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_6
    const v1, 0x7f0d0735

    .line 60
    .line 61
    .line 62
    :goto_2
    return v1
.end method

.method public final getListener()Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->ratio:F

    .line 2
    .line 3
    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->width:I

    .line 2
    .line 3
    return v0
.end method

.method public final isChoice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->isChoice:Z

    .line 2
    .line 3
    return v0
.end method

.method protected onBindItem(Landroidx/databinding/ViewDataBinding;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7
    .param p1    # Landroidx/databinding/ViewDataBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/psk/kotlin/util/CommonListMainData;
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
    instance-of p3, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;

    const/16 v0, 0x8

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "\u5c55\u5f00"

    const/4 v5, 0x2

    const-string v6, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData"

    if-eqz p3, :cond_3

    .line 3
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iput-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getAvatar()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAvatar(Ljava/lang/String;)V

    .line 5
    move-object p2, p1

    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/qm0;

    iget-object v6, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p2, v6}, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->E(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 6
    iget-object v6, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    invoke-virtual {p2, v6}, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->B(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V

    .line 7
    iget-object v6, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowMoreStatus()I

    move-result v6

    if-eq v6, v5, :cond_1

    iget-object v5, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowMoreStatus()I

    move-result v5

    if-ne v5, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p2, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p2, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p2, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 11
    iget-object v0, p2, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    :goto_1
    iget-object v0, p2, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/adapter/a;

    invoke-direct {v1, p3, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/a;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/databinding/ViewDataBinding;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 13
    :cond_2
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->f:Landroid/widget/TextView;

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/adapter/b;

    invoke-direct {v0, p1, p3}, Lcom/join/kotlin/ui/cloudarchive/adapter/b;-><init>(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    .line 14
    :cond_3
    instance-of p3, p1, Lcom/join/android/app/mgsim/wufun/databinding/om0;

    if-eqz p3, :cond_7

    .line 15
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iput-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 16
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getAvatar()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAvatar(Ljava/lang/String;)V

    .line 17
    move-object p2, p1

    check-cast p2, Lcom/join/android/app/mgsim/wufun/databinding/om0;

    iget-object v6, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p2, v6}, Lcom/join/android/app/mgsim/wufun/databinding/om0;->B(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 18
    iget-object v6, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    invoke-virtual {p2, v6}, Lcom/join/android/app/mgsim/wufun/databinding/om0;->z(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V

    .line 19
    iget-boolean v6, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->isChoice:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/join/android/app/mgsim/wufun/databinding/om0;->A(Ljava/lang/Boolean;)V

    .line 20
    iget-object v6, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v6, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v6}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowMoreStatus()I

    move-result v6

    if-eq v6, v5, :cond_5

    iget-object v5, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {v5}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowMoreStatus()I

    move-result v5

    if-ne v5, v1, :cond_4

    goto :goto_2

    .line 21
    :cond_4
    iget-object v1, p2, Lcom/join/android/app/mgsim/wufun/databinding/om0;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 22
    :cond_5
    :goto_2
    iget-object v0, p2, Lcom/join/android/app/mgsim/wufun/databinding/om0;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p2, Lcom/join/android/app/mgsim/wufun/databinding/om0;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 24
    iget-object v0, p2, Lcom/join/android/app/mgsim/wufun/databinding/om0;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 25
    :goto_3
    iget-object v0, p2, Lcom/join/android/app/mgsim/wufun/databinding/om0;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/join/kotlin/ui/cloudarchive/adapter/c;

    invoke-direct {v1, p3, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/c;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/databinding/ViewDataBinding;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 26
    :cond_6
    iget-object p2, p2, Lcom/join/android/app/mgsim/wufun/databinding/om0;->f:Landroid/widget/TextView;

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/adapter/d;

    invoke-direct {v0, p1, p3}, Lcom/join/kotlin/ui/cloudarchive/adapter/d;-><init>(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    .line 27
    :cond_7
    instance-of p3, p1, Lcom/join/android/app/mgsim/wufun/databinding/um0;

    if-eqz p3, :cond_b

    .line 28
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iput-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 29
    move-object v6, p1

    check-cast v6, Lcom/join/android/app/mgsim/wufun/databinding/um0;

    invoke-virtual {v6, p2}, Lcom/join/android/app/mgsim/wufun/databinding/um0;->u(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 30
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    invoke-virtual {v6, p2}, Lcom/join/android/app/mgsim/wufun/databinding/um0;->t(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V

    .line 31
    iget-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowMoreStatus()I

    move-result p2

    if-eq p2, v5, :cond_9

    iget-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowMoreStatus()I

    move-result p2

    if-ne p2, v1, :cond_8

    goto :goto_4

    .line 32
    :cond_8
    iget-object p2, v6, Lcom/join/android/app/mgsim/wufun/databinding/um0;->h:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 33
    :cond_9
    :goto_4
    iget-object p2, v6, Lcom/join/android/app/mgsim/wufun/databinding/um0;->h:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object p2, v6, Lcom/join/android/app/mgsim/wufun/databinding/um0;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 35
    iget-object p2, v6, Lcom/join/android/app/mgsim/wufun/databinding/um0;->h:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 36
    :goto_5
    iget-object p2, v6, Lcom/join/android/app/mgsim/wufun/databinding/um0;->b:Landroid/widget/TextView;

    if-eqz p2, :cond_a

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/adapter/e;

    invoke-direct {v0, p3, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/e;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/databinding/ViewDataBinding;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 37
    :cond_a
    iget-object p2, v6, Lcom/join/android/app/mgsim/wufun/databinding/um0;->h:Landroid/widget/TextView;

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/adapter/f;

    invoke-direct {v0, p1, p3}, Lcom/join/kotlin/ui/cloudarchive/adapter/f;-><init>(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    .line 38
    :cond_b
    instance-of p3, p1, Lcom/join/android/app/mgsim/wufun/databinding/sm0;

    if-eqz p3, :cond_f

    .line 39
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    iput-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 40
    move-object v6, p1

    check-cast v6, Lcom/join/android/app/mgsim/wufun/databinding/sm0;

    invoke-virtual {v6, p2}, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->u(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 41
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    invoke-virtual {v6, p2}, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->t(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V

    .line 42
    iget-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowMoreStatus()I

    move-result p2

    if-eq p2, v5, :cond_d

    iget-object p2, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getShowMoreStatus()I

    move-result p2

    if-ne p2, v1, :cond_c

    goto :goto_6

    .line 43
    :cond_c
    iget-object p2, v6, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->h:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 44
    :cond_d
    :goto_6
    iget-object p2, v6, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->h:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p2, v6, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 46
    iget-object p2, v6, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->h:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    :goto_7
    iget-object p2, v6, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->b:Landroid/widget/TextView;

    if-eqz p2, :cond_e

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/adapter/g;

    invoke-direct {v0, p3, p1}, Lcom/join/kotlin/ui/cloudarchive/adapter/g;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/databinding/ViewDataBinding;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 48
    :cond_e
    iget-object p2, v6, Lcom/join/android/app/mgsim/wufun/databinding/sm0;->h:Landroid/widget/TextView;

    new-instance v0, Lcom/join/kotlin/ui/cloudarchive/adapter/h;

    invoke-direct {v0, p1, p3}, Lcom/join/kotlin/ui/cloudarchive/adapter/h;-><init>(Landroidx/databinding/ViewDataBinding;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    .line 49
    :cond_f
    instance-of p3, p1, Lcom/join/android/app/mgsim/wufun/databinding/im0;

    if-eqz p3, :cond_10

    .line 50
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    .line 51
    invoke-virtual {p2}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->getAvatar()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;->setAvatar(Ljava/lang/String;)V

    .line 52
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/im0;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/im0;->B(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 53
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/im0;->z(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V

    .line 54
    iget-boolean p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->isChoice:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/im0;->A(Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 55
    :cond_10
    instance-of p3, p1, Lcom/join/android/app/mgsim/wufun/databinding/mm0;

    const-string v0, "build(...)"

    const-string v1, "null cannot be cast to non-null type com.join.mgps.dto.DomainInfoBean"

    if-eqz p3, :cond_11

    .line 56
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/join/mgps/dto/DomainInfoBean;

    .line 57
    move-object p3, p1

    check-cast p3, Lcom/join/android/app/mgsim/wufun/databinding/mm0;

    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/mm0;->u(Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 58
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    invoke-virtual {p3, v1}, Lcom/join/android/app/mgsim/wufun/databinding/mm0;->t(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V

    .line 59
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v1

    .line 60
    iget-object v2, p3, Lcom/join/android/app/mgsim/wufun/databinding/mm0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getController()Ls3/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->Q(Ls3/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 61
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$controller$1;

    invoke-direct {v2, p1, p0}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$controller$1;-><init>(Landroidx/databinding/ViewDataBinding;Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;)V

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->I(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 62
    invoke-virtual {p2}, Lcom/join/mgps/dto/DomainInfoBean;->getPic()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/e;->f0(Ljava/lang/String;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object p1

    .line 64
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/mm0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Ls3/a;)V

    goto :goto_8

    .line 66
    :cond_11
    instance-of p3, p1, Lcom/join/android/app/mgsim/wufun/databinding/km0;

    if-eqz p3, :cond_12

    .line 67
    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/join/mgps/dto/DomainInfoBean;

    .line 68
    move-object p3, p1

    check-cast p3, Lcom/join/android/app/mgsim/wufun/databinding/km0;

    invoke-virtual {p3, p2}, Lcom/join/android/app/mgsim/wufun/databinding/km0;->u(Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 69
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    invoke-virtual {p3, v1}, Lcom/join/android/app/mgsim/wufun/databinding/km0;->t(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V

    .line 70
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object v1

    .line 71
    iget-object v2, p3, Lcom/join/android/app/mgsim/wufun/databinding/km0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2}, Lcom/facebook/drawee/view/DraweeView;->getController()Ls3/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->Q(Ls3/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 72
    new-instance v2, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$controller$2;

    invoke-direct {v2, p1, p0}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter$onBindItem$controller$2;-><init>(Landroidx/databinding/ViewDataBinding;Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;)V

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->I(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 73
    invoke-virtual {p2}, Lcom/join/mgps/dto/DomainInfoBean;->getPic()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/backends/pipeline/e;->f0(Ljava/lang/String;)Lcom/facebook/drawee/backends/pipeline/e;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    move-result-object p1

    .line 75
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object p2, p3, Lcom/join/android/app/mgsim/wufun/databinding/km0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Ls3/a;)V

    :cond_12
    :goto_8
    return-void
.end method

.method public bridge synthetic onBindItem(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->onBindItem(Landroidx/databinding/ViewDataBinding;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method protected onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1    # Landroidx/databinding/ViewDataBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/psk/kotlin/util/CommonListMainData;
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
    instance-of p3, p1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;

    const-string v0, "null cannot be cast to non-null type com.join.kotlin.ui.cloudarchive.data.ArchiveData"

    if-eqz p3, :cond_0

    .line 3
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/qm0;

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->E(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 4
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/qm0;->B(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of p3, p1, Lcom/join/android/app/mgsim/wufun/databinding/um0;

    if-eqz p3, :cond_1

    .line 6
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/um0;

    invoke-virtual {p2}, Lcom/psk/kotlin/util/CommonListMainData;->getAny()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/um0;->u(Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;)V

    .line 7
    iget-object p2, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    invoke-virtual {p1, p2}, Lcom/join/android/app/mgsim/wufun/databinding/um0;->t(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Ljava/lang/Object;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/psk/kotlin/util/CommonListMainData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->onBindItemPayloads(Landroidx/databinding/ViewDataBinding;Lcom/psk/kotlin/util/CommonListMainData;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public final setChoice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->isChoice:Z

    .line 2
    .line 3
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public final setListener(Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/adapter/ModArchiveAdapter;->listener:Lcom/join/kotlin/ui/cloudarchive/adapter/OnClickArchiveListener;

    .line 7
    .line 8
    return-void
.end method
