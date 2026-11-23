.class public Lcom/byazt/bt/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x112,
        0x2c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/bt/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/byazt/lz/uj;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/dna/c;


# direct methods
.method public constructor <init>(Lcom/byazt/dna/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/bt/c$c;->c:Lcom/byazt/dna/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public call()Lcom/byazt/lz/uj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/bt/c$c;->c:Lcom/byazt/dna/c;

    invoke-interface {v0}, Lcom/byazt/dna/c;->getCustomController()Lcom/byazt/lz/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/lz/c;->getTTLocation()Lcom/byazt/lz/uj;

    move-result-object v0

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
    invoke-virtual {p0}, Lcom/byazt/bt/c$c;->call()Lcom/byazt/lz/uj;

    move-result-object v0

    return-object v0
.end method
