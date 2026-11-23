.class public Lcom/byazt/se/ve$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x29f,
        0x4f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/se/ve;->call()Lcom/byazt/co/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/byazt/co/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/se/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/se/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/se/ve$1;->c:Lcom/byazt/se/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public call()Lcom/byazt/co/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/se/ve$1;->c:Lcom/byazt/se/ve;

    invoke-static {v0}, Lcom/byazt/se/ve;->c(Lcom/byazt/se/ve;)Lcom/byazt/se/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/se/c;->c()Lcom/byazt/co/c;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "__kiteFingerTask#future call error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/tf/c;->tt(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/byazt/co/c;

    invoke-direct {v0}, Lcom/byazt/co/c;-><init>()V

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byazt/se/ve$1;->call()Lcom/byazt/co/c;

    move-result-object v0

    return-object v0
.end method
