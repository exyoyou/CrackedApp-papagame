.class public final Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChoiceAdHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\u0005\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "bindingi",
        "Lcom/join/android/app/mgsim/wufun/databinding/ChoiceMainadLayoutBinding;",
        "<init>",
        "(Lcom/join/android/app/mgsim/wufun/databinding/ChoiceMainadLayoutBinding;)V",
        "binding",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/ChoiceMainadLayoutBinding;",
        "setBinding",
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
.field private binding:Lcom/join/android/app/mgsim/wufun/databinding/j9;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/join/android/app/mgsim/wufun/databinding/j9;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/j9;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bindingi"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/j9;->a()Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;->binding:Lcom/join/android/app/mgsim/wufun/databinding/j9;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/j9;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;->binding:Lcom/join/android/app/mgsim/wufun/databinding/j9;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setBinding(Lcom/join/android/app/mgsim/wufun/databinding/j9;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/j9;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/findgame/adapter/FindHomeChoiceAdapter$ChoiceAdHolder;->binding:Lcom/join/android/app/mgsim/wufun/databinding/j9;

    .line 7
    .line 8
    return-void
.end method
