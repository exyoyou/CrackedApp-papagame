.class public final Lcom/cloudplay/messagesdk/gson/internal/j/g;
.super Lcom/cloudplay/messagesdk/gson/stream/b;
.source "SourceFile"


# static fields
.field private static final o:Ljava/io/Writer;

.field private static final p:Lcom/cloudplay/messagesdk/gson/g;


# instance fields
.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloudplay/messagesdk/gson/d;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Lcom/cloudplay/messagesdk/gson/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloudplay/messagesdk/gson/internal/j/g$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloudplay/messagesdk/gson/internal/j/g$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->o:Ljava/io/Writer;

    .line 7
    .line 8
    new-instance v0, Lcom/cloudplay/messagesdk/gson/g;

    .line 9
    .line 10
    const-string v1, "closed"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/cloudplay/messagesdk/gson/g;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->p:Lcom/cloudplay/messagesdk/gson/g;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->o:Ljava/io/Writer;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/gson/stream/b;-><init>(Ljava/io/Writer;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->l:Ljava/util/List;

    .line 12
    .line 13
    sget-object v0, Lcom/cloudplay/messagesdk/gson/e;->a:Lcom/cloudplay/messagesdk/gson/e;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->n:Lcom/cloudplay/messagesdk/gson/d;

    .line 16
    .line 17
    return-void
.end method

.method private a(Lcom/cloudplay/messagesdk/gson/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/gson/stream/b;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->j()Lcom/cloudplay/messagesdk/gson/d;

    move-result-object v0

    check-cast v0, Lcom/cloudplay/messagesdk/gson/f;

    .line 4
    iget-object v1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/cloudplay/messagesdk/gson/f;->a(Ljava/lang/String;Lcom/cloudplay/messagesdk/gson/d;)V

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->m:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iput-object p1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->n:Lcom/cloudplay/messagesdk/gson/d;

    goto :goto_0

    .line 8
    :cond_3
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->j()Lcom/cloudplay/messagesdk/gson/d;

    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/cloudplay/messagesdk/gson/c;

    if-eqz v1, :cond_4

    .line 10
    check-cast v0, Lcom/cloudplay/messagesdk/gson/c;

    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/gson/c;->a(Lcom/cloudplay/messagesdk/gson/d;)V

    :goto_0
    return-void

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private j()Lcom/cloudplay/messagesdk/gson/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->l:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/cloudplay/messagesdk/gson/d;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public a()Lcom/cloudplay/messagesdk/gson/stream/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/cloudplay/messagesdk/gson/c;

    invoke-direct {v0}, Lcom/cloudplay/messagesdk/gson/c;-><init>()V

    .line 13
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->a(Lcom/cloudplay/messagesdk/gson/d;)V

    .line 14
    iget-object v1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(J)Lcom/cloudplay/messagesdk/gson/stream/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/cloudplay/messagesdk/gson/g;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/gson/g;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->a(Lcom/cloudplay/messagesdk/gson/d;)V

    return-object p0
.end method

.method public a(Ljava/lang/Boolean;)Lcom/cloudplay/messagesdk/gson/stream/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 22
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->h()Lcom/cloudplay/messagesdk/gson/stream/b;

    move-result-object p1

    return-object p1

    .line 23
    :cond_0
    new-instance v0, Lcom/cloudplay/messagesdk/gson/g;

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/gson/g;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->a(Lcom/cloudplay/messagesdk/gson/d;)V

    return-object p0
.end method

.method public a(Ljava/lang/Number;)Lcom/cloudplay/messagesdk/gson/stream/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 25
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->h()Lcom/cloudplay/messagesdk/gson/stream/b;

    move-result-object p1

    return-object p1

    .line 26
    :cond_0
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/gson/stream/b;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 27
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JSON forbids NaN and infinities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_2
    :goto_0
    new-instance v0, Lcom/cloudplay/messagesdk/gson/g;

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/gson/g;-><init>(Ljava/lang/Number;)V

    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->a(Lcom/cloudplay/messagesdk/gson/d;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/cloudplay/messagesdk/gson/stream/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 15
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 16
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->j()Lcom/cloudplay/messagesdk/gson/d;

    move-result-object v0

    .line 17
    instance-of v0, v0, Lcom/cloudplay/messagesdk/gson/f;

    if-eqz v0, :cond_0

    .line 18
    iput-object p1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->m:Ljava/lang/String;

    return-object p0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 21
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/cloudplay/messagesdk/gson/stream/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/cloudplay/messagesdk/gson/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloudplay/messagesdk/gson/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->a(Lcom/cloudplay/messagesdk/gson/d;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->l:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-object p0
.end method

.method public c()Lcom/cloudplay/messagesdk/gson/stream/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->j()Lcom/cloudplay/messagesdk/gson/d;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lcom/cloudplay/messagesdk/gson/c;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public c(Ljava/lang/String;)Lcom/cloudplay/messagesdk/gson/stream/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->h()Lcom/cloudplay/messagesdk/gson/stream/b;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    new-instance v0, Lcom/cloudplay/messagesdk/gson/g;

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/gson/g;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->a(Lcom/cloudplay/messagesdk/gson/d;)V

    return-object p0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->l:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->l:Ljava/util/List;

    .line 10
    .line 11
    sget-object v1, Lcom/cloudplay/messagesdk/gson/internal/j/g;->p:Lcom/cloudplay/messagesdk/gson/g;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 18
    .line 19
    const-string v1, "Incomplete document"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public d()Lcom/cloudplay/messagesdk/gson/stream/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->j()Lcom/cloudplay/messagesdk/gson/d;

    move-result-object v0

    .line 3
    instance-of v0, v0, Lcom/cloudplay/messagesdk/gson/f;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public d(Z)Lcom/cloudplay/messagesdk/gson/stream/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/cloudplay/messagesdk/gson/g;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/gson/g;-><init>(Ljava/lang/Boolean;)V

    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->a(Lcom/cloudplay/messagesdk/gson/d;)V

    return-object p0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public h()Lcom/cloudplay/messagesdk/gson/stream/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/gson/e;->a:Lcom/cloudplay/messagesdk/gson/e;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->a(Lcom/cloudplay/messagesdk/gson/d;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public i()Lcom/cloudplay/messagesdk/gson/d;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->l:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->n:Lcom/cloudplay/messagesdk/gson/d;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "Expected one JSON element but was "

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/cloudplay/messagesdk/gson/internal/j/g;->l:Ljava/util/List;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method
