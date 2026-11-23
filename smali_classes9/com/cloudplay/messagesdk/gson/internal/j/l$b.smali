.class final Lcom/cloudplay/messagesdk/gson/internal/j/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/cloudplay/messagesdk/gson/JsonSerializationContext;
.implements Lcom/cloudplay/messagesdk/gson/JsonDeserializationContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloudplay/messagesdk/gson/internal/j/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/cloudplay/messagesdk/gson/internal/j/l;


# direct methods
.method private constructor <init>(Lcom/cloudplay/messagesdk/gson/internal/j/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l$b;->a:Lcom/cloudplay/messagesdk/gson/internal/j/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cloudplay/messagesdk/gson/internal/j/l;Lcom/cloudplay/messagesdk/gson/internal/j/l$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/j/l$b;-><init>(Lcom/cloudplay/messagesdk/gson/internal/j/l;)V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/cloudplay/messagesdk/gson/d;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/cloudplay/messagesdk/gson/d;",
            "Ljava/lang/reflect/Type;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cloudplay/messagesdk/gson/JsonParseException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l$b;->a:Lcom/cloudplay/messagesdk/gson/internal/j/l;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->c:Lcom/cloudplay/messagesdk/gson/b;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/cloudplay/messagesdk/gson/b;->a(Lcom/cloudplay/messagesdk/gson/d;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public serialize(Ljava/lang/Object;)Lcom/cloudplay/messagesdk/gson/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l$b;->a:Lcom/cloudplay/messagesdk/gson/internal/j/l;

    iget-object v0, v0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->c:Lcom/cloudplay/messagesdk/gson/b;

    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/gson/b;->b(Ljava/lang/Object;)Lcom/cloudplay/messagesdk/gson/d;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/cloudplay/messagesdk/gson/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/internal/j/l$b;->a:Lcom/cloudplay/messagesdk/gson/internal/j/l;

    iget-object v0, v0, Lcom/cloudplay/messagesdk/gson/internal/j/l;->c:Lcom/cloudplay/messagesdk/gson/b;

    invoke-virtual {v0, p1, p2}, Lcom/cloudplay/messagesdk/gson/b;->b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/cloudplay/messagesdk/gson/d;

    move-result-object p1

    return-object p1
.end method
