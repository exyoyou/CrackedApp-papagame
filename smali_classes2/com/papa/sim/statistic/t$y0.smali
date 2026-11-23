.class Lcom/papa/sim/statistic/t$y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa/sim/statistic/t;->i0(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/papa/sim/statistic/Data;

.field final synthetic c:Lcom/papa/sim/statistic/Ext;

.field final synthetic d:Lcom/papa/sim/statistic/Event;

.field final synthetic e:Lcom/papa/sim/statistic/t;


# direct methods
.method constructor <init>(Lcom/papa/sim/statistic/t;Lcom/papa/sim/statistic/Data;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Event;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa/sim/statistic/t$y0;->e:Lcom/papa/sim/statistic/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa/sim/statistic/t$y0;->b:Lcom/papa/sim/statistic/Data;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/papa/sim/statistic/t$y0;->c:Lcom/papa/sim/statistic/Ext;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/papa/sim/statistic/t$y0;->d:Lcom/papa/sim/statistic/Event;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/papa/sim/statistic/StatRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/StatRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/papa/sim/statistic/t$y0;->b:Lcom/papa/sim/statistic/Data;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getData()Lcom/papa/sim/statistic/Data;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/papa/sim/statistic/t$y0;->b:Lcom/papa/sim/statistic/Data;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Data;->getGameId()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Data;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/papa/sim/statistic/t$y0;->c:Lcom/papa/sim/statistic/Ext;

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/papa/sim/statistic/t$y0;->c:Lcom/papa/sim/statistic/Ext;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getFromTabId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFromTabId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/papa/sim/statistic/t$y0;->c:Lcom/papa/sim/statistic/Ext;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getArticleId()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setArticleId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget-object v2, p0, Lcom/papa/sim/statistic/t$y0;->c:Lcom/papa/sim/statistic/Ext;

    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getFrom()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object v2, p0, Lcom/papa/sim/statistic/t$y0;->c:Lcom/papa/sim/statistic/Ext;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getLiveTime()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    invoke-virtual {v1, v2, v3}, Lcom/papa/sim/statistic/Ext;->setLiveTime(J)Lcom/papa/sim/statistic/Ext;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/papa/sim/statistic/t$y0;->c:Lcom/papa/sim/statistic/Ext;

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getEndId()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setEndId(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/papa/sim/statistic/t$y0;->c:Lcom/papa/sim/statistic/Ext;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/papa/sim/statistic/Ext;->getPosition()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 103
    .line 104
    .line 105
    :cond_1
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getExt()Lcom/papa/sim/statistic/Ext;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0}, Lcom/papa/sim/statistic/StatRequest;->getUid()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setUid(I)Lcom/papa/sim/statistic/Ext;

    .line 114
    .line 115
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v1

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/StatRequest;->setTime(J)V

    .line 121
    .line 122
    .line 123
    const/4 v1, 0x1

    .line 124
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setRequest(Z)V

    .line 125
    .line 126
    .line 127
    iget-object v1, p0, Lcom/papa/sim/statistic/t$y0;->d:Lcom/papa/sim/statistic/Event;

    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/StatRequest;->setEvent(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Lcom/papa/sim/statistic/t$y0;->e:Lcom/papa/sim/statistic/t;

    .line 137
    .line 138
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->a(Lcom/papa/sim/statistic/t;)Lcom/papa/sim/statistic/s;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1, v0}, Lcom/papa/sim/statistic/s;->j0(Lcom/papa/sim/statistic/StatRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 148
    .line 149
    .line 150
    :goto_0
    return-void
.end method
