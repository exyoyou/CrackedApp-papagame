.class public Lcom/byazt/xn/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gqp/i;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x369,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xn/c;->n()Lcom/byazt/gqp/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xn/c;


# direct methods
.method public constructor <init>(Lcom/byazt/xn/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xn/c$1;->c:Lcom/byazt/xn/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/gqp/i$c;)Lcom/byazt/gqp/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/xn/c$1;->c:Lcom/byazt/xn/c;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/byazt/gqp/i$c;->c()Lcom/byazt/gqp/yp;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/xn/c;->c(Lcom/byazt/gqp/yp;)Lcom/byazt/gqp/m;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
