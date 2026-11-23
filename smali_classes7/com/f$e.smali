.class final Lcom/f$e;
.super Lcom/l$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/f$e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/f$k;

.field private final b:Lcom/f$e;

.field c:Ldagger/internal/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/l<",
            "Ldagger/hilt/android/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/f$k;Ldagger/hilt/android/internal/managers/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "savedStateHandleHolderParam"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/l$c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lcom/f$e;->b:Lcom/f$e;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/f$e;->a:Lcom/f$k;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Lcom/f$e;->c(Ldagger/hilt/android/internal/managers/n;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private c(Ldagger/hilt/android/internal/managers/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "savedStateHandleHolderParam"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/f$e$a;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/f$e;->a:Lcom/f$k;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/f$e;->b:Lcom/f$e;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {p1, v0, v1, v2}, Lcom/f$e$a;-><init>(Lcom/f$k;Lcom/f$e;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ldagger/internal/d;->d(Ldagger/internal/l;)Ldagger/internal/l;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/f$e;->c:Ldagger/internal/l;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a()Lgb/a;
    .locals 4

    .line 1
    new-instance v0, Lcom/f$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/f$e;->a:Lcom/f$k;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/f$e;->b:Lcom/f$e;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lcom/f$b;-><init>(Lcom/f$k;Lcom/f$e;Lcom/f$a;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public b()Ldagger/hilt/android/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/f$e;->c:Ldagger/internal/l;

    .line 2
    .line 3
    invoke-interface {v0}, Lvb/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ldagger/hilt/android/a;

    .line 8
    .line 9
    return-object v0
.end method
