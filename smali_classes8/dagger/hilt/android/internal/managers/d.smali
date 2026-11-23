.class abstract Ldagger/hilt/android/internal/managers/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation build Ldagger/hilt/InstallIn;
    value = {
        Leb/b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static a(Ldagger/hilt/android/internal/managers/n;)Landroidx/lifecycle/SavedStateHandle;
    .locals 0
    .annotation build Landroidx/annotation/OptIn;
        markerClass = {
            Ldagger/hilt/android/UnstableApi;
        }
    .end annotation

    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation build Ldagger/hilt/android/lifecycle/ActivityRetainedSavedState;
    .end annotation

    .annotation build Ldagger/hilt/android/scopes/ActivityRetainedScoped;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedStateHandleHolder"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ldagger/hilt/android/internal/managers/n;->b()Landroidx/lifecycle/SavedStateHandle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
