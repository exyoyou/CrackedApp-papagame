.class public Lcom/byazt/tw/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x45,
        0x46
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/tw/c;->c(Lcom/byazt/ng/uj;Lcom/byazt/yl/ve;Lcom/byazt/ll/tt;ILjava/lang/String;JLjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic c:Lcom/byazt/yl/ve;

.field public final synthetic i:Lcom/byazt/tw/c;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic sp:J

.field public final synthetic tt:Lcom/byazt/ng/uj;

.field public final synthetic uj:Z

.field public final synthetic ve:I

.field public final synthetic x:Lcom/byazt/ll/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/tw/c;Lcom/byazt/yl/ve;Lcom/byazt/ng/uj;IZLjava/lang/String;Ljava/lang/String;JLcom/byazt/ll/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/tw/c$2;->i:Lcom/byazt/tw/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/tw/c$2;->c:Lcom/byazt/yl/ve;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/tw/c$2;->tt:Lcom/byazt/ng/uj;

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/tw/c$2;->ve:I

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/byazt/tw/c$2;->uj:Z

    .line 10
    .line 11
    iput-object p6, p0, Lcom/byazt/tw/c$2;->n:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/byazt/tw/c$2;->a:Ljava/lang/String;

    .line 14
    .line 15
    iput-wide p8, p0, Lcom/byazt/tw/c$2;->sp:J

    .line 16
    .line 17
    iput-object p10, p0, Lcom/byazt/tw/c$2;->x:Lcom/byazt/ll/tt;

    .line 18
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/tw/c$2;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->isAdnPreload()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/byazt/tw/c$2;->tt:Lcom/byazt/ng/uj;

    .line 17
    .line 18
    const-string v4, "media_click_listen"

    .line 19
    .line 20
    invoke-virtual {v3, v4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;)Lcom/byazt/ng/uj;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v4, "adn_preload"

    .line 25
    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v3, v4, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget v3, p0, Lcom/byazt/tw/c$2;->ve:I

    .line 35
    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    const-string v4, "play_again"

    .line 41
    .line 42
    invoke-virtual {v0, v4, v3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-boolean v3, p0, Lcom/byazt/tw/c$2;->uj:Z

    .line 47
    .line 48
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-string v4, "is_repeat"

    .line 53
    .line 54
    invoke-virtual {v0, v4, v3}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/byazt/tw/c$2;->n:Ljava/lang/String;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v3, p0, Lcom/byazt/tw/c$2;->tt:Lcom/byazt/ng/uj;

    .line 62
    .line 63
    const-string v4, "sub_adn_name"

    .line 64
    .line 65
    invoke-virtual {v3, v4, v0}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/byazt/tw/c$2;->a:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lcom/byazt/tw/c$2;->tt:Lcom/byazt/ng/uj;

    .line 77
    .line 78
    const-string v3, "callstack_message"

    .line 79
    .line 80
    iget-object v4, p0, Lcom/byazt/tw/c$2;->a:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v3, v4}, Lcom/byazt/ng/uj;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/byazt/ng/uj;

    .line 83
    .line 84
    .line 85
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-wide v3, p0, Lcom/byazt/tw/c$2;->sp:J

    .line 91
    .line 92
    const-wide/16 v5, 0x0

    .line 93
    .line 94
    cmp-long v7, v3, v5

    .line 95
    .line 96
    if-ltz v7, :cond_3

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    const/4 v1, 0x0

    .line 100
    :goto_1
    iget-object v2, p0, Lcom/byazt/tw/c$2;->c:Lcom/byazt/yl/ve;

    .line 101
    .line 102
    if-eqz v2, :cond_4

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/byazt/yl/ve;->isCustomAd()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-eqz v2, :cond_4

    .line 109
    .line 110
    invoke-static {}, Lcom/byazt/vx/nu;->ve()D

    .line 111
    .line 112
    .line 113
    move-result-wide v2

    .line 114
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    const-string v3, "custom_adn_sample_ratio"

    .line 119
    .line 120
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    const-string v2, "custom_adn_sample_ratio_result"

    .line 124
    .line 125
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    if-eqz v1, :cond_4

    .line 133
    .line 134
    iget-wide v1, p0, Lcom/byazt/tw/c$2;->sp:J

    .line 135
    .line 136
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const-string v2, "custom_adn_rec_time"

    .line 141
    .line 142
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    :cond_4
    iget-object v1, p0, Lcom/byazt/tw/c$2;->c:Lcom/byazt/yl/ve;

    .line 146
    .line 147
    if-eqz v1, :cond_5

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdLifecycleId()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_5

    .line 158
    .line 159
    iget-object v1, p0, Lcom/byazt/tw/c$2;->c:Lcom/byazt/yl/ve;

    .line 160
    .line 161
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAdLifecycleId()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v0, v1}, Lcom/byazt/gc/c;->c(Ljava/util/Map;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :cond_5
    iget-object v1, p0, Lcom/byazt/tw/c$2;->tt:Lcom/byazt/ng/uj;

    .line 169
    .line 170
    iget-object v2, p0, Lcom/byazt/tw/c$2;->x:Lcom/byazt/ll/tt;

    .line 171
    .line 172
    const/4 v3, 0x0

    .line 173
    iget-object v4, p0, Lcom/byazt/tw/c$2;->c:Lcom/byazt/yl/ve;

    .line 174
    .line 175
    invoke-static {v1, v2, v3, v4, v0}, Lcom/byazt/ng/a;->c(Lcom/byazt/ng/uj;Lcom/byazt/ll/tt;Lcom/byazt/nbs/da;Lcom/byazt/yl/ve;Ljava/util/Map;)V

    .line 176
    .line 177
    .line 178
    invoke-static {}, Lcom/byazt/bp/tt;->getContext()Landroid/content/Context;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    iget-object v2, p0, Lcom/byazt/tw/c$2;->tt:Lcom/byazt/ng/uj;

    .line 183
    .line 184
    invoke-static {v1, v2, v0}, Lcom/byazt/ng/ve;->c(Landroid/content/Context;Lcom/byazt/ng/uj;Ljava/util/Map;)V

    .line 185
    .line 186
    .line 187
    return-void
.end method
