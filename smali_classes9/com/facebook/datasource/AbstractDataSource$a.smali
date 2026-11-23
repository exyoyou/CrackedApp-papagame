.class Lcom/facebook/datasource/AbstractDataSource$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/datasource/AbstractDataSource;->i(Lcom/facebook/datasource/e;Ljava/util/concurrent/Executor;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/facebook/datasource/e;

.field final synthetic d:Z

.field final synthetic e:Lcom/facebook/datasource/AbstractDataSource;


# direct methods
.method constructor <init>(Lcom/facebook/datasource/AbstractDataSource;ZLcom/facebook/datasource/e;Z)V
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
            "val$isCancellation",
            "val$dataSubscriber",
            "val$isFailure"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/datasource/AbstractDataSource$a;->e:Lcom/facebook/datasource/AbstractDataSource;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/facebook/datasource/AbstractDataSource$a;->b:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/facebook/datasource/AbstractDataSource$a;->c:Lcom/facebook/datasource/e;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/facebook/datasource/AbstractDataSource$a;->d:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/datasource/AbstractDataSource$a;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource$a;->c:Lcom/facebook/datasource/e;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/facebook/datasource/AbstractDataSource$a;->e:Lcom/facebook/datasource/AbstractDataSource;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Lcom/facebook/datasource/e;->c(Lcom/facebook/datasource/c;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/datasource/AbstractDataSource$a;->d:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource$a;->c:Lcom/facebook/datasource/e;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/facebook/datasource/AbstractDataSource$a;->e:Lcom/facebook/datasource/AbstractDataSource;

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/facebook/datasource/e;->a(Lcom/facebook/datasource/c;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/facebook/datasource/AbstractDataSource$a;->c:Lcom/facebook/datasource/e;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/facebook/datasource/AbstractDataSource$a;->e:Lcom/facebook/datasource/AbstractDataSource;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/facebook/datasource/e;->d(Lcom/facebook/datasource/c;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method
