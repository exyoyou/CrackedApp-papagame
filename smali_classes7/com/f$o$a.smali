.class final Lcom/f$o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/f$o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/f$k;

.field private final b:Lcom/f$e;

.field private final c:Lcom/f$o;

.field private final d:I


# direct methods
.method constructor <init>(Lcom/f$k;Lcom/f$e;Lcom/f$o;I)V
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
            "viewModelCImpl",
            "id"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/f$o$a;->a:Lcom/f$k;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/f$o$a;->b:Lcom/f$e;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/f$o$a;->c:Lcom/f$o;

    .line 9
    .line 10
    iput p4, p0, Lcom/f$o$a;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/f$o$a;->d:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/f$o$a;->a:Lcom/f$k;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/f$k;->e(Lcom/f$k;)Ldagger/hilt/android/internal/modules/c;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Ldagger/hilt/android/internal/modules/e;->c(Ldagger/hilt/android/internal/modules/c;)Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-direct {v0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudSignViewModel;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 25
    .line 26
    iget v1, p0, Lcom/f$o$a;->d:I

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    new-instance v0, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/f$o$a;->a:Lcom/f$k;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/f$k;->e(Lcom/f$k;)Ldagger/hilt/android/internal/modules/c;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Ldagger/hilt/android/internal/modules/e;->c(Ldagger/hilt/android/internal/modules/c;)Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;-><init>(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method
