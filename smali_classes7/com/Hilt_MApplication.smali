.class abstract Lcom/Hilt_MApplication;
.super Lcom/join/kotlin/base/BaseApp;
.source "SourceFile"

# interfaces
.implements Ljb/c;


# instance fields
.field private b:Z

.field private final c:Ldagger/hilt/android/internal/managers/f;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/BaseApp;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/Hilt_MApplication;->b:Z

    .line 6
    .line 7
    new-instance v0, Ldagger/hilt/android/internal/managers/f;

    .line 8
    .line 9
    new-instance v1, Lcom/Hilt_MApplication$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/Hilt_MApplication$a;-><init>(Lcom/Hilt_MApplication;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Ldagger/hilt/android/internal/managers/f;-><init>(Ldagger/hilt/android/internal/managers/h;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/Hilt_MApplication;->c:Ldagger/hilt/android/internal/managers/f;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public bridge synthetic componentManager()Ljb/b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/Hilt_MApplication;->d()Ldagger/hilt/android/internal/managers/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final d()Ldagger/hilt/android/internal/managers/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/Hilt_MApplication;->c:Ldagger/hilt/android/internal/managers/f;

    .line 2
    .line 3
    return-object v0
.end method

.method protected e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/Hilt_MApplication;->b:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/Hilt_MApplication;->b:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/Hilt_MApplication;->generatedComponent()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/k;

    .line 13
    .line 14
    invoke-static {p0}, Ljb/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/MApplication;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Lcom/k;->c(Lcom/MApplication;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/Hilt_MApplication;->d()Ldagger/hilt/android/internal/managers/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ldagger/hilt/android/internal/managers/f;->generatedComponent()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public onCreate()V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/Hilt_MApplication;->e()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lcom/join/kotlin/base/BaseApp;->onCreate()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
