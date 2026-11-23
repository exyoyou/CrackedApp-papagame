.class Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$c$a;
.super Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$c;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap<",
        "TK;TV;>.d<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$c;)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$c;->a:Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$d;-><init>(Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$d;->a()Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/cloudplay/messagesdk/gson/internal/LinkedTreeMap$e;->f:Ljava/lang/Object;

    .line 6
    .line 7
    return-object v0
.end method
