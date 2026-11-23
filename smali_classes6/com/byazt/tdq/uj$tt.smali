.class public Lcom/byazt/tdq/uj$tt;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2c4,
        0x99
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/tdq/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tt"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/tdq/uj;

.field public tt:Lcom/byazt/ete/os;


# direct methods
.method public constructor <init>(Lcom/byazt/tdq/uj;Lcom/byazt/ete/os;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tdq/uj$tt;->c:Lcom/byazt/tdq/uj;

    .line 2
    .line 3
    const-string p1, "WriteCacheTask"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/byazt/tdq/uj$tt;->tt:Lcom/byazt/ete/os;

    .line 9
    .line 10
    return-void
.end method

.method private tt()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/tdq/uj$tt;->tt:Lcom/byazt/ete/os;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/cc/x;->c(Lcom/byazt/ete/os;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/byazt/tdq/uj$tt;->c:Lcom/byazt/tdq/uj;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/byazt/tdq/uj;->c(Lcom/byazt/tdq/uj;)Lcom/byazt/it/ve;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "net_ad_already_shown"

    .line 17
    .line 18
    const-string v3, ""

    .line 19
    .line 20
    invoke-interface {v1, v2, v3}, Lcom/byazt/it/c;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    const-string v4, "   reqId: "

    .line 29
    .line 30
    const-string v5, "lqmt"

    .line 31
    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    :try_start_1
    iget-object v3, p0, Lcom/byazt/tdq/uj$tt;->tt:Lcom/byazt/ete/os;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/byazt/ete/os;->c()Lcom/byazt/ete/ic;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v2, "\u8be5\u7f13\u5b58\u5df2show-\u5219\u4e0d\u518dsave\uff1a rit: "

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/byazt/tdq/uj$tt;->tt:Lcom/byazt/ete/os;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/byazt/ete/os;->c()Lcom/byazt/ete/ic;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v5, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_1
    iget-object v2, p0, Lcom/byazt/tdq/uj$tt;->tt:Lcom/byazt/ete/os;

    .line 85
    .line 86
    invoke-virtual {v2}, Lcom/byazt/ete/os;->tt()Lcom/byazt/ete/c;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Lcom/byazt/ete/c;->ve()Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    const-string v3, "materialMeta"

    .line 97
    .line 98
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v3, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-interface {v1, v3, v2}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    const-string v2, "net_ad_save_success"

    .line 114
    .line 115
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    iget-object v3, p0, Lcom/byazt/tdq/uj$tt;->tt:Lcom/byazt/ete/os;

    .line 124
    .line 125
    invoke-virtual {v3}, Lcom/byazt/ete/os;->c()Lcom/byazt/ete/ic;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-interface {v1, v2, v3}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v2, "\u7f13\u5b58\u6210\u529f\uff1a rit: "

    .line 139
    .line 140
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/byazt/tdq/uj$tt;->tt:Lcom/byazt/ete/os;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/byazt/ete/os;->c()Lcom/byazt/ete/ic;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-static {v5, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    .line 168
    .line 169
    :catchall_0
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ete/os;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tdq/uj$tt;->tt:Lcom/byazt/ete/os;

    .line 2
    .line 3
    return-void
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/tdq/uj$tt;->tt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
