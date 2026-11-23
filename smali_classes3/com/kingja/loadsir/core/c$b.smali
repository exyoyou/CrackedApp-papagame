.class public Lcom/kingja/loadsir/core/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingja/loadsir/core/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj7/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/kingja/loadsir/core/c$b;->a:Ljava/util/List;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/kingja/loadsir/core/c$b;->b:Ljava/util/List;

    .line 17
    .line 18
    new-instance v1, Lj7/a;

    .line 19
    .line 20
    invoke-direct {v1}, Lj7/a;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/kingja/loadsir/core/c$b;->b:Ljava/util/List;

    .line 27
    .line 28
    new-instance v1, Lj7/c;

    .line 29
    .line 30
    invoke-direct {v1}, Lj7/c;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public a(Lcom/kingja/loadsir/callback/Callback;)Lcom/kingja/loadsir/core/c$b;
    .locals 1
    .param p1    # Lcom/kingja/loadsir/callback/Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kingja/loadsir/core/c$b;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public b(Lj7/b;)Lcom/kingja/loadsir/core/c$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kingja/loadsir/core/c$b;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public c()Lcom/kingja/loadsir/core/c;
    .locals 2

    .line 1
    new-instance v0, Lcom/kingja/loadsir/core/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/kingja/loadsir/core/c;-><init>(Lcom/kingja/loadsir/core/c$b;Lcom/kingja/loadsir/core/c$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/kingja/loadsir/core/c;->c()Lcom/kingja/loadsir/core/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0, p0}, Lcom/kingja/loadsir/core/c;->a(Lcom/kingja/loadsir/core/c;Lcom/kingja/loadsir/core/c$b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kingja/loadsir/core/c$b;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kingja/loadsir/core/c$b;->c:Ljava/lang/Class;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj7/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/kingja/loadsir/core/c$b;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Ljava/lang/Class;)Lcom/kingja/loadsir/core/c$b;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/kingja/loadsir/callback/Callback;",
            ">;)",
            "Lcom/kingja/loadsir/core/c$b;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/kingja/loadsir/core/c$b;->c:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method
