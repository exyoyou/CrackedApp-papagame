.class public Lcom/byazt/uo/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ip/uj$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8b,
        0x1a
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/uo/c;->initLifecycle(Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:Lcom/byazt/uo/c;


# direct methods
.method public constructor <init>(Lcom/byazt/uo/c;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/uo/c$1;->tt:Lcom/byazt/uo/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/uo/c$1;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ip/tt;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/byazt/ha/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/byazt/ha/ve;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/uo/c$1;->c:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    iput-object v0, p1, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/uo/c$1;->tt:Lcom/byazt/uo/c;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/byazt/uo/c$1;->tt:Lcom/byazt/uo/c;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/byazt/uo/c;->tt:Lcom/byazt/ete/ic;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, p1, Lcom/byazt/ip/c;->sp:I

    .line 34
    .line 35
    iput-object v0, p1, Lcom/byazt/ip/c;->x:Ljava/lang/String;

    .line 36
    .line 37
    :cond_0
    return-void
.end method
