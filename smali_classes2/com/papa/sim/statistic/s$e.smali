.class Lcom/papa/sim/statistic/s$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa/sim/statistic/http/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/s;->Z(Ljava/util/List;)V
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
    iput-object p1, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/s$e;->a:Ljava/util/List;

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
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa/sim/statistic/s$e;->a:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    sget-object v3, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    sget-object v3, Lcom/papa/sim/statistic/Event;->appPageClick:Lcom/papa/sim/statistic/Event;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    sget-object v3, Lcom/papa/sim/statistic/Event;->appPageDownload:Lcom/papa/sim/statistic/Event;

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    .line 70
    .line 71
    .line 72
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    const-string v3, ";time="

    .line 74
    .line 75
    const-string v4, "method [onFailure]:send failed. statisticTable.id= "

    .line 76
    .line 77
    if-nez v2, :cond_1

    .line 78
    .line 79
    :try_start_1
    iget-object v2, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 80
    .line 81
    invoke-static {v2}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    .line 108
    .line 109
    :try_start_2
    iget-object v2, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 110
    .line 111
    invoke-static {v2}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v2, v3, v1}, Ly7/a;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    :try_start_3
    iget-object v2, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 128
    .line 129
    invoke-static {v2}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 141
    .line 142
    .line 143
    move-result v4

    .line 144
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 155
    .line 156
    .line 157
    :try_start_4
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 158
    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_2
    :goto_1
    return-void

    .line 163
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 164
    .line 165
    invoke-static {v0}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0, p1}, Ly7/a;->s(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :catch_1
    move-exception p1

    .line 174
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    .line 176
    .line 177
    :goto_2
    iget-object p1, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 178
    .line 179
    const/4 v0, 0x0

    .line 180
    invoke-static {p1, v0}, Lcom/papa/sim/statistic/s;->f(Lcom/papa/sim/statistic/s;Z)Z

    .line 181
    .line 182
    .line 183
    return-void
.end method

.method public b(Lcom/papa/sim/statistic/StatResult;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "statResult="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/papa/sim/statistic/JsonMapper;->getInstance()Lcom/papa/sim/statistic/JsonMapper;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p1}, Lcom/papa/sim/statistic/JsonMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/papa/sim/statistic/s;->d(Lcom/papa/sim/statistic/s;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuffer;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/papa/sim/statistic/s$e;->a:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v2, "; "

    .line 73
    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 90
    .line 91
    invoke-static {v1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-string v2, "send success"

    .line 96
    .line 97
    invoke-static {v1, v0, v2}, Lcom/papa/sim/statistic/k;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/papa/sim/statistic/s$e;->a:Ljava/util/List;

    .line 106
    .line 107
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    if-eqz v2, :cond_9

    .line 116
    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    check-cast v2, Lcom/papa/sim/statistic/db/StatisticTable;

    .line 122
    .line 123
    const-string v3, "ok"

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/papa/sim/statistic/StatResult;->getStatus()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-eqz v3, :cond_5

    .line 134
    .line 135
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    sget-object v4, Lcom/papa/sim/statistic/Event;->startApp:Lcom/papa/sim/statistic/Event;

    .line 140
    .line 141
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eqz v3, :cond_2

    .line 150
    .line 151
    iget-object v3, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 152
    .line 153
    invoke-static {v3}, Lcom/papa/sim/statistic/s;->e(Lcom/papa/sim/statistic/s;)Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-static {v3}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/pref/b;->K(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_2
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    sget-object v4, Lcom/papa/sim/statistic/Event;->gameList:Lcom/papa/sim/statistic/Event;

    .line 174
    .line 175
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_3

    .line 184
    .line 185
    iget-object v3, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 186
    .line 187
    invoke-static {v3}, Lcom/papa/sim/statistic/s;->e(Lcom/papa/sim/statistic/s;)Landroid/content/Context;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-static {v3}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    invoke-virtual {v3, v4}, Lcom/papa/sim/statistic/pref/b;->C(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :cond_3
    :goto_2
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-nez v3, :cond_4

    .line 207
    .line 208
    iget-object v3, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 209
    .line 210
    invoke-static {v3}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    iget-object v3, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 214
    .line 215
    invoke-static {v3}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-virtual {v3, v2}, Ly7/a;->delete(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 220
    .line 221
    .line 222
    goto :goto_1

    .line 223
    :cond_4
    iget-object v3, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 224
    .line 225
    invoke-static {v3}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    iget-object v3, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 229
    .line 230
    invoke-static {v3}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {v3, v2}, Ly7/a;->e(Lcom/papa/sim/statistic/db/StatisticTable;)V

    .line 235
    .line 236
    .line 237
    goto :goto_1

    .line 238
    :cond_5
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    sget-object v4, Lcom/papa/sim/statistic/Event;->appPageVisit:Lcom/papa/sim/statistic/Event;

    .line 243
    .line 244
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    if-nez v3, :cond_8

    .line 249
    .line 250
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    sget-object v4, Lcom/papa/sim/statistic/Event;->appPageClick:Lcom/papa/sim/statistic/Event;

    .line 255
    .line 256
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v3

    .line 260
    if-nez v3, :cond_8

    .line 261
    .line 262
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    sget-object v4, Lcom/papa/sim/statistic/Event;->appPageDownload:Lcom/papa/sim/statistic/Event;

    .line 267
    .line 268
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    if-eqz v3, :cond_6

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_6
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getIsdirect()I

    .line 276
    .line 277
    .line 278
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    const-string v4, ";time="

    .line 280
    .line 281
    if-nez v3, :cond_7

    .line 282
    .line 283
    :try_start_1
    iget-object v3, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 284
    .line 285
    invoke-static {v3}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    new-instance v3, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .line 292
    .line 293
    const-string v5, "method [onSuccess]:send failed. send to 1.statisticTable.id= "

    .line 294
    .line 295
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 299
    .line 300
    .line 301
    move-result v5

    .line 302
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v4

    .line 312
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    iget-object v3, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 316
    .line 317
    invoke-static {v3}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getType()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v4

    .line 325
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    invoke-virtual {v3, v4, v2}, Ly7/a;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto/16 :goto_1

    .line 333
    .line 334
    :cond_7
    iget-object v3, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 335
    .line 336
    invoke-static {v3}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    .line 340
    .line 341
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 342
    .line 343
    .line 344
    const-string v5, "method [onSuccess]:send failed.save it to db .statisticTable.id= "

    .line 345
    .line 346
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getId()I

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v2}, Lcom/papa/sim/statistic/db/StatisticTable;->getTime()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v4

    .line 363
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    goto/16 :goto_1

    .line 370
    .line 371
    :cond_8
    :goto_3
    return-void

    .line 372
    :cond_9
    iget-object p1, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 373
    .line 374
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-virtual {p1}, Ly7/a;->k()Ljava/util/List;

    .line 379
    .line 380
    .line 381
    move-result-object p1

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .line 386
    .line 387
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 388
    .line 389
    .line 390
    move-result p1

    .line 391
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string p1, ""

    .line 395
    .line 396
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    iget-object p1, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 400
    .line 401
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->c(Lcom/papa/sim/statistic/s;)Ly7/a;

    .line 402
    .line 403
    .line 404
    move-result-object p1

    .line 405
    invoke-virtual {p1, v0}, Ly7/a;->s(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 406
    .line 407
    .line 408
    goto :goto_4

    .line 409
    :catch_0
    move-exception p1

    .line 410
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 411
    .line 412
    .line 413
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 414
    .line 415
    const/4 v0, 0x0

    .line 416
    invoke-static {p1, v0}, Lcom/papa/sim/statistic/s;->f(Lcom/papa/sim/statistic/s;Z)Z

    .line 417
    .line 418
    .line 419
    iget-object p1, p0, Lcom/papa/sim/statistic/s$e;->b:Lcom/papa/sim/statistic/s;

    .line 420
    .line 421
    invoke-static {p1}, Lcom/papa/sim/statistic/s;->b(Lcom/papa/sim/statistic/s;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/papa/sim/statistic/StatResult;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/papa/sim/statistic/s$e;->b(Lcom/papa/sim/statistic/StatResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
