.class public Ldagger/internal/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldagger/internal/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/e<",
        "Ljava/util/Map<",
        "Ljava/lang/Class<",
        "*>;",
        "Ldagger/internal/l<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field a:Ldagger/internal/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/e<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldagger/internal/l<",
            "TV;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/e<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldagger/internal/l<",
            "TV;>;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldagger/internal/g$b;->a:Ldagger/internal/e;

    .line 5
    .line 6
    return-void
.end method

.method public static b(Ldagger/internal/e;)Ldagger/internal/g$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delegate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ldagger/internal/e<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ldagger/internal/l<",
            "TV;>;>;>;)",
            "Ldagger/internal/g$b<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ldagger/internal/g$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ldagger/internal/g$b;-><init>(Ldagger/internal/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ldagger/internal/l<",
            "TV;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldagger/internal/g$b;->a:Ldagger/internal/e;

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
    invoke-static {v0}, Ldagger/internal/g;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ldagger/internal/g$b;->a()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
