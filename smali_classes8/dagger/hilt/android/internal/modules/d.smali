.class public final Ldagger/hilt/android/internal/modules/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/e;


# annotations
.annotation build Ldagger/internal/DaggerGenerated;
.end annotation

.annotation build Ldagger/internal/QualifierMetadata;
.end annotation

.annotation build Ldagger/internal/ScopeMetadata;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/e<",
        "Landroid/app/Application;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ldagger/hilt/android/internal/modules/c;


# direct methods
.method private constructor <init>(Ldagger/hilt/android/internal/modules/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldagger/hilt/android/internal/modules/d;->a:Ldagger/hilt/android/internal/modules/c;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Ldagger/hilt/android/internal/modules/c;)Ldagger/hilt/android/internal/modules/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    .line 1
    new-instance v0, Ldagger/hilt/android/internal/modules/d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/modules/d;-><init>(Ldagger/hilt/android/internal/modules/c;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Ldagger/hilt/android/internal/modules/c;)Landroid/app/Application;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ldagger/hilt/android/internal/modules/c;->a()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ldagger/internal/k;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/Application;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public b()Landroid/app/Application;
    .locals 1

    .line 1
    iget-object v0, p0, Ldagger/hilt/android/internal/modules/d;->a:Ldagger/hilt/android/internal/modules/c;

    .line 2
    .line 3
    invoke-static {v0}, Ldagger/hilt/android/internal/modules/d;->c(Ldagger/hilt/android/internal/modules/c;)Landroid/app/Application;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldagger/hilt/android/internal/modules/d;->b()Landroid/app/Application;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
