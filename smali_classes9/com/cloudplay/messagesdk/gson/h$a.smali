.class Lcom/cloudplay/messagesdk/gson/h$a;
.super Lcom/cloudplay/messagesdk/gson/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloudplay/messagesdk/gson/h;->a()Lcom/cloudplay/messagesdk/gson/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloudplay/messagesdk/gson/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cloudplay/messagesdk/gson/h;


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/gson/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloudplay/messagesdk/gson/h$a;->a:Lcom/cloudplay/messagesdk/gson/h;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/cloudplay/messagesdk/gson/h;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;
    .locals 2
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
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/h$a;->a:Lcom/cloudplay/messagesdk/gson/h;

    invoke-virtual {v0, p1}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V
    .locals 1
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

    .line 1
    invoke-virtual {p1}, Lcom/cloudplay/messagesdk/gson/stream/b;->h()Lcom/cloudplay/messagesdk/gson/stream/b;

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/cloudplay/messagesdk/gson/h$a;->a:Lcom/cloudplay/messagesdk/gson/h;

    invoke-virtual {v0, p1, p2}, Lcom/cloudplay/messagesdk/gson/h;->a(Lcom/cloudplay/messagesdk/gson/stream/b;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
