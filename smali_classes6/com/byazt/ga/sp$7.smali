.class public final Lcom/byazt/ga/sp$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x100,
        0x24f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ga/sp;->c(Ljava/lang/String;Ljava/util/concurrent/Callable;)Lcom/byazt/ga/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/byazt/ga/t<",
        "Lcom/byazt/ga/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ga/a;


# direct methods
.method public constructor <init>(Lcom/byazt/ga/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ga/sp$7;->c:Lcom/byazt/ga/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public call()Lcom/byazt/ga/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/byazt/ga/t<",
            "Lcom/byazt/ga/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/byazt/ga/t;

    iget-object v1, p0, Lcom/byazt/ga/sp$7;->c:Lcom/byazt/ga/a;

    invoke-direct {v0, v1}, Lcom/byazt/ga/t;-><init>(Ljava/lang/Object;)V

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
    invoke-virtual {p0}, Lcom/byazt/ga/sp$7;->call()Lcom/byazt/ga/t;

    move-result-object v0

    return-object v0
.end method
