.class public Lcom/byazt/kcl/tt$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x173,
        0x5e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kcl/tt;->n(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kcl/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/kcl/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kcl/tt$3;->c:Lcom/byazt/kcl/tt;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qal/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/kcl/tt$3;->c:Lcom/byazt/kcl/tt;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/kcl/tt;->ve(Lcom/byazt/kcl/tt;)Lcom/byazt/ete/ic;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/byazt/kcl/tt$3;->c:Lcom/byazt/kcl/tt;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/byazt/kcl/tt;->ve(Lcom/byazt/kcl/tt;)Lcom/byazt/ete/ic;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lcom/byazt/aas/nb;->m(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/byazt/kcl/tt$3;->c:Lcom/byazt/kcl/tt;

    .line 26
    .line 27
    invoke-static {v3}, Lcom/byazt/kcl/tt;->uj(Lcom/byazt/kcl/tt;)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    const/4 v3, 0x7

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/16 v3, 0x8

    .line 36
    .line 37
    :goto_0
    invoke-virtual {v2, v3}, Lcom/byazt/qal/tt;->c(I)Lcom/byazt/qal/tt;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v2, v0}, Lcom/byazt/qal/tt;->ve(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->a(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/byazt/kcl/tt$3;->c:Lcom/byazt/kcl/tt;

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/byazt/kcl/tt;->da()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->tt(I)Lcom/byazt/qal/tt;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/byazt/kcl/tt$3;->c:Lcom/byazt/kcl/tt;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/byazt/kcl/tt;->sl()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Lcom/byazt/qal/tt;->sp(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/byazt/kcl/tt$3;->c:Lcom/byazt/kcl/tt;

    .line 73
    .line 74
    invoke-static {v1}, Lcom/byazt/kcl/tt;->ve(Lcom/byazt/kcl/tt;)Lcom/byazt/ete/ic;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->x(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget-object v2, p0, Lcom/byazt/kcl/tt$3;->c:Lcom/byazt/kcl/tt;

    .line 87
    .line 88
    invoke-static {v2}, Lcom/byazt/kcl/tt;->ve(Lcom/byazt/kcl/tt;)Lcom/byazt/ete/ic;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v1, v2}, Lcom/byazt/qal/tt;->uj(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 97
    .line 98
    .line 99
    return-object v0
.end method
