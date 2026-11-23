.class abstract Ldagger/hilt/android/internal/managers/b$e;
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

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/hilt/android/internal/managers/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "e"
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

.method static a()Ldagger/hilt/android/a;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation build Ldagger/hilt/android/scopes/ActivityRetainedScoped;
    .end annotation

    .line 1
    new-instance v0, Ldagger/hilt/android/internal/lifecycle/h;

    .line 2
    .line 3
    invoke-direct {v0}, Ldagger/hilt/android/internal/lifecycle/h;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
