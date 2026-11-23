.class Lcom/papa/sim/statistic/s$d;
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
        "Lcom/papa/sim/statistic/StatResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/sim/statistic/db/StatisticTable;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/papa/sim/statistic/s;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/s;Lcom/papa/sim/statistic/db/StatisticTable;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/s$d;->c:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/s$d;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    sget-object v0, Lcom/papa/sim/statistic/Event;->appPageClick:Lcom/papa/sim/statistic/Event;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v0, Lcom/papa/sim/statistic/Event;->appPageDownload:Lcom/papa/sim/statistic/Event;

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    const-string v0, ";time="

    .line 54
    .line 55
    const-string v1, "method [onFailure]:send failed. statisticTable.id= "

    .line 56
    .line 57
    if-nez p1, :cond_1

    .line 58
    .line 59
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->c:Lcom/papa/sim/statistic/s;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    :try_start_0
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->c:Lcom/papa/sim/statistic/s;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object v0, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p1, v0, v1}, Ly7/a;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->c:Lcom/papa/sim/statistic/s;

    .line 116
    .line 117
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    :try_start_1
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->c:Lcom/papa/sim/statistic/s;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-object v0, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 156
    .line 157
    invoke-virtual {p1, v0}, Ly7/a;->r(Lcom/papa/sim/statistic/db/StatisticTable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    .line 159
    .line 160
    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public b(Lcom/papa/sim/statistic/StatResult;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/papa/sim/statistic/s$d;->c:Lcom/papa/sim/statistic/s;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "statResult="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p1}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "ok"

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatResult;->getStatus()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget-object v0, Lcom/papa/sim/statistic/Event;->startApp:Lcom/papa/sim/statistic/Event;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->b:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget-object v0, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/pref/b;->K(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    sget-object v0, Lcom/papa/sim/statistic/Event;->gameList:Lcom/papa/sim/statistic/Event;

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_2

    .line 93
    .line 94
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->b:Landroid/content/Context;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p1, v0}, Lcom/papa/sim/statistic/pref/b;->C(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_3

    .line 116
    .line 117
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->c:Lcom/papa/sim/statistic/s;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->c:Lcom/papa/sim/statistic/s;

    .line 123
    .line 124
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    iget-object v0, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Ly7/a;->delete(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_1

    .line 134
    .line 135
    :cond_3
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->c:Lcom/papa/sim/statistic/s;

    .line 136
    .line 137
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->c:Lcom/papa/sim/statistic/s;

    .line 141
    .line 142
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Ly7/a;->e(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_1

    .line 152
    .line 153
    :cond_4
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    sget-object v0, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_7

    .line 166
    .line 167
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    sget-object v0, Lcom/papa/sim/statistic/Event;->appPageClick:Lcom/papa/sim/statistic/Event;

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_7

    .line 180
    .line 181
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 182
    .line 183
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    sget-object v0, Lcom/papa/sim/statistic/Event;->appPageDownload:Lcom/papa/sim/statistic/Event;

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    if-eqz p1, :cond_5

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_5
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    const-string v0, ";time="

    .line 203
    .line 204
    if-nez p1, :cond_6

    .line 205
    .line 206
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->c:Lcom/papa/sim/statistic/s;

    .line 207
    .line 208
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    const-string v1, "method [onSuccess]:send failed. send to 1.statisticTable.id= "

    .line 217
    .line 218
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 234
    .line 235
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->c:Lcom/papa/sim/statistic/s;

    .line 243
    .line 244
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    iget-object v0, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 249
    .line 250
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 255
    .line 256
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {p1, v0, v1}, Ly7/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_6
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->c:Lcom/papa/sim/statistic/s;

    .line 265
    .line 266
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    const-string v1, "method [onSuccess]:send failed.save it to db .statisticTable.id= "

    .line 275
    .line 276
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    iget-object v1, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 280
    .line 281
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    iget-object v0, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 292
    .line 293
    invoke-virtual {v0}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    iget-object p1, p0, Lcom/papa/sim/statistic/s$d;->c:Lcom/papa/sim/statistic/s;

    .line 301
    .line 302
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    iget-object v0, p0, Lcom/papa/sim/statistic/s$d;->a:Lcom/papa/sim/statistic/db/StatisticTable;

    .line 307
    .line 308
    invoke-virtual {p1, v0}, Ly7/a;->r(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 309
    .line 310
    .line 311
    :cond_7
    :goto_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/papa/sim/statistic/StatResult;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/papa/sim/statistic/s$d;->b(Lcom/papa/sim/statistic/StatResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
