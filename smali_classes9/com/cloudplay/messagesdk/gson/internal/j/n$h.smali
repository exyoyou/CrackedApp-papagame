.class final Lcom/cloudplay/messagesdk/gson/internal/j/n$h;
.super Lcom/cloudplay/messagesdk/gson/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloudplay/messagesdk/gson/internal/j/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloudplay/messagesdk/gson/h<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/h;-><init>()V

    .line 2
    .line 3
    .line 4
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
    invoke-virtual {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/j/n$h;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/math/BigInteger;
    .locals 2
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
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/a;->p()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, p2}, Lcom/cloudplay/messagesdk/gson/internal/j/n$h;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/math/BigInteger;)V

    return-void
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/math/BigInteger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p1, p2}, Lcom/cloudplay/messagesdk/gson/stream/b;->a(Ljava/lang/Number;)Lcom/cloudplay/messagesdk/gson/stream/b;

    return-void
.end method
