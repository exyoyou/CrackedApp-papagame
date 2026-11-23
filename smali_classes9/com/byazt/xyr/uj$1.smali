.class public Lcom/byazt/xyr/uj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nr/zm$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x219,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/xyr/uj;->uj()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/xyr/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/xyr/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/xyr/uj$1;->c:Lcom/byazt/xyr/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/xyr/uj$1;->c:Lcom/byazt/xyr/uj;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/xyr/uj;->c(Lcom/byazt/xyr/uj;)Lcom/byazt/pm/sl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/byazt/xyr/uj$1;->c:Lcom/byazt/xyr/uj;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/byazt/xyr/uj;->a(Lcom/byazt/xyr/uj;)Lcom/byazt/pm/sl;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lcom/byazt/xyr/uj$1;->c:Lcom/byazt/xyr/uj;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/xyr/uj;->tt(Lcom/byazt/xyr/uj;)Lcom/byazt/xj/ve;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/byazt/xyr/uj$1;->c:Lcom/byazt/xyr/uj;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/byazt/xyr/uj;->ve(Lcom/byazt/xyr/uj;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/byazt/xyr/uj$1;->c:Lcom/byazt/xyr/uj;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/byazt/xyr/uj;->uj(Lcom/byazt/xyr/uj;)Lcom/byazt/pm/a;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/byazt/pm/a;->tt()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v3, p0, Lcom/byazt/xyr/uj$1;->c:Lcom/byazt/xyr/uj;

    .line 41
    .line 42
    invoke-static {v3}, Lcom/byazt/xyr/uj;->n(Lcom/byazt/xyr/uj;)Lcom/byazt/pm/a;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/byazt/pm/sl;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Ljava/util/List;Lcom/byazt/pm/a;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
