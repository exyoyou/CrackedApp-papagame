.class public final Lcom/cloudplay/messagesdk/gson/internal/j/j;
.super Lcom/cloudplay/messagesdk/gson/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloudplay/messagesdk/gson/h<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;


# instance fields
.field private final a:Lcom/cloudplay/messagesdk/gson/b;

.field private final b:Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/gson/ToNumberPolicy;->a:Lcom/cloudplay/messagesdk/gson/ToNumberPolicy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloudplay/messagesdk/gson/internal/j/j;->b(Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/cloudplay/messagesdk/gson/internal/j/j;->c:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/cloudplay/messagesdk/gson/b;Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/h;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/j;->a:Lcom/cloudplay/messagesdk/gson/b;

    .line 4
    iput-object p2, p0, Lcom/cloudplay/messagesdk/gson/internal/j/j;->b:Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloudplay/messagesdk/gson/b;Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;Lcom/cloudplay/messagesdk/gson/internal/j/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloudplay/messagesdk/gson/internal/j/j;-><init>(Lcom/cloudplay/messagesdk/gson/b;Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)V

    return-void
.end method

.method public static a(Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/gson/ToNumberPolicy;->a:Lcom/cloudplay/messagesdk/gson/ToNumberPolicy;

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lcom/cloudplay/messagesdk/gson/internal/j/j;->c:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/cloudplay/messagesdk/gson/internal/j/j;->b(Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloudplay/messagesdk/gson/internal/j/j$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloudplay/messagesdk/gson/internal/j/j$a;-><init>(Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->q()Lcom/cloudplay/messagesdk/gson/stream/JsonToken;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/cloudplay/messagesdk/gson/internal/j/j$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 7
    :pswitch_0
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->o()V

    const/4 p1, 0x0

    return-object p1

    .line 8
    :pswitch_1
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->j()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_2
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/j;->b:Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;

    invoke-interface {v0, p1}, Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;->readNumber(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_3
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->p()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_4
    new-instance v0, Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap;-><init>()V

    .line 12
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->b()V

    .line 13
    :goto_0
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/j/j;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->e()V

    return-object v0

    .line 16
    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->a()V

    .line 18
    :goto_1
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/j/j;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->d()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->h()Lcom/cloudplay/messagesdk/gson/stream/b;

    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/j;->a:Lcom/cloudplay/messagesdk/gson/b;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/cloudplay/messagesdk/gson/b;->a(Ljava/lang/Class;)Lcom/cloudplay/messagesdk/gson/h;

    move-result-object v0

    .line 23
    instance-of v1, v0, Lcom/cloudplay/messagesdk/gson/internal/j/j;

    if-eqz v1, :cond_1

    .line 24
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->b()Lcom/cloudplay/messagesdk/gson/stream/b;

    .line 25
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->d()Lcom/cloudplay/messagesdk/gson/stream/b;

    return-void

    .line 26
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V

    return-void
.end method
