.class public abstract Lcom/cloudplay/messagesdk/gson/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/cloudplay/messagesdk/gson/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/cloudplay/messagesdk/gson/d;"
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Lcom/cloudplay/messagesdk/gson/internal/j/g;

    invoke-direct {v0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;-><init>()V

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lcom/cloudplay/messagesdk/gson/internal/j/g;->i()Lcom/cloudplay/messagesdk/gson/d;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Lcom/cloudplay/messagesdk/gson/JsonIOException;

    invoke-direct {v0, p1}, Lcom/cloudplay/messagesdk/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a()Lcom/cloudplay/messagesdk/gson/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/cloudplay/messagesdk/gson/h<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/cloudplay/messagesdk/gson/h$a;

    invoke-direct {v0, p0}, Lcom/cloudplay/messagesdk/gson/h$a;-><init>(Lcom/cloudplay/messagesdk/gson/h;)V

    return-object v0
.end method

.method public abstract a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;
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
.end method

.method public abstract a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V
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
.end method
