.class Lcom/papa/sim/statistic/s$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/sim/statistic/http/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/s;->t(Landroid/content/Context;Lcom/papa/sim/statistic/db/StatisticTable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/papa/sim/statistic/http/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/sim/statistic/db/StatisticTable;

.field final synthetic b:Lcom/papa/sim/statistic/s;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/s;Lcom/papa/sim/statistic/db/StatisticTable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/s$c;->b:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/s$c;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/papa/sim/statistic/s$c;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-string v0, ";time="

    .line 8
    .line 9
    const-string v1, "method [onFailure]:send failed. statisticTable.id= "

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/papa/sim/statistic/s$c;->b:Lcom/papa/sim/statistic/s;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/papa/sim/statistic/s$c;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/papa/sim/statistic/s$c;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/papa/sim/statistic/s$c;->b:Lcom/papa/sim/statistic/s;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/papa/sim/statistic/s$c;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/papa/sim/statistic/s$c;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1, v0, v1}, Ly7/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/papa/sim/statistic/s$c;->b:Lcom/papa/sim/statistic/s;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/papa/sim/statistic/s$c;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/papa/sim/statistic/s$c;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/papa/sim/statistic/s$c;->b:Lcom/papa/sim/statistic/s;

    .line 104
    .line 105
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/papa/sim/statistic/s$c;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Ly7/a;->r(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/sim/statistic/s$c;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/papa/sim/statistic/s$c;->b:Lcom/papa/sim/statistic/s;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/papa/sim/statistic/s$c;->b:Lcom/papa/sim/statistic/s;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/papa/sim/statistic/s$c;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ly7/a;->delete(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/papa/sim/statistic/s$c;->b:Lcom/papa/sim/statistic/s;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/papa/sim/statistic/s$c;->b:Lcom/papa/sim/statistic/s;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/papa/sim/statistic/s$c;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Ly7/a;->e(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/papa/sim/statistic/s$c;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
