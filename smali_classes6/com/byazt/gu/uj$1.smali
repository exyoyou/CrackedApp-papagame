.class public Lcom/byazt/gu/uj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/eg/a;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x11,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gu/uj;->c(Lcom/byazt/gqp/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gqp/ve;

.field public final synthetic tt:Lcom/byazt/gu/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/gu/uj;Lcom/byazt/gqp/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gu/uj$1;->tt:Lcom/byazt/gu/uj;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/gu/uj$1;->c:Lcom/byazt/gqp/ve;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/eg/n;Lcom/byazt/eg/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/gu/uj$1;->c:Lcom/byazt/gqp/ve;

    new-instance v1, Lcom/byazt/gu/uj;

    invoke-direct {v1, p1}, Lcom/byazt/gu/uj;-><init>(Lcom/byazt/eg/n;)V

    new-instance p1, Lcom/byazt/gu/i;

    invoke-direct {p1, p2}, Lcom/byazt/gu/i;-><init>(Lcom/byazt/eg/h;)V

    invoke-interface {v0, v1, p1}, Lcom/byazt/gqp/ve;->onResponse(Lcom/byazt/gqp/tt;Lcom/byazt/gqp/m;)V

    return-void
.end method

.method public c(Lcom/byazt/eg/n;Ljava/io/IOException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/gu/uj$1;->c:Lcom/byazt/gqp/ve;

    new-instance v1, Lcom/byazt/gu/uj;

    invoke-direct {v1, p1}, Lcom/byazt/gu/uj;-><init>(Lcom/byazt/eg/n;)V

    invoke-interface {v0, v1, p2}, Lcom/byazt/gqp/ve;->onFailure(Lcom/byazt/gqp/tt;Ljava/io/IOException;)V

    return-void
.end method
