.class public Lcom/byazt/cc/i$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/pop/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0xce
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/cc/i;->c(Lcom/byazt/ocd/ve;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ocd/ve;

.field public final synthetic tt:Lcom/byazt/cc/i;


# direct methods
.method public constructor <init>(Lcom/byazt/cc/i;Lcom/byazt/ocd/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/i$3;->tt:Lcom/byazt/cc/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/cc/i$3;->c:Lcom/byazt/ocd/ve;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cc/i$3;->c:Lcom/byazt/ocd/ve;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/byazt/ocd/ve;->c()V

    :cond_0
    return-void
.end method

.method public c(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/byazt/cc/i$3;->c:Lcom/byazt/ocd/ve;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 4
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/ocd/ve;->c(JJLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/cc/i$3;->c:Lcom/byazt/ocd/ve;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/ocd/ve;->c(JLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/byazt/cc/i$3;->c:Lcom/byazt/ocd/ve;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/byazt/ocd/ve;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public tt(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/cc/i$3;->c:Lcom/byazt/ocd/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-wide v1, p1

    .line 6
    move-wide v3, p3

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/ocd/ve;->tt(JJLjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public ve(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/byazt/cc/i$3;->c:Lcom/byazt/ocd/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-wide v1, p1

    .line 6
    move-wide v3, p3

    .line 7
    move-object v5, p5

    .line 8
    move-object v6, p6

    .line 9
    invoke-virtual/range {v0 .. v6}, Lcom/byazt/ocd/ve;->ve(JJLjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
