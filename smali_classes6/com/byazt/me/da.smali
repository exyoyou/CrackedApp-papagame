.class public Lcom/byazt/me/da;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x58b,
        0x48
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/me/da$c;
    }
.end annotation


# instance fields
.field public final a:I

.field public final c:I

.field public final da:I

.field public final i:I

.field public final n:I

.field public final sl:I

.field public final sp:I

.field public final t:I

.field public final tt:I

.field public final u:I

.field public final uj:I

.field public final ve:I

.field public final x:I

.field public final yp:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/byazt/me/da$c;)V
    .locals 1
    .param p1    # Lcom/byazt/me/da$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Lcom/byazt/me/da$c;->c:I

    .line 5
    .line 6
    iput v0, p0, Lcom/byazt/me/da;->c:I

    .line 7
    .line 8
    iget v0, p1, Lcom/byazt/me/da$c;->tt:I

    .line 9
    .line 10
    iput v0, p0, Lcom/byazt/me/da;->tt:I

    .line 11
    .line 12
    iget v0, p1, Lcom/byazt/me/da$c;->ve:I

    .line 13
    .line 14
    iput v0, p0, Lcom/byazt/me/da;->ve:I

    .line 15
    .line 16
    iget v0, p1, Lcom/byazt/me/da$c;->uj:I

    .line 17
    .line 18
    iput v0, p0, Lcom/byazt/me/da;->uj:I

    .line 19
    .line 20
    iget v0, p1, Lcom/byazt/me/da$c;->n:I

    .line 21
    .line 22
    iput v0, p0, Lcom/byazt/me/da;->n:I

    .line 23
    .line 24
    iget v0, p1, Lcom/byazt/me/da$c;->a:I

    .line 25
    .line 26
    iput v0, p0, Lcom/byazt/me/da;->a:I

    .line 27
    .line 28
    iget v0, p1, Lcom/byazt/me/da$c;->sp:I

    .line 29
    .line 30
    iput v0, p0, Lcom/byazt/me/da;->sp:I

    .line 31
    .line 32
    iget v0, p1, Lcom/byazt/me/da$c;->x:I

    .line 33
    .line 34
    iput v0, p0, Lcom/byazt/me/da;->x:I

    .line 35
    .line 36
    iget-object v0, p1, Lcom/byazt/me/da$c;->yp:Ljava/util/Map;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/byazt/me/da;->yp:Ljava/util/Map;

    .line 39
    .line 40
    iget v0, p1, Lcom/byazt/me/da$c;->da:I

    .line 41
    .line 42
    iput v0, p0, Lcom/byazt/me/da;->i:I

    .line 43
    .line 44
    iget v0, p1, Lcom/byazt/me/da$c;->sl:I

    .line 45
    .line 46
    iput v0, p0, Lcom/byazt/me/da;->da:I

    .line 47
    .line 48
    iget v0, p1, Lcom/byazt/me/da$c;->t:I

    .line 49
    .line 50
    iput v0, p0, Lcom/byazt/me/da;->sl:I

    .line 51
    .line 52
    iget v0, p1, Lcom/byazt/me/da$c;->i:I

    .line 53
    .line 54
    iput v0, p0, Lcom/byazt/me/da;->t:I

    .line 55
    .line 56
    iget p1, p1, Lcom/byazt/me/da$c;->u:I

    .line 57
    .line 58
    iput p1, p0, Lcom/byazt/me/da;->u:I

    .line 59
    .line 60
    return-void
.end method

.method public static c(Lcom/byazt/am/uj;)Lcom/byazt/me/da;
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcom/byazt/me/da$c;

    invoke-virtual {p0}, Lcom/byazt/am/uj;->c()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/byazt/me/da$c;-><init>(I)V

    .line 2
    invoke-virtual {p0}, Lcom/byazt/am/uj;->tt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/me/da$c;->c(I)Lcom/byazt/me/da$c;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/byazt/am/uj;->uj()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/me/da$c;->da(I)Lcom/byazt/me/da$c;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/byazt/am/uj;->ve()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/me/da$c;->i(I)Lcom/byazt/me/da$c;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/byazt/am/uj;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/me/da$c;->ve(I)Lcom/byazt/me/da$c;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lcom/byazt/am/uj;->da()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/me/da$c;->uj(I)Lcom/byazt/me/da$c;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/byazt/am/uj;->sl()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/me/da$c;->n(I)Lcom/byazt/me/da$c;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lcom/byazt/am/uj;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/me/da$c;->a(I)Lcom/byazt/me/da$c;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Lcom/byazt/am/uj;->sp()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/me/da$c;->x(I)Lcom/byazt/me/da$c;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Lcom/byazt/am/uj;->n()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/me/da$c;->sl(I)Lcom/byazt/me/da$c;

    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/byazt/am/uj;->t()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/me/da$c;->tt(I)Lcom/byazt/me/da$c;

    move-result-object v1

    .line 12
    invoke-virtual {p0}, Lcom/byazt/am/uj;->x()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/me/da$c;->sp(I)Lcom/byazt/me/da$c;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/byazt/am/uj;->u()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/byazt/me/da$c;->c(Ljava/util/Map;)Lcom/byazt/me/da$c;

    .line 14
    invoke-virtual {v0}, Lcom/byazt/me/da$c;->c()Lcom/byazt/me/da;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static c(Lcom/byazt/me/da;)Lcom/byazt/sn/c;
    .locals 1

    if-eqz p0, :cond_0

    .line 15
    new-instance v0, Lcom/byazt/sn/c;

    invoke-direct {v0, p0}, Lcom/byazt/sn/c;-><init>(Lcom/byazt/me/da;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
