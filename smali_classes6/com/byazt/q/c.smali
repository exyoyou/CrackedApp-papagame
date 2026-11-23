.class public abstract Lcom/byazt/q/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3bc,
        0x14
    }
.end annotation


# static fields
.field public static final n:Lcom/byazt/q/tt;


# instance fields
.field public c:I

.field public tt:Ljava/net/DatagramSocket;

.field public uj:Lcom/byazt/q/tt;

.field public ve:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/q/ve;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/q/ve;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/q/c;->n:Lcom/byazt/q/tt;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/q/c;->uj:Lcom/byazt/q/tt;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/q/tt;->c()Ljava/net/DatagramSocket;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/byazt/q/c;->tt:Ljava/net/DatagramSocket;

    .line 8
    .line 9
    iget v1, p0, Lcom/byazt/q/c;->c:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/byazt/q/c;->ve:Z

    .line 16
    .line 17
    return-void
.end method

.method public tt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/q/c;->ve:Z

    .line 2
    .line 3
    return v0
.end method
