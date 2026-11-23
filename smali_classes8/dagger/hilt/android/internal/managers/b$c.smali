.class final Ldagger/hilt/android/internal/managers/b$c;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/hilt/android/internal/managers/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Leb/b;

.field private final b:Ldagger/hilt/android/internal/managers/n;


# direct methods
.method constructor <init>(Leb/b;Ldagger/hilt/android/internal/managers/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "savedStateHandleHolder"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldagger/hilt/android/internal/managers/b$c;->a:Leb/b;

    .line 5
    .line 6
    iput-object p2, p0, Ldagger/hilt/android/internal/managers/b$c;->b:Ldagger/hilt/android/internal/managers/n;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method a()Leb/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/b$c;->a:Leb/b;

    .line 2
    .line 3
    return-object v0
.end method

.method b()Ldagger/hilt/android/internal/managers/n;
    .locals 1

    .line 1
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/b$c;->b:Ldagger/hilt/android/internal/managers/n;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onCleared()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/b$c;->a:Leb/b;

    .line 5
    .line 6
    const-class v1, Ldagger/hilt/android/internal/managers/b$d;

    .line 7
    .line 8
    invoke-static {v0, v1}, Ldagger/hilt/a;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ldagger/hilt/android/internal/managers/b$d;

    .line 13
    .line 14
    invoke-interface {v0}, Ldagger/hilt/android/internal/managers/b$d;->b()Ldagger/hilt/android/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ldagger/hilt/android/internal/lifecycle/h;

    .line 19
    .line 20
    invoke-virtual {v0}, Ldagger/hilt/android/internal/lifecycle/h;->c()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
