.class final Lcom/f$o;
.super Lcom/l$l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/f$o$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/f$k;

.field private final b:Lcom/f$e;

.field private final c:Lcom/f$o;

.field d:Ldagger/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/l<",
            "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;",
            ">;"
        }
    .end annotation
.end field

.field e:Ldagger/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/l<",
            "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/f$k;Lcom/f$e;Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "savedStateHandleParam",
            "viewModelLifecycleParam"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/l$l;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/f$o;->c:Lcom/f$o;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/f$o;->a:Lcom/f$k;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/f$o;->b:Lcom/f$e;

    .line 9
    .line 10
    invoke-direct {p0, p3, p4}, Lcom/f$o;->c(Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/d;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private c(Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "savedStateHandleParam",
            "viewModelLifecycleParam"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/f$o$a;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/f$o;->a:Lcom/f$k;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/f$o;->b:Lcom/f$e;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/f$o;->c:Lcom/f$o;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p1, p2, v0, v1, v2}, Lcom/f$o$a;-><init>(Lcom/f$k;Lcom/f$e;Lcom/f$o;I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/f$o;->d:Ldagger/internal/l;

    .line 14
    .line 15
    new-instance p1, Lcom/f$o$a;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/f$o;->a:Lcom/f$k;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/f$o;->b:Lcom/f$e;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/f$o;->c:Lcom/f$o;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-direct {p1, p2, v0, v1, v2}, Lcom/f$o$a;-><init>(Lcom/f$k;Lcom/f$e;Lcom/f$o;I)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/f$o;->e:Ldagger/internal/l;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lvb/a<",
            "Landroidx/lifecycle/ViewModel;",
            ">;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {v0}, Ldagger/internal/h;->b(I)Ldagger/internal/h;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sget-object v1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel_HiltModules_BindsModule_Binds_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/f$o;->d:Ldagger/internal/l;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ldagger/internal/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Ldagger/internal/h;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel_HiltModules_BindsModule_Binds_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/f$o;->e:Ldagger/internal/l;

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Ldagger/internal/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Ldagger/internal/h;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ldagger/internal/h;->a()Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Ldagger/internal/g;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
