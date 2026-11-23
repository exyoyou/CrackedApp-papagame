.class public final Ldagger/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lvb/a;)Ldagger/internal/l;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "provider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lvb/a<",
            "TT;>;)",
            "Ldagger/internal/l<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ldagger/internal/k;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    instance-of v0, p0, Ldagger/internal/l;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p0, Ldagger/internal/l;

    .line 9
    .line 10
    return-object p0

    .line 11
    :cond_0
    new-instance v0, Ldagger/internal/n$a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ldagger/internal/n$a;-><init>(Lvb/a;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
