.class public final Ldagger/hilt/android/internal/managers/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/e;


# annotations
.annotation build Ldagger/internal/DaggerGenerated;
.end annotation

.annotation build Ldagger/internal/QualifierMetadata;
    value = {
        "dagger.hilt.android.lifecycle.ActivityRetainedSavedState"
    }
.end annotation

.annotation build Ldagger/internal/ScopeMetadata;
    value = "dagger.hilt.android.scopes.ActivityRetainedScoped"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/e<",
        "Landroidx/lifecycle/SavedStateHandle;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ldagger/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/l<",
            "Ldagger/hilt/android/internal/managers/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedStateHandleHolderProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/l<",
            "Ldagger/hilt/android/internal/managers/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldagger/hilt/android/internal/managers/e;->a:Ldagger/internal/l;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ldagger/internal/l;)Ldagger/hilt/android/internal/managers/e;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedStateHandleHolderProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/l<",
            "Ldagger/hilt/android/internal/managers/n;",
            ">;)",
            "Ldagger/hilt/android/internal/managers/e;"
        }
    .end annotation

    .line 1
    new-instance v0, Ldagger/hilt/android/internal/managers/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/e;-><init>(Ldagger/internal/l;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Ldagger/hilt/android/internal/managers/n;)Landroidx/lifecycle/SavedStateHandle;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedStateHandleHolder"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ldagger/hilt/android/internal/managers/d;->a(Ldagger/hilt/android/internal/managers/n;)Landroidx/lifecycle/SavedStateHandle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ldagger/internal/k;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroidx/lifecycle/SavedStateHandle;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public b()Landroidx/lifecycle/SavedStateHandle;
    .locals 1

    .line 1
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/e;->a:Ldagger/internal/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lvb/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ldagger/hilt/android/internal/managers/n;

    .line 8
    .line 9
    invoke-static {v0}, Ldagger/hilt/android/internal/managers/e;->c(Ldagger/hilt/android/internal/managers/n;)Landroidx/lifecycle/SavedStateHandle;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldagger/hilt/android/internal/managers/e;->b()Landroidx/lifecycle/SavedStateHandle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
