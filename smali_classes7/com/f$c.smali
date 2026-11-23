.class final Lcom/f$c;
.super Lcom/l$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/f$k;

.field private final b:Lcom/f$e;

.field private final c:Lcom/f$c;


# direct methods
.method constructor <init>(Lcom/f$k;Lcom/f$e;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityParam"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/l$a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/f$c;->c:Lcom/f$c;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/f$c;->a:Lcom/f$k;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/f$c;->b:Lcom/f$e;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Ldagger/hilt/android/internal/lifecycle/a$d;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/f$c;->d()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/f$n;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/f$c;->a:Lcom/f$k;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/f$c;->b:Lcom/f$e;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-direct {v1, v2, v3, v4}, Lcom/f$n;-><init>(Lcom/f$k;Lcom/f$e;Lcom/f$a;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Ldagger/hilt/android/internal/lifecycle/b;->c(Ljava/util/Map;Lgb/f;)Ldagger/hilt/android/internal/lifecycle/a$d;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public b()Lgb/e;
    .locals 5

    .line 1
    new-instance v0, Lcom/f$l;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/f$c;->a:Lcom/f$k;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/f$c;->b:Lcom/f$e;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/f$c;->c:Lcom/f$c;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/f$l;-><init>(Lcom/f$k;Lcom/f$e;Lcom/f$c;Lcom/f$a;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public c()Lgb/c;
    .locals 5

    .line 1
    new-instance v0, Lcom/f$g;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/f$c;->a:Lcom/f$k;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/f$c;->b:Lcom/f$e;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/f$c;->c:Lcom/f$c;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/f$g;-><init>(Lcom/f$k;Lcom/f$e;Lcom/f$c;Lcom/f$a;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public d()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
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
    sget-object v1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel_HiltModules$KeyModule;->provide()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Ldagger/internal/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Ldagger/internal/h;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel_HiltModules_KeyModule_Provide_LazyMapKey;->lazyClassKeyName:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel_HiltModules$KeyModule;->provide()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Ldagger/internal/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Ldagger/internal/h;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ldagger/internal/h;->a()Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Ldagger/internal/g;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public e(Lcom/join/mgps/activity/HMCloudMenuActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hMCloudMenuActivity"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public f(Lcom/join/mgps/activity/HMCloudMainTestActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hMCloudMainTestActivity"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public g()Lgb/f;
    .locals 4

    .line 1
    new-instance v0, Lcom/f$n;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/f$c;->a:Lcom/f$k;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/f$c;->b:Lcom/f$e;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/f$n;-><init>(Lcom/f$k;Lcom/f$e;Lcom/f$a;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
