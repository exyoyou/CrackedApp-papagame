.class public Lcom/byazt/cc/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/gat/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x18b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/a;->c(Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;Lcom/byazt/im/tt;J)Lcom/byazt/gat/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/gat/ve<",
        "Lcom/byazt/im/x;",
        "Lcom/byazt/im/sp;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/im/x;

.field public final synthetic c:Lcom/byazt/im/a;

.field public final synthetic n:Lcom/byazt/cc/a;

.field public final synthetic tt:Lcom/byazt/cc/a$c;

.field public final synthetic uj:J

.field public final synthetic ve:Lcom/byazt/nc/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/a;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/a$4;->n:Lcom/byazt/cc/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cc/a$4;->c:Lcom/byazt/im/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/cc/a$4;->tt:Lcom/byazt/cc/a$c;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/cc/a$4;->ve:Lcom/byazt/nc/tt;

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/byazt/cc/a$4;->uj:J

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/im/sp;)V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/byazt/cc/a$4;->n:Lcom/byazt/cc/a;

    iget-object v1, p0, Lcom/byazt/cc/a$4;->c:Lcom/byazt/im/a;

    iget-object v3, p0, Lcom/byazt/cc/a$4;->tt:Lcom/byazt/cc/a$c;

    iget-wide v4, p0, Lcom/byazt/cc/a$4;->uj:J

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;Lcom/byazt/im/a;Lcom/byazt/im/sp;Lcom/byazt/cc/a$c;J)V

    return-void
.end method

.method public c(Lcom/byazt/im/x;)V
    .locals 6

    .line 2
    iput-object p1, p0, Lcom/byazt/cc/a$4;->a:Lcom/byazt/im/x;

    .line 3
    iget-object v0, p0, Lcom/byazt/cc/a$4;->n:Lcom/byazt/cc/a;

    iget-object v2, p0, Lcom/byazt/cc/a$4;->c:Lcom/byazt/im/a;

    iget-object v3, p0, Lcom/byazt/cc/a$4;->tt:Lcom/byazt/cc/a$c;

    iget-object v4, p0, Lcom/byazt/cc/a$4;->ve:Lcom/byazt/nc/tt;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;Z)V

    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/sp;

    invoke-virtual {p0, p1}, Lcom/byazt/cc/a$4;->c(Lcom/byazt/im/sp;)V

    return-void
.end method

.method public tt(Lcom/byazt/im/x;)V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/byazt/cc/a$4;->a:Lcom/byazt/im/x;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/byazt/im/x;->n(Z)V

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/byazt/cc/a$4;->n:Lcom/byazt/cc/a;

    iget-object v4, p0, Lcom/byazt/cc/a$4;->c:Lcom/byazt/im/a;

    iget-object v5, p0, Lcom/byazt/cc/a$4;->tt:Lcom/byazt/cc/a$c;

    iget-object v6, p0, Lcom/byazt/cc/a$4;->ve:Lcom/byazt/nc/tt;

    iget-wide v7, p0, Lcom/byazt/cc/a$4;->uj:J

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v2 .. v9}, Lcom/byazt/cc/a;->c(Lcom/byazt/cc/a;Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;JZ)V

    return-void
.end method

.method public bridge synthetic tt(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/x;

    invoke-virtual {p0, p1}, Lcom/byazt/cc/a$4;->tt(Lcom/byazt/im/x;)V

    return-void
.end method

.method public synthetic ve(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/byazt/im/x;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/byazt/cc/a$4;->c(Lcom/byazt/im/x;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
