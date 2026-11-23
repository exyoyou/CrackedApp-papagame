.class final Lcom/f$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/l$l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "n"
.end annotation


# instance fields
.field private final a:Lcom/f$k;

.field private final b:Lcom/f$e;

.field private c:Landroidx/lifecycle/SavedStateHandle;

.field private d:Ldagger/hilt/android/d;


# direct methods
.method private constructor <init>(Lcom/f$k;Lcom/f$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/f$n;->a:Lcom/f$k;

    .line 4
    iput-object p2, p0, Lcom/f$n;->b:Lcom/f$e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/f$k;Lcom/f$e;Lcom/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/f$n;-><init>(Lcom/f$k;Lcom/f$e;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/lifecycle/SavedStateHandle;)Lgb/f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "handle"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/f$n;->d(Landroidx/lifecycle/SavedStateHandle;)Lcom/f$n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Ldagger/hilt/android/d;)Lgb/f;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "viewModelLifecycle"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/f$n;->e(Ldagger/hilt/android/d;)Lcom/f$n;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic build()Leb/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/f$n;->c()Lcom/l$l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public c()Lcom/l$l;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/f$n;->c:Landroidx/lifecycle/SavedStateHandle;

    .line 2
    .line 3
    const-class v1, Landroidx/lifecycle/SavedStateHandle;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ldagger/internal/k;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/f$n;->d:Ldagger/hilt/android/d;

    .line 9
    .line 10
    const-class v1, Ldagger/hilt/android/d;

    .line 11
    .line 12
    invoke-static {v0, v1}, Ldagger/internal/k;->a(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/f$o;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/f$n;->a:Lcom/f$k;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/f$n;->b:Lcom/f$e;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/f$n;->c:Landroidx/lifecycle/SavedStateHandle;

    .line 22
    .line 23
    iget-object v4, p0, Lcom/f$n;->d:Ldagger/hilt/android/d;

    .line 24
    .line 25
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/f$o;-><init>(Lcom/f$k;Lcom/f$e;Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/d;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public d(Landroidx/lifecycle/SavedStateHandle;)Lcom/f$n;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ldagger/internal/k;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroidx/lifecycle/SavedStateHandle;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/f$n;->c:Landroidx/lifecycle/SavedStateHandle;

    .line 8
    .line 9
    return-object p0
.end method

.method public e(Ldagger/hilt/android/d;)Lcom/f$n;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewModelLifecycle"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ldagger/internal/k;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ldagger/hilt/android/d;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/f$n;->d:Ldagger/hilt/android/d;

    .line 8
    .line 9
    return-object p0
.end method
