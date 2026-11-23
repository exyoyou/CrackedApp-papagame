.class public final Ldagger/hilt/android/internal/managers/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljb/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/hilt/android/internal/managers/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljb/b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/app/Service;

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldagger/hilt/android/internal/managers/o;->b:Landroid/app/Service;

    .line 5
    .line 6
    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/o;->b:Landroid/app/Service;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v1, v0, Ljb/b;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const/4 v4, 0x0

    .line 17
    aput-object v3, v2, v4

    .line 18
    .line 19
    const-string v3, "Hilt service must be attached to an @HiltAndroidApp Application. Found: %s"

    .line 20
    .line 21
    invoke-static {v1, v3, v2}, Ljb/d;->d(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const-class v1, Ldagger/hilt/android/internal/managers/o$a;

    .line 25
    .line 26
    invoke-static {v0, v1}, Ldagger/hilt/a;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ldagger/hilt/android/internal/managers/o$a;

    .line 31
    .line 32
    invoke-interface {v0}, Ldagger/hilt/android/internal/managers/o$a;->a()Lgb/d;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Ldagger/hilt/android/internal/managers/o;->b:Landroid/app/Service;

    .line 37
    .line 38
    invoke-interface {v0, v1}, Lgb/d;->a(Landroid/app/Service;)Lgb/d;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Lgb/d;->build()Leb/d;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    return-object v0
.end method


# virtual methods
.method public generatedComponent()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/o;->c:Ljava/lang/Object;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Ldagger/hilt/android/internal/managers/o;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Ldagger/hilt/android/internal/managers/o;->c:Ljava/lang/Object;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/o;->c:Ljava/lang/Object;

    .line 12
    .line 13
    return-object v0
.end method
