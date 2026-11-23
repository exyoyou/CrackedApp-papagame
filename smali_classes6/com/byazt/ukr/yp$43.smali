.class public Lcom/byazt/ukr/yp$43;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x439,
        0x486
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic tt:I

.field public final synthetic uj:Lcom/byazt/ukr/yp;

.field public final synthetic ve:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/byazt/ukr/yp;Lcom/byazt/ete/ic;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ukr/yp$43;->uj:Lcom/byazt/ukr/yp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ukr/yp$43;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/ukr/yp$43;->tt:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/byazt/ukr/yp$43;->ve:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qal/c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/ukr/yp$43;->c:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/byazt/aas/nb;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v0, p0, Lcom/byazt/ukr/yp$43;->c:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v2, p0, Lcom/byazt/ukr/yp$43;->c:Lcom/byazt/ete/ic;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v0, v1

    .line 25
    move-object v2, v0

    .line 26
    :goto_0
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    const-string v4, "use_player"

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3, v1}, Lcom/byazt/qal/tt;->ve(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1, v0}, Lcom/byazt/qal/tt;->uj(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v2}, Lcom/byazt/qal/tt;->a(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget v1, p0, Lcom/byazt/ukr/yp$43;->tt:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->tt(I)Lcom/byazt/qal/tt;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/byazt/ukr/yp$43;->ve:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->sp(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
