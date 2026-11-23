.class Lcom/windmill/sdk/common/l$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/l;->a(Ljava/util/concurrent/ExecutorService;ILcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/WindMillAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/WindMillAdRequest;

.field final synthetic b:I

.field final synthetic c:Lcom/windmill/sdk/strategy/a;

.field final synthetic d:Lcom/windmill/sdk/common/l;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/l;Lcom/windmill/sdk/WindMillAdRequest;ILcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$adRequest",
            "val$type",
            "val$strategy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/l$7;->d:Lcom/windmill/sdk/common/l;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/l$7;->a:Lcom/windmill/sdk/WindMillAdRequest;

    .line 4
    .line 5
    iput p3, p0, Lcom/windmill/sdk/common/l$7;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/windmill/sdk/common/l$7;->c:Lcom/windmill/sdk/strategy/a;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l$7;->a:Lcom/windmill/sdk/WindMillAdRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, v0, Lcom/windmill/sdk/WindMillAdRequest;->isLoadToOut:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/windmill/sdk/common/l$7;->d:Lcom/windmill/sdk/common/l;

    .line 10
    .line 11
    iget v1, p0, Lcom/windmill/sdk/common/l$7;->b:I

    .line 12
    .line 13
    iget-object v2, p0, Lcom/windmill/sdk/common/l$7;->c:Lcom/windmill/sdk/strategy/a;

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/common/l;->a(ILcom/windmill/sdk/strategy/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v1, "\u5b8c\u6210FutureTask "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/windmill/sdk/common/l$7;->c:Lcom/windmill/sdk/strategy/a;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/windmill/sdk/common/l$7;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
