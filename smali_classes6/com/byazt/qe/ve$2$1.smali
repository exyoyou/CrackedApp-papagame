.class public Lcom/byazt/qe/ve$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2b9,
        0x3ce
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/qe/ve$2;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/qe/ve$2;


# direct methods
.method public constructor <init>(Lcom/byazt/qe/ve$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/qe/ve$2$1;->c:Lcom/byazt/qe/ve$2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/byazt/qe/ve$2$1;->c:Lcom/byazt/qe/ve$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/byazt/qe/ve$2;->n:Lcom/byazt/qe/ve;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/qe/ve;->pf(Lcom/byazt/qe/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_2

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/qe/ve$2$1;->c:Lcom/byazt/qe/ve$2;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/byazt/qe/ve$2;->n:Lcom/byazt/qe/ve;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/byazt/qe/ve;->pf(Lcom/byazt/qe/ve;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/byazt/px/c;->c()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-static {}, Lcom/byazt/sx/ve;->c()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    sub-long v10, v1, v3

    .line 40
    .line 41
    iget-object v1, p0, Lcom/byazt/qe/ve$2$1;->c:Lcom/byazt/qe/ve$2;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/byazt/qe/ve$2;->tt:Lorg/json/JSONObject;

    .line 44
    .line 45
    const-string v2, "s-event_end"

    .line 46
    .line 47
    invoke-static {v1, v2}, Lcom/byazt/tjo/a;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Lcom/byazt/tjo/a;->c()V

    .line 51
    .line 52
    .line 53
    new-instance v9, Ljava/util/HashMap;

    .line 54
    .line 55
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/byazt/qe/ve$2$1;->c:Lcom/byazt/qe/ve$2;

    .line 59
    .line 60
    iget v1, v1, Lcom/byazt/qe/ve$2;->ve:I

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "config_use_type"

    .line 67
    .line 68
    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/byazt/qe/ve$2$1;->c:Lcom/byazt/qe/ve$2;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/byazt/qe/ve$2;->n:Lcom/byazt/qe/ve;

    .line 74
    .line 75
    invoke-static {v1}, Lcom/byazt/qe/ve;->bx(Lcom/byazt/qe/ve;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_0

    .line 80
    .line 81
    iget-object v1, p0, Lcom/byazt/qe/ve$2$1;->c:Lcom/byazt/qe/ve$2;

    .line 82
    .line 83
    iget-object v1, v1, Lcom/byazt/qe/ve$2;->n:Lcom/byazt/qe/ve;

    .line 84
    .line 85
    invoke-static {v1}, Lcom/byazt/qe/ve;->bx(Lcom/byazt/qe/ve;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const-string v2, "is_import_cfg"

    .line 94
    .line 95
    invoke-interface {v9, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    :cond_0
    invoke-static {}, Lcom/byazt/sx/uj;->c()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    const-string v2, "TMe"

    .line 103
    .line 104
    if-nez v1, :cond_1

    .line 105
    .line 106
    const-string v1, "-----==---- \u5ef6\u65f6\u4e0a\u62a5sdk_init_end"

    .line 107
    .line 108
    invoke-static {v2, v1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/byazt/qe/ve$2$1;->c:Lcom/byazt/qe/ve$2;

    .line 112
    .line 113
    iget-boolean v5, v1, Lcom/byazt/qe/ve$2;->uj:Z

    .line 114
    .line 115
    iget-object v6, v1, Lcom/byazt/qe/ve$2;->tt:Lorg/json/JSONObject;

    .line 116
    .line 117
    move-wide v2, v10

    .line 118
    move v4, v0

    .line 119
    move-object v7, v9

    .line 120
    invoke-static/range {v2 .. v7}, Lcom/byazt/sx/uj;->c(JIILorg/json/JSONObject;Ljava/util/Map;)V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    const-string v1, "-----==---- \u6b63\u5e38\u4e0a\u62a5sdk_init_end"

    .line 125
    .line 126
    invoke-static {v2, v1}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, p0, Lcom/byazt/qe/ve$2$1;->c:Lcom/byazt/qe/ve$2;

    .line 130
    .line 131
    iget-boolean v5, v1, Lcom/byazt/qe/ve$2;->uj:Z

    .line 132
    .line 133
    const-wide/16 v6, -0x1

    .line 134
    .line 135
    iget-object v8, v1, Lcom/byazt/qe/ve$2;->tt:Lorg/json/JSONObject;

    .line 136
    .line 137
    move-wide v2, v10

    .line 138
    move v4, v0

    .line 139
    invoke-static/range {v2 .. v9}, Lcom/byazt/sx/uj;->c(JIIJLorg/json/JSONObject;Ljava/util/Map;)V

    .line 140
    .line 141
    .line 142
    :goto_0
    invoke-static {}, Lcom/byazt/bg/c;->c()V

    .line 143
    .line 144
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    const-string v2, "sdk init end, duration: "

    .line 148
    .line 149
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v2, ", initAdnCount: "

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v0, ", isFromLocalConfig: "

    .line 164
    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    iget-object v0, p0, Lcom/byazt/qe/ve$2$1;->c:Lcom/byazt/qe/ve$2;

    .line 169
    .line 170
    iget-boolean v0, v0, Lcom/byazt/qe/ve$2;->uj:Z

    .line 171
    .line 172
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    const-string v1, "TTMediationSDK"

    .line 180
    .line 181
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_2
    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v0}, Lcom/byazt/qe/tt;->c(Lcom/byazt/qe/c;)Lcom/byazt/qe/tt;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    new-instance v1, Lcom/byazt/qe/ve$2$1$1;

    .line 193
    .line 194
    invoke-direct {v1, p0}, Lcom/byazt/qe/ve$2$1$1;-><init>(Lcom/byazt/qe/ve$2$1;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0, v1}, Lcom/byazt/qe/tt;->c(Lcom/byazt/yf/n;)V

    .line 198
    .line 199
    .line 200
    return-void
.end method
