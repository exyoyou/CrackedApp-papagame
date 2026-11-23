.class final Lcom/cloudplay/messagesdk/gson/internal/j/h$a;
.super Lcom/cloudplay/messagesdk/gson/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloudplay/messagesdk/gson/internal/j/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/cloudplay/messagesdk/gson/h<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/cloudplay/messagesdk/gson/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloudplay/messagesdk/gson/h<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/cloudplay/messagesdk/gson/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloudplay/messagesdk/gson/h<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic d:Lcom/cloudplay/messagesdk/gson/internal/j/h;


# direct methods
.method public constructor <init>(Lcom/cloudplay/messagesdk/gson/internal/j/h;Lcom/cloudplay/messagesdk/gson/b;Ljava/lang/reflect/Type;Lcom/cloudplay/messagesdk/gson/h;Ljava/lang/reflect/Type;Lcom/cloudplay/messagesdk/gson/h;Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/b;",
            "Ljava/lang/reflect/Type;",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "TV;>;",
            "Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/h$a;->d:Lcom/cloudplay/messagesdk/gson/internal/j/h;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/h;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/cloudplay/messagesdk/gson/internal/j/m;

    .line 7
    .line 8
    invoke-direct {p1, p2, p4, p3}, Lcom/cloudplay/messagesdk/gson/internal/j/m;-><init>(Lcom/cloudplay/messagesdk/gson/b;Lcom/cloudplay/messagesdk/gson/h;Ljava/lang/reflect/Type;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/h$a;->a:Lcom/cloudplay/messagesdk/gson/h;

    .line 12
    .line 13
    new-instance p1, Lcom/cloudplay/messagesdk/gson/internal/j/m;

    .line 14
    .line 15
    invoke-direct {p1, p2, p6, p5}, Lcom/cloudplay/messagesdk/gson/internal/j/m;-><init>(Lcom/cloudplay/messagesdk/gson/b;Lcom/cloudplay/messagesdk/gson/h;Ljava/lang/reflect/Type;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/h$a;->b:Lcom/cloudplay/messagesdk/gson/h;

    .line 19
    .line 20
    iput-object p7, p0, Lcom/cloudplay/messagesdk/gson/internal/j/h$a;->c:Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor;

    .line 21
    .line 22
    return-void
.end method

.method private a(Lcom/cloudplay/messagesdk/gson/d;)Ljava/lang/String;
    .locals 1

    .line 52
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/d;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 53
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/d;->c()Lcom/cloudplay/messagesdk/gson/g;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/g;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/g;->l()Ljava/lang/Number;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/g;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/g;->h()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/g;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/g;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 61
    :cond_3
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/d;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "null"

    return-object p1

    .line 62
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method


# virtual methods
.method public bridge synthetic a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/j/h$a;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/stream/a;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->q()Lcom/cloudplay/messagesdk/gson/stream/JsonToken;

    move-result-object v0

    .line 4
    sget-object v1, Lcom/cloudplay/messagesdk/gson/stream/JsonToken;->i:Lcom/cloudplay/messagesdk/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->o()V

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/h$a;->c:Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor;

    invoke-interface {v1}, Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 7
    sget-object v2, Lcom/cloudplay/messagesdk/gson/stream/JsonToken;->a:Lcom/cloudplay/messagesdk/gson/stream/JsonToken;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->a()V

    .line 9
    :goto_0
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->a()V

    .line 11
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/h$a;->a:Lcom/cloudplay/messagesdk/gson/h;

    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lcom/cloudplay/messagesdk/gson/internal/j/h$a;->b:Lcom/cloudplay/messagesdk/gson/h;

    invoke-virtual {v2, p1}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;

    move-result-object v2

    .line 13
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->d()V

    goto :goto_0

    .line 15
    :cond_1
    new-instance p1, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->d()V

    goto :goto_2

    .line 17
    :cond_3
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->b()V

    .line 18
    :goto_1
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 19
    sget-object v0, Lcom/cloudplay/messagesdk/gson/internal/e;->a:Lcom/cloudplay/messagesdk/gson/internal/e;

    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/gson/internal/e;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)V

    .line 20
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/h$a;->a:Lcom/cloudplay/messagesdk/gson/h;

    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/cloudplay/messagesdk/gson/internal/j/h$a;->b:Lcom/cloudplay/messagesdk/gson/h;

    invoke-virtual {v2, p1}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    new-instance p1, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_5
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->e()V

    :goto_2
    return-object v1
.end method

.method public bridge synthetic a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/cloudplay/messagesdk/gson/internal/j/h$a;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/util/Map;)V

    return-void
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/stream/b;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->h()Lcom/cloudplay/messagesdk/gson/stream/b;

    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/h$a;->d:Lcom/cloudplay/messagesdk/gson/internal/j/h;

    iget-boolean v0, v0, Lcom/cloudplay/messagesdk/gson/internal/j/h;->b:Z

    if-nez v0, :cond_2

    .line 27
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->b()Lcom/cloudplay/messagesdk/gson/stream/b;

    .line 28
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/cloudplay/messagesdk/gson/stream/b;->a(Ljava/lang/String;)Lcom/cloudplay/messagesdk/gson/stream/b;

    .line 30
    iget-object v1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/h$a;->b:Lcom/cloudplay/messagesdk/gson/h;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->d()Lcom/cloudplay/messagesdk/gson/stream/b;

    return-void

    .line 32
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 35
    iget-object v5, p0, Lcom/cloudplay/messagesdk/gson/internal/j/h$a;->a:Lcom/cloudplay/messagesdk/gson/h;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/cloudplay/messagesdk/gson/h;->a(Ljava/lang/Object;)Lcom/cloudplay/messagesdk/gson/d;

    move-result-object v5

    .line 36
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v5}, Lcom/cloudplay/messagesdk/gson/d;->d()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Lcom/cloudplay/messagesdk/gson/d;->f()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    .line 39
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->a()Lcom/cloudplay/messagesdk/gson/stream/b;

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_4
    if-ge v2, p2, :cond_6

    .line 41
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->a()Lcom/cloudplay/messagesdk/gson/stream/b;

    .line 42
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloudplay/messagesdk/gson/d;

    invoke-static {v3, p1}, Lcom/cloudplay/messagesdk/gson/internal/h;->a(Lcom/cloudplay/messagesdk/gson/d;Lcom/cloudplay/messagesdk/gson/stream/b;)V

    .line 43
    iget-object v3, p0, Lcom/cloudplay/messagesdk/gson/internal/j/h$a;->b:Lcom/cloudplay/messagesdk/gson/h;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->c()Lcom/cloudplay/messagesdk/gson/stream/b;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 45
    :cond_6
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->c()Lcom/cloudplay/messagesdk/gson/stream/b;

    goto :goto_6

    .line 46
    :cond_7
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->b()Lcom/cloudplay/messagesdk/gson/stream/b;

    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    :goto_5
    if-ge v2, p2, :cond_8

    .line 48
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/cloudplay/messagesdk/gson/d;

    .line 49
    invoke-direct {p0, v3}, Lcom/cloudplay/messagesdk/gson/internal/j/h$a;->a(Lcom/cloudplay/messagesdk/gson/d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/cloudplay/messagesdk/gson/stream/b;->a(Ljava/lang/String;)Lcom/cloudplay/messagesdk/gson/stream/b;

    .line 50
    iget-object v3, p0, Lcom/cloudplay/messagesdk/gson/internal/j/h$a;->b:Lcom/cloudplay/messagesdk/gson/h;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 51
    :cond_8
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->d()Lcom/cloudplay/messagesdk/gson/stream/b;

    :goto_6
    return-void
.end method
