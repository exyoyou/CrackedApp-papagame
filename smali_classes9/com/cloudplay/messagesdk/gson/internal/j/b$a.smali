.class final Lcom/cloudplay/messagesdk/gson/internal/j/b$a;
.super Lcom/cloudplay/messagesdk/gson/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloudplay/messagesdk/gson/internal/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/cloudplay/messagesdk/gson/h<",
        "Ljava/util/Collection<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/cloudplay/messagesdk/gson/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloudplay/messagesdk/gson/h<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloudplay/messagesdk/gson/b;Ljava/lang/reflect/Type;Lcom/cloudplay/messagesdk/gson/h;Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/b;",
            "Ljava/lang/reflect/Type;",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "TE;>;",
            "Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Collection<",
            "TE;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/h;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/cloudplay/messagesdk/gson/internal/j/m;

    .line 5
    .line 6
    invoke-direct {v0, p1, p3, p2}, Lcom/cloudplay/messagesdk/gson/internal/j/m;-><init>(Lcom/cloudplay/messagesdk/gson/b;Lcom/cloudplay/messagesdk/gson/h;Ljava/lang/reflect/Type;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/b$a;->a:Lcom/cloudplay/messagesdk/gson/h;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/cloudplay/messagesdk/gson/internal/j/b$a;->b:Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor;

    .line 12
    .line 13
    return-void
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
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/j/b$a;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/stream/a;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
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

    sget-object v1, Lcom/cloudplay/messagesdk/gson/stream/JsonToken;->i:Lcom/cloudplay/messagesdk/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->o()V

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/b$a;->b:Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lcom/cloudplay/messagesdk/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 6
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->a()V

    .line 7
    :goto_0
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/b$a;->a:Lcom/cloudplay/messagesdk/gson/h;

    invoke-virtual {v1, p1}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->d()V

    return-object v0
.end method

.method public bridge synthetic a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2}, Lcom/cloudplay/messagesdk/gson/internal/j/b$a;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/util/Collection;)V

    return-void
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/stream/b;",
            "Ljava/util/Collection<",
            "TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 11
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->h()Lcom/cloudplay/messagesdk/gson/stream/b;

    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->a()Lcom/cloudplay/messagesdk/gson/stream/b;

    .line 13
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/b$a;->a:Lcom/cloudplay/messagesdk/gson/h;

    invoke-virtual {v1, p1, v0}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->c()Lcom/cloudplay/messagesdk/gson/stream/b;

    return-void
.end method
