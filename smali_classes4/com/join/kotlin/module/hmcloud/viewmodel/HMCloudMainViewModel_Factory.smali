.class public final Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel_Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/e;


# annotations
.annotation build Ldagger/internal/DaggerGenerated;
.end annotation

.annotation build Ldagger/internal/QualifierMetadata;
    value = {
        "dagger.hilt.android.qualifiers.ApplicationContext"
    }
.end annotation

.annotation build Ldagger/internal/ScopeMetadata;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/e<",
        "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ldagger/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/l<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/l<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel_Factory;->contextProvider:Ldagger/internal/l;

    .line 5
    .line 6
    return-void
.end method

.method public static create(Ldagger/internal/l;)Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contextProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/l<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel_Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel_Factory;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel_Factory;-><init>(Ldagger/internal/l;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public get()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel_Factory;->contextProvider:Ldagger/internal/l;

    invoke-interface {v0}, Lvb/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel_Factory;->newInstance(Landroid/content/Context;)Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel_Factory;->get()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    move-result-object v0

    return-object v0
.end method
