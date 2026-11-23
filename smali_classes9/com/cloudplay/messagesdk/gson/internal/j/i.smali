.class public final Lcom/cloudplay/messagesdk/gson/internal/j/i;
.super Lcom/cloudplay/messagesdk/gson/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloudplay/messagesdk/gson/h<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;


# instance fields
.field private final a:Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloudplay/messagesdk/gson/ToNumberPolicy;->b:Lcom/cloudplay/messagesdk/gson/ToNumberPolicy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloudplay/messagesdk/gson/internal/j/i;->b(Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/cloudplay/messagesdk/gson/internal/j/i;->b:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/h;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/i;->a:Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;
    .locals 1

    .line 3
    sget-object v0, Lcom/cloudplay/messagesdk/gson/ToNumberPolicy;->b:Lcom/cloudplay/messagesdk/gson/ToNumberPolicy;

    if-ne p0, v0, :cond_0

    .line 4
    sget-object p0, Lcom/cloudplay/messagesdk/gson/internal/j/i;->b:Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    return-object p0

    .line 5
    :cond_0
    invoke-static {p0}, Lcom/cloudplay/messagesdk/gson/internal/j/i;->b(Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)Lcom/cloudplay/messagesdk/gson/TypeAdapterFactory;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloudplay/messagesdk/gson/internal/j/i;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/cloudplay/messagesdk/gson/internal/j/i;-><init>(Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lcom/cloudplay/messagesdk/gson/internal/j/i$a;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/cloudplay/messagesdk/gson/internal/j/i$a;-><init>(Lcom/cloudplay/messagesdk/gson/internal/j/i;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Number;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->q()Lcom/cloudplay/messagesdk/gson/stream/JsonToken;

    move-result-object v0

    .line 7
    sget-object v1, Lcom/cloudplay/messagesdk/gson/internal/j/i$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expecting number, got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/i;->a:Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;

    invoke-interface {v0, p1}, Lcom/cloudplay/messagesdk/gson/ToNumberStrategy;->readNumber(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->o()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/j/i;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Number;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-virtual {p1, p2}, Lcom/cloudplay/messagesdk/gson/stream/b;->a(Ljava/lang/Number;)Lcom/cloudplay/messagesdk/gson/stream/b;

    return-void
.end method

.method public bridge synthetic a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/cloudplay/messagesdk/gson/internal/j/i;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Number;)V

    return-void
.end method
