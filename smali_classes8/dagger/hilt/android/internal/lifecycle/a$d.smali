.class public final Ldagger/hilt/android/internal/lifecycle/a$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/hilt/android/internal/lifecycle/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lgb/f;


# direct methods
.method constructor <init>(Ljava/util/Map;Lgb/f;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Ldagger/hilt/android/internal/lifecycle/HiltViewModelMap$KeySet;
        .end annotation
    .end param
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
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldagger/hilt/android/internal/lifecycle/a$d;->a:Ljava/util/Map;

    .line 5
    .line 6
    iput-object p2, p0, Ldagger/hilt/android/internal/lifecycle/a$d;->b:Lgb/f;

    .line 7
    .line 8
    return-void
.end method

.method private c(Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .line 1
    new-instance v0, Ldagger/hilt/android/internal/lifecycle/c;

    .line 2
    .line 3
    iget-object v1, p0, Ldagger/hilt/android/internal/lifecycle/a$d;->a:Ljava/util/Map;

    .line 4
    .line 5
    invoke-static {p1}, Ljb/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 10
    .line 11
    iget-object v2, p0, Ldagger/hilt/android/internal/lifecycle/a$d;->b:Lgb/f;

    .line 12
    .line 13
    invoke-direct {v0, v1, p1, v2}, Ldagger/hilt/android/internal/lifecycle/c;-><init>(Ljava/util/Map;Landroidx/lifecycle/ViewModelProvider$Factory;Lgb/f;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method a(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "delegateFactory"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Ldagger/hilt/android/internal/lifecycle/a$d;->c(Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method b(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fragment",
            "delegateFactory"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Ldagger/hilt/android/internal/lifecycle/a$d;->c(Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
