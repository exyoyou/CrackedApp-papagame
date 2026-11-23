.class Lcom/join/mgps/rpc/n$e$a;
.super Lcom/fasterxml/jackson/core/type/TypeReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/rpc/n$e;->a([Lcom/join/mgps/dto/RequestAppDetialArgs;)Lcom/join/mgps/dto/ResultMainBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/core/type/TypeReference<",
        "Lcom/join/mgps/dto/ResultMainBean<",
        "Lcom/join/mgps/dto/PayGameDetialBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/rpc/n$e;


# direct methods
.method constructor <init>(Lcom/join/mgps/rpc/n$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/rpc/n$e$a;->b:Lcom/join/mgps/rpc/n$e;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/fasterxml/jackson/core/type/TypeReference;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
