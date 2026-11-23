.class Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$a;
.super Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$f<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;


# direct methods
.method constructor <init>(Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$a;->c:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$f;-><init>(Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$a;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$a;->c:Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx$f;->b:[Ljava/lang/Object;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/netcheck/LDNetDiagnoService/LDNetAsyncTaskEx;->b([Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
