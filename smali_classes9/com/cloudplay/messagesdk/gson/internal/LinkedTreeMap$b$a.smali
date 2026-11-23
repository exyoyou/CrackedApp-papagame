.class Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$b$a;
.super Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap<",
        "TK;TV;>.d<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$b;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$b;->a:Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$d;-><init>(Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$b$a;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$d;->a()Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$e;

    move-result-object v0

    return-object v0
.end method
