.class Lcom/papa/sim/statistic/s$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/sim/statistic/http/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/s;->a0(Landroid/content/Context;Ljava/util/List;)V
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/papa/sim/statistic/s;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/s;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/s$f;->b:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/s$f;->a:Ljava/util/List;

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
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/papa/sim/statistic/s$f;->a:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const-string v4, ";time="

    .line 29
    .line 30
    const-string v5, "method [onFailure]:send failed. statisticTable.id= "

    .line 31
    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    iget-object v3, p0, Lcom/papa/sim/statistic/s$f;->b:Lcom/papa/sim/statistic/s;

    .line 35
    .line 36
    invoke-static {v3}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v3, p0, Lcom/papa/sim/statistic/s$f;->b:Lcom/papa/sim/statistic/s;

    .line 65
    .line 66
    invoke-static {v3}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v3, v4, v2}, Ly7/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    iget-object v3, p0, Lcom/papa/sim/statistic/s$f;->b:Lcom/papa/sim/statistic/s;

    .line 83
    .line 84
    invoke-static {v3}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-lez v1, :cond_2

    .line 121
    .line 122
    iget-object v1, p0, Lcom/papa/sim/statistic/s$f;->b:Lcom/papa/sim/statistic/s;

    .line 123
    .line 124
    invoke-static {v1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1, v0}, Ly7/a;->s(Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    :cond_2
    if-eqz p1, :cond_3

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    .line 135
    .line 136
    :cond_3
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/papa/sim/statistic/s$f;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/papa/sim/statistic/s$f;->b:Lcom/papa/sim/statistic/s;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/papa/sim/statistic/s$f;->b:Lcom/papa/sim/statistic/s;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1, v0}, Ly7/a;->delete(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/papa/sim/statistic/s$f;->b:Lcom/papa/sim/statistic/s;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/papa/sim/statistic/s$f;->b:Lcom/papa/sim/statistic/s;

    .line 46
    .line 47
    invoke-static {v1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1, v0}, Ly7/a;->e(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/papa/sim/statistic/s$f;->b(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
