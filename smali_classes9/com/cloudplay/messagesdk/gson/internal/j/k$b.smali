.class public final Lcom/cloudplay/messagesdk/gson/internal/j/k$b;
.super Lcom/cloudplay/messagesdk/gson/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloudplay/messagesdk/gson/internal/j/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/cloudplay/messagesdk/gson/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloudplay/messagesdk/gson/internal/j/k$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/cloudplay/messagesdk/gson/internal/j/k$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/h;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$b;->a:Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$b;->b:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/stream/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->q()Lcom/cloudplay/messagesdk/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/cloudplay/messagesdk/gson/stream/JsonToken;->i:Lcom/cloudplay/messagesdk/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->o()V

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$b;->a:Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->b()V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->n()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$b;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloudplay/messagesdk/gson/internal/j/k$c;

    if-eqz v1, :cond_2

    .line 8
    iget-boolean v2, v1, Lcom/cloudplay/messagesdk/gson/internal/j/k$c;->c:Z

    if-nez v2, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v1, p1, v0}, Lcom/cloudplay/messagesdk/gson/internal/j/k$c;->a(Lcom/cloudplay/messagesdk/gson/stream/a;Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->r()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->e()V

    return-object v0

    :catch_0
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    .line 13
    new-instance v0, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/stream/b;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->h()Lcom/cloudplay/messagesdk/gson/stream/b;

    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->b()Lcom/cloudplay/messagesdk/gson/stream/b;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/k$b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cloudplay/messagesdk/gson/internal/j/k$c;

    .line 17
    invoke-virtual {v1, p2}, Lcom/cloudplay/messagesdk/gson/internal/j/k$c;->a(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    iget-object v2, v1, Lcom/cloudplay/messagesdk/gson/internal/j/k$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/cloudplay/messagesdk/gson/stream/b;->a(Ljava/lang/String;)Lcom/cloudplay/messagesdk/gson/stream/b;

    .line 19
    invoke-virtual {v1, p1, p2}, Lcom/cloudplay/messagesdk/gson/internal/j/k$c;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->d()Lcom/cloudplay/messagesdk/gson/stream/b;

    return-void

    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
