.class public Lcom/byazt/sy/n$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ip/uj$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x210,
        0x63f
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/sy/n$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/sy/n$2;


# direct methods
.method public constructor <init>(Lcom/byazt/sy/n$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/sy/n$2$1;->c:Lcom/byazt/sy/n$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ip/tt;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/byazt/ha/x;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/byazt/ha/x;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/sy/n$2$1;->c:Lcom/byazt/sy/n$2;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/byazt/sy/n$2;->ve:Lcom/byazt/sy/n;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/byazt/sy/n;->c:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/ete/p;->x(Lcom/byazt/ete/ic;)Lcom/byazt/ete/ir;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/byazt/ete/ir;->n()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p1, Lcom/byazt/ha/x;->tt:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/sy/n$2$1;->c:Lcom/byazt/sy/n$2;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/byazt/sy/n$2;->ve:Lcom/byazt/sy/n;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/byazt/sy/n;->c:Lcom/byazt/ete/ic;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/byazt/ete/p;->x(Lcom/byazt/ete/ic;)Lcom/byazt/ete/ir;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/byazt/ete/ir;->uj()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p1, Lcom/byazt/ha/x;->n:I

    .line 38
    .line 39
    :cond_0
    return-void
.end method
