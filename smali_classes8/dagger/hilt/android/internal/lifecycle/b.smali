.class public final Ldagger/hilt/android/internal/lifecycle/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/e;


# annotations
.annotation build Ldagger/internal/DaggerGenerated;
.end annotation

.annotation build Ldagger/internal/QualifierMetadata;
    value = {
        "dagger.hilt.android.internal.lifecycle.HiltViewModelMap.KeySet"
    }
.end annotation

.annotation build Ldagger/internal/ScopeMetadata;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/e<",
        "Ldagger/hilt/android/internal/lifecycle/a$d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ldagger/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/l<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Ldagger/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/l<",
            "Lgb/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/l;Ldagger/internal/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keySetProvider",
            "viewModelComponentBuilderProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/l<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ldagger/internal/l<",
            "Lgb/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldagger/hilt/android/internal/lifecycle/b;->a:Ldagger/internal/l;

    .line 5
    .line 6
    iput-object p2, p0, Ldagger/hilt/android/internal/lifecycle/b;->b:Ldagger/internal/l;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Ldagger/internal/l;Ldagger/internal/l;)Ldagger/hilt/android/internal/lifecycle/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keySetProvider",
            "viewModelComponentBuilderProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/l<",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ldagger/internal/l<",
            "Lgb/f;",
            ">;)",
            "Ldagger/hilt/android/internal/lifecycle/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Ldagger/hilt/android/internal/lifecycle/b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Ldagger/hilt/android/internal/lifecycle/b;-><init>(Ldagger/internal/l;Ldagger/internal/l;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Ljava/util/Map;Lgb/f;)Ldagger/hilt/android/internal/lifecycle/a$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keySet",
            "viewModelComponentBuilder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lgb/f;",
            ")",
            "Ldagger/hilt/android/internal/lifecycle/a$d;"
        }
    .end annotation

    .line 1
    new-instance v0, Ldagger/hilt/android/internal/lifecycle/a$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Ldagger/hilt/android/internal/lifecycle/a$d;-><init>(Ljava/util/Map;Lgb/f;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public b()Ldagger/hilt/android/internal/lifecycle/a$d;
    .locals 2

    .line 1
    iget-object v0, p0, Ldagger/hilt/android/internal/lifecycle/b;->a:Ldagger/internal/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lvb/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Map;

    .line 8
    .line 9
    iget-object v1, p0, Ldagger/hilt/android/internal/lifecycle/b;->b:Ldagger/internal/l;

    .line 10
    .line 11
    invoke-interface {v1}, Lvb/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lgb/f;

    .line 16
    .line 17
    invoke-static {v0, v1}, Ldagger/hilt/android/internal/lifecycle/b;->c(Ljava/util/Map;Lgb/f;)Ldagger/hilt/android/internal/lifecycle/a$d;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldagger/hilt/android/internal/lifecycle/b;->b()Ldagger/hilt/android/internal/lifecycle/a$d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
