.class public Lcom/byazt/om/sp$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x22a,
        0x250
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/om/sp;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/om/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/om/sp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/om/sp$2;->c:Lcom/byazt/om/sp;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/om/sp$2;->c:Lcom/byazt/om/sp;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/om/sp;->ve(Lcom/byazt/om/sp;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/byazt/om/sp$2;->c:Lcom/byazt/om/sp;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/byazt/om/sp;->n(Lcom/byazt/om/sp;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-le v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/om/sp$2;->c:Lcom/byazt/om/sp;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/byazt/om/sp;->ve(Lcom/byazt/om/sp;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/byazt/om/sp$2;->c:Lcom/byazt/om/sp;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/byazt/om/sp;->a(Lcom/byazt/om/sp;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/byazt/om/c;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/byazt/om/sp$2;->c:Lcom/byazt/om/sp;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/byazt/om/c;->tt(Lcom/byazt/om/c$c;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
