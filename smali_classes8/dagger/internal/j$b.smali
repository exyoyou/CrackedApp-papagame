.class public final Ldagger/internal/j$b;
.super Ldagger/internal/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ldagger/internal/a$a<",
        "TK;TV;",
        "Ldagger/internal/l<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Ldagger/internal/a$a;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(ILdagger/internal/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ldagger/internal/j$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ldagger/internal/l;)Ldagger/internal/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "providerOfValue"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Ldagger/internal/j$b;->d(Ljava/lang/Object;Ldagger/internal/l;)Ldagger/internal/j$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Ldagger/internal/l;)Ldagger/internal/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "mapProviderFactory"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ldagger/internal/j$b;->f(Ldagger/internal/l;)Ldagger/internal/j$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c()Ldagger/internal/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/internal/j<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ldagger/internal/j;

    .line 2
    .line 3
    iget-object v1, p0, Ldagger/internal/a$a;->a:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Ldagger/internal/j;-><init>(Ljava/util/Map;Ldagger/internal/j$a;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public d(Ljava/lang/Object;Ldagger/internal/l;)Ldagger/internal/j$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "providerOfValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ldagger/internal/l<",
            "TV;>;)",
            "Ldagger/internal/j$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Ldagger/internal/a$a;->a(Ljava/lang/Object;Ldagger/internal/l;)Ldagger/internal/a$a;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public e(Ljava/lang/Object;Lvb/a;)Ldagger/internal/j$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "providerOfValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lvb/a<",
            "TV;>;)",
            "Ldagger/internal/j$b<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p2}, Ldagger/internal/n;->a(Lvb/a;)Ldagger/internal/l;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p0, p1, p2}, Ldagger/internal/j$b;->d(Ljava/lang/Object;Ldagger/internal/l;)Ldagger/internal/j$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public f(Ldagger/internal/l;)Ldagger/internal/j$b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mapProviderFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/l<",
            "Ljava/util/Map<",
            "TK;",
            "Ldagger/internal/l<",
            "TV;>;>;>;)",
            "Ldagger/internal/j$b<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Ldagger/internal/a$a;->b(Ldagger/internal/l;)Ldagger/internal/a$a;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public g(Lvb/a;)Ldagger/internal/j$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mapProviderFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvb/a<",
            "Ljava/util/Map<",
            "TK;",
            "Lvb/a<",
            "TV;>;>;>;)",
            "Ldagger/internal/j$b<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ldagger/internal/j$b$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Ldagger/internal/j$b$a;-><init>(Ldagger/internal/j$b;Lvb/a;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ldagger/internal/j$b;->f(Ldagger/internal/l;)Ldagger/internal/j$b;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method
