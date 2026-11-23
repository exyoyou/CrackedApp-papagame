.class Lcom/papa/sim/statistic/s$b;
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
    iput-object p1, p0, Lcom/papa/sim/statistic/s$b;->b:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/s$b;->a:Lcom/papa/sim/statistic/db/StatisticTable;

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
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/papa/sim/statistic/s$b;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const-string v0, ";time="

    .line 11
    .line 12
    const-string v1, "method [onFailure]:send failed. statisticTable.id= "

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/papa/sim/statistic/s$b;->b:Lcom/papa/sim/statistic/s;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/papa/sim/statistic/s$b;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/papa/sim/statistic/s$b;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/papa/sim/statistic/s$b;->b:Lcom/papa/sim/statistic/s;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/papa/sim/statistic/s$b;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/papa/sim/statistic/s$b;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {p1, v0, v1}, Ly7/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/papa/sim/statistic/s$b;->b:Lcom/papa/sim/statistic/s;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/papa/sim/statistic/s$b;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/papa/sim/statistic/s$b;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/papa/sim/statistic/s$b;->b:Lcom/papa/sim/statistic/s;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/papa/sim/statistic/s$b;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Ly7/a;->r(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 115
    .line 116
    .line 117
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/papa/sim/statistic/s$b;->a:Lcom/papa/sim/statistic/db/StatisticTable;

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
    iget-object p1, p0, Lcom/papa/sim/statistic/s$b;->b:Lcom/papa/sim/statistic/s;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/papa/sim/statistic/s$b;->b:Lcom/papa/sim/statistic/s;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/papa/sim/statistic/s$b;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Ly7/a;->delete(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/papa/sim/statistic/s$b;->b:Lcom/papa/sim/statistic/s;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/papa/sim/statistic/s$b;->b:Lcom/papa/sim/statistic/s;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/papa/sim/statistic/s$b;->a:Lcom/papa/sim/statistic/db/StatisticTable;

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
    invoke-virtual {p0, p1}, Lcom/papa/sim/statistic/s$b;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
