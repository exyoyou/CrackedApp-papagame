.class public Lcom/byazt/iox/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/tdq/c$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c3,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/iox/c;->c(Ljava/lang/String;Lcom/byazt/gat/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:J

.field public final synthetic tt:Lcom/byazt/gat/tt;

.field public final synthetic uj:Lcom/byazt/iox/c;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/iox/c;JLcom/byazt/gat/tt;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/iox/c$1;->uj:Lcom/byazt/iox/c;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/byazt/iox/c$1;->c:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/byazt/iox/c$1;->tt:Lcom/byazt/gat/tt;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/byazt/iox/c$1;->ve:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    const-string v0, "lqmt"

    const-string v1, "\u7f13\u5b58\u8bfb\u53d6\u5931\u8d25"

    .line 17
    invoke-static {v0, v1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/byazt/iox/c$1;->tt:Lcom/byazt/gat/tt;

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/byazt/iox/c$1;->uj:Lcom/byazt/iox/c;

    invoke-static {v1}, Lcom/byazt/iox/c;->c(Lcom/byazt/iox/c;)Lcom/byazt/im/sp;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/byazt/gat/tt;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/byazt/im/a;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7f13\u5b58\u8bfb\u53d6\u603b\u8017\u65f6\uff1a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/byazt/iox/c$1;->c:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lqmt"

    invoke-static {v1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/byazt/iox/c$1;->tt:Lcom/byazt/gat/tt;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_1
    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/byazt/iox/c$1;->uj:Lcom/byazt/iox/c;

    invoke-static {p1}, Lcom/byazt/iox/c;->c(Lcom/byazt/iox/c;)Lcom/byazt/im/sp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/im/sp;->tt(I)V

    .line 5
    iget-object p1, p0, Lcom/byazt/iox/c$1;->uj:Lcom/byazt/iox/c;

    invoke-static {p1}, Lcom/byazt/iox/c;->c(Lcom/byazt/iox/c;)Lcom/byazt/im/sp;

    move-result-object p1

    const-string v0, "no ad model cache"

    invoke-virtual {p1, v0}, Lcom/byazt/im/sp;->c(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/byazt/iox/c$1;->tt:Lcom/byazt/gat/tt;

    iget-object v0, p0, Lcom/byazt/iox/c$1;->uj:Lcom/byazt/iox/c;

    invoke-static {v0}, Lcom/byazt/iox/c;->c(Lcom/byazt/iox/c;)Lcom/byazt/im/sp;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/byazt/gat/tt;->c(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_2
    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v1

    if-nez v1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/byazt/iox/c$1;->uj:Lcom/byazt/iox/c;

    invoke-static {p1}, Lcom/byazt/iox/c;->c(Lcom/byazt/iox/c;)Lcom/byazt/im/sp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/im/sp;->tt(I)V

    .line 9
    iget-object p1, p0, Lcom/byazt/iox/c$1;->uj:Lcom/byazt/iox/c;

    invoke-static {p1}, Lcom/byazt/iox/c;->c(Lcom/byazt/iox/c;)Lcom/byazt/im/sp;

    move-result-object p1

    const-string v0, "no splash material"

    invoke-virtual {p1, v0}, Lcom/byazt/im/sp;->c(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/byazt/iox/c$1;->tt:Lcom/byazt/gat/tt;

    iget-object v0, p0, Lcom/byazt/iox/c$1;->uj:Lcom/byazt/iox/c;

    invoke-static {v0}, Lcom/byazt/iox/c;->c(Lcom/byazt/iox/c;)Lcom/byazt/im/sp;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/byazt/gat/tt;->c(Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/byazt/iox/c$1;->uj:Lcom/byazt/iox/c;

    invoke-static {v1}, Lcom/byazt/iox/c;->tt(Lcom/byazt/iox/c;)Lcom/byazt/dbo/c;

    move-result-object v1

    iget-wide v2, p0, Lcom/byazt/iox/c$1;->c:J

    invoke-virtual {v1, v2, v3}, Lcom/byazt/dbo/c;->c(J)V

    .line 13
    iget-object v1, p0, Lcom/byazt/iox/c$1;->uj:Lcom/byazt/iox/c;

    invoke-static {v1}, Lcom/byazt/iox/c;->tt(Lcom/byazt/iox/c;)Lcom/byazt/dbo/c;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/byazt/dbo/c;->tt(J)V

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/byazt/iox/c$1;->uj:Lcom/byazt/iox/c;

    invoke-static {v0}, Lcom/byazt/iox/c;->tt(Lcom/byazt/iox/c;)Lcom/byazt/dbo/c;

    move-result-object v0

    new-instance v2, Lcom/byazt/iox/c$1$1;

    invoke-direct {v2, p0, p1}, Lcom/byazt/iox/c$1$1;-><init>(Lcom/byazt/iox/c$1;Lcom/byazt/im/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/byazt/dbo/c;->c(Ljava/util/List;Lcom/byazt/dbo/a;)V

    return-void
.end method
