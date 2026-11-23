.class public Lzc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lzc/c;


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lzc/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lzc/c;->a:Ljava/util/Set;

    .line 10
    .line 11
    return-void
.end method

.method public static b(Lzc/b;)V
    .locals 1

    .line 1
    sget-object v0, Lzc/c;->b:Lzc/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lzc/c;->a:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public static c(Lzc/c;)Lzc/c;
    .locals 1

    .line 1
    sget-object v0, Lzc/c;->b:Lzc/c;

    .line 2
    .line 3
    sput-object p0, Lzc/c;->b:Lzc/c;

    .line 4
    .line 5
    return-object v0
.end method


# virtual methods
.method public a(Lzc/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzc/c;->a:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lzc/b;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lzc/b;->onViewChanged(Lzc/a;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method
