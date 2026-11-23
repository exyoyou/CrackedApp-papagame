.class public final Lcom/cloudplay/messagesdk/gson/internal/j/l;
.super Lcom/cloudplay/messagesdk/gson/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloudplay/messagesdk/gson/internal/j/l$b;
    }
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
.field private final a:Lcom/cloudplay/messagesdk/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloudplay/messagesdk/gson/JsonSerializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/cloudplay/messagesdk/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloudplay/messagesdk/gson/JsonDeserializer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lcom/cloudplay/messagesdk/gson/b;

.field private final d:Lcom/cloudplay/messagesdk/gson/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloudplay/messagesdk/gson/j/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

.field private final f:Lcom/cloudplay/messagesdk/gson/internal/j/l$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloudplay/messagesdk/gson/internal/j/l<",
            "TT;>.b;"
        }
    .end annotation
.end field

.field private g:Lcom/cloudplay/messagesdk/gson/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cloudplay/messagesdk/gson/h<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/cloudplay/messagesdk/gson/JsonSerializer;Lcom/cloudplay/messagesdk/gson/JsonDeserializer;Lcom/cloudplay/messagesdk/gson/b;Lcom/cloudplay/messagesdk/gson/j/a;Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cloudplay/messagesdk/gson/JsonSerializer<",
            "TT;>;",
            "Lcom/cloudplay/messagesdk/gson/JsonDeserializer<",
            "TT;>;",
            "Lcom/cloudplay/messagesdk/gson/b;",
            "Lcom/cloudplay/messagesdk/gson/j/a<",
            "TT;>;",
            "Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/h;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/cloudplay/messagesdk/gson/internal/j/l$b;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/cloudplay/messagesdk/gson/internal/j/l$b;-><init>(Lcom/cloudplay/messagesdk/gson/internal/j/l;Lcom/cloudplay/messagesdk/gson/internal/j/l$a;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->f:Lcom/cloudplay/messagesdk/gson/internal/j/l$b;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->a:Lcom/cloudplay/messagesdk/gson/JsonSerializer;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->b:Lcom/cloudplay/messagesdk/gson/JsonDeserializer;

    .line 15
    .line 16
    iput-object p3, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->c:Lcom/cloudplay/messagesdk/gson/b;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->d:Lcom/cloudplay/messagesdk/gson/j/a;

    .line 19
    .line 20
    iput-object p5, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->e:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    .line 21
    .line 22
    return-void
.end method

.method private b()Lcom/cloudplay/messagesdk/gson/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->g:Lcom/cloudplay/messagesdk/gson/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->c:Lcom/cloudplay/messagesdk/gson/b;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->e:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->d:Lcom/cloudplay/messagesdk/gson/j/a;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/cloudplay/messagesdk/gson/b;->a(Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;Lcom/cloudplay/messagesdk/gson/j/a;)Lcom/cloudplay/messagesdk/gson/h;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->g:Lcom/cloudplay/messagesdk/gson/h;

    .line 17
    .line 18
    :goto_0
    return-object v0
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
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->b:Lcom/cloudplay/messagesdk/gson/JsonDeserializer;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/internal/j/l;->b()Lcom/cloudplay/messagesdk/gson/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/cloudplay/messagesdk/gson/internal/h;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Lcom/cloudplay/messagesdk/gson/d;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->b:Lcom/cloudplay/messagesdk/gson/JsonDeserializer;

    iget-object v1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->d:Lcom/cloudplay/messagesdk/gson/j/a;

    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/gson/j/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->f:Lcom/cloudplay/messagesdk/gson/internal/j/l$b;

    invoke-interface {v0, p1, v1, v2}, Lcom/cloudplay/messagesdk/gson/JsonDeserializer;->deserialize(Lcom/cloudplay/messagesdk/gson/d;Ljava/lang/reflect/Type;Lcom/cloudplay/messagesdk/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 6
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->a:Lcom/cloudplay/messagesdk/gson/JsonSerializer;

    if-nez v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/internal/j/l;->b()Lcom/cloudplay/messagesdk/gson/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->h()Lcom/cloudplay/messagesdk/gson/stream/b;

    return-void

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->d:Lcom/cloudplay/messagesdk/gson/j/a;

    invoke-virtual {v1}, Lcom/cloudplay/messagesdk/gson/j/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->f:Lcom/cloudplay/messagesdk/gson/internal/j/l$b;

    invoke-interface {v0, p2, v1, v2}, Lcom/cloudplay/messagesdk/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/cloudplay/messagesdk/gson/JsonSerializationContext;)Lcom/cloudplay/messagesdk/gson/d;

    move-result-object p2

    .line 10
    invoke-static {p2, p1}, Lcom/cloudplay/messagesdk/gson/internal/h;->a(Lcom/cloudplay/messagesdk/gson/d;Lcom/cloudplay/messagesdk/gson/stream/b;)V

    return-void
.end method
