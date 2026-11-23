.class public Lcom/byazt/gu/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/eg/gt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x11,
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/gu/a;->c(Lcom/byazt/gqp/t$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/gqp/i;

.field public final synthetic tt:Lcom/byazt/gu/a;


# direct methods
.method public constructor <init>(Lcom/byazt/gu/a;Lcom/byazt/gqp/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/gu/a$1;->tt:Lcom/byazt/gu/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/gu/a$1;->c:Lcom/byazt/gqp/i;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/eg/gt$c;)Lcom/byazt/eg/h;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/gu/a$1;->c:Lcom/byazt/gqp/i;

    .line 2
    .line 3
    new-instance v1, Lcom/byazt/gu/n;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/byazt/gu/n;-><init>(Lcom/byazt/eg/gt$c;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/byazt/gqp/i;->c(Lcom/byazt/gqp/i$c;)Lcom/byazt/gqp/m;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/byazt/gu/i;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/byazt/gu/i;->c:Lcom/byazt/eg/h;

    .line 15
    .line 16
    return-object p1
.end method
