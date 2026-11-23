.class public final Lcom/join/kotlin/ui/base/DataBindingConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0016\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR \u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/join/kotlin/ui/base/DataBindingConfig;",
        "",
        "layout",
        "",
        "vmVariableId",
        "stateViewModle",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "(IILandroidx/lifecycle/ViewModel;)V",
        "getLayout",
        "()I",
        "getVmVariableId",
        "getStateViewModle",
        "()Landroidx/lifecycle/ViewModel;",
        "bindingParms",
        "Landroid/util/SparseArray;",
        "getBindingParms",
        "()Landroid/util/SparseArray;",
        "setBindingParms",
        "(Landroid/util/SparseArray;)V",
        "addBindingParam",
        "variableId",
        "any",
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
.field private bindingParms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final layout:I

.field private final stateViewModle:Landroidx/lifecycle/ViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final vmVariableId:I


# direct methods
.method public constructor <init>(IILandroidx/lifecycle/ViewModel;)V
    .locals 1
    .param p3    # Landroidx/lifecycle/ViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "stateViewModle"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->layout:I

    .line 10
    .line 11
    iput p2, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->vmVariableId:I

    .line 12
    .line 13
    iput-object p3, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->stateViewModle:Landroidx/lifecycle/ViewModel;

    .line 14
    .line 15
    new-instance p1, Landroid/util/SparseArray;

    .line 16
    .line 17
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->bindingParms:Landroid/util/SparseArray;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final addBindingParam(ILjava/lang/Object;)Lcom/join/kotlin/ui/base/DataBindingConfig;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "any"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->bindingParms:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->bindingParms:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object p0
.end method

.method public final getBindingParms()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->bindingParms:Landroid/util/SparseArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLayout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->layout:I

    .line 2
    .line 3
    return v0
.end method

.method public final getStateViewModle()Landroidx/lifecycle/ViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->stateViewModle:Landroidx/lifecycle/ViewModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVmVariableId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->vmVariableId:I

    .line 2
    .line 3
    return v0
.end method

.method public final setBindingParms(Landroid/util/SparseArray;)V
    .locals 1
    .param p1    # Landroid/util/SparseArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/base/DataBindingConfig;->bindingParms:Landroid/util/SparseArray;

    .line 7
    .line 8
    return-void
.end method
