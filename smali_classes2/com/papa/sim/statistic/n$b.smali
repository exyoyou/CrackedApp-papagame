.class Lcom/papa/sim/statistic/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/sim/statistic/http/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/n;->b(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/papa/sim/statistic/http/a<",
        "Lcom/papa/sim/statistic/GameWorldResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/papa/sim/statistic/JoyStickConfig;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/papa/sim/statistic/JoyStickConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/n$b;->a:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/n$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

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
    .locals 5

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    iget-object v0, p0, Lcom/papa/sim/statistic/n$b;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Ly7/a;->o(Landroid/content/Context;)Ly7/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/papa/sim/statistic/db/StatisticTable;-><init>()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/papa/sim/statistic/n$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/papa/sim/statistic/JoyStickConfig;->getId()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/db/StatisticTable;->setId(I)V

    .line 21
    .line 22
    .line 23
    sget-object v2, Lcom/papa/sim/statistic/Event;->joyStickInfoPost:Lcom/papa/sim/statistic/Event;

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/db/StatisticTable;->setType(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-object v3, p0, Lcom/papa/sim/statistic/n$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/papa/sim/statistic/n$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    .line 51
    .line 52
    invoke-virtual {v3}, Lcom/papa/sim/statistic/JoyStickConfig;->getUpdate_time()J

    .line 53
    .line 54
    .line 55
    move-result-wide v3

    .line 56
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/db/StatisticTable;->setTime(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Lcom/papa/sim/statistic/n$b;->a:Landroid/content/Context;

    .line 70
    .line 71
    invoke-static {v2}, Ly7/a;->o(Landroid/content/Context;)Ly7/a;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2, v1}, Ly7/a;->r(Lcom/papa/sim/statistic/db/StatisticTable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catch_0
    move-exception v2

    .line 80
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    sget-object v2, Lcom/papa/sim/statistic/Event;->setpapaerror:Lcom/papa/sim/statistic/Event;

    .line 84
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object v4, p0, Lcom/papa/sim/statistic/n$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    .line 91
    .line 92
    invoke-virtual {v4}, Lcom/papa/sim/statistic/JoyStickConfig;->getId()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v0, v2, v3}, Ly7/a;->i(Lcom/papa/sim/statistic/Event;Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    if-nez v0, :cond_0

    .line 111
    .line 112
    iget-object v0, p0, Lcom/papa/sim/statistic/n$b;->a:Landroid/content/Context;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/papa/sim/statistic/s;->m(Landroid/content/Context;)Lcom/papa/sim/statistic/s;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    iget-object v4, p0, Lcom/papa/sim/statistic/n$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    .line 128
    .line 129
    invoke-virtual {v4}, Lcom/papa/sim/statistic/JoyStickConfig;->getId()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v0, v2, v1, p1}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :cond_0
    :goto_0
    return-void
.end method

.method public b(Lcom/papa/sim/statistic/GameWorldResponse;)V
    .locals 5

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/papa/sim/statistic/GameWorldResponse;->getError()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/papa/sim/statistic/n$b;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p1}, Ly7/a;->o(Landroid/content/Context;)Ly7/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v1, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/papa/sim/statistic/db/StatisticTable;-><init>()V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/papa/sim/statistic/n$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/papa/sim/statistic/JoyStickConfig;->getId()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/db/StatisticTable;->setId(I)V

    .line 27
    .line 28
    .line 29
    sget-object v2, Lcom/papa/sim/statistic/Event;->joyStickInfoPost:Lcom/papa/sim/statistic/Event;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/db/StatisticTable;->setType(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, p0, Lcom/papa/sim/statistic/n$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/db/StatisticTable;->setArgs1(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lcom/papa/sim/statistic/n$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    .line 57
    .line 58
    invoke-virtual {v3}, Lcom/papa/sim/statistic/JoyStickConfig;->getUpdate_time()J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/db/StatisticTable;->setTime(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/papa/sim/statistic/n$b;->a:Landroid/content/Context;

    .line 76
    .line 77
    invoke-static {v2}, Ly7/a;->o(Landroid/content/Context;)Ly7/a;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2, v1}, Ly7/a;->r(Lcom/papa/sim/statistic/db/StatisticTable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception v2

    .line 86
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    sget-object v2, Lcom/papa/sim/statistic/Event;->setpapaerror:Lcom/papa/sim/statistic/Event;

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-object v4, p0, Lcom/papa/sim/statistic/n$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    .line 97
    .line 98
    invoke-virtual {v4}, Lcom/papa/sim/statistic/JoyStickConfig;->getId()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {p1, v2, v3}, Ly7/a;->i(Lcom/papa/sim/statistic/Event;Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-nez p1, :cond_0

    .line 117
    .line 118
    iget-object p1, p0, Lcom/papa/sim/statistic/n$b;->a:Landroid/content/Context;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->m(Landroid/content/Context;)Lcom/papa/sim/statistic/s;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getArgs1()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    iget-object v4, p0, Lcom/papa/sim/statistic/n$b;->b:Lcom/papa/sim/statistic/JoyStickConfig;

    .line 134
    .line 135
    invoke-virtual {v4}, Lcom/papa/sim/statistic/JoyStickConfig;->getId()I

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-virtual {p1, v2, v1, v0}, Lcom/papa/sim/statistic/s;->J(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/papa/sim/statistic/GameWorldResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/papa/sim/statistic/n$b;->b(Lcom/papa/sim/statistic/GameWorldResponse;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
