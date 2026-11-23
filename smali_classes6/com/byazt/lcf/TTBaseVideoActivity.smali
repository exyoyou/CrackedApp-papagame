.class public abstract Lcom/byazt/lcf/TTBaseVideoActivity;
.super Lcom/byazt/cty/BaseThemeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;
.implements Lcom/byazt/fh/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26,
        0x27
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public aw:Lcom/byazt/biq/ve;

.field public final b:Lcom/byazt/xjc/c;

.field public bm:Ljava/lang/String;

.field public bx:Lcom/byazt/fcd/c;

.field public final c:Ljava/lang/String;

.field public cu:Lcom/byazt/kcl/a;

.field public d:Lcom/byazt/go/AbstractEndCardFrameLayout;

.field public final da:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public dz:I

.field public eo:Lcom/byazt/kcl/n;

.field public f:Lcom/byazt/qq/tt$c;

.field public g:Z

.field public gr:J

.field public final gt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public gu:Z

.field public h:Lcom/byazt/dqg/n;

.field public hd:Ljava/lang/String;

.field public hj:J

.field public hq:Lcom/byazt/bzd/c;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ic:I

.field public ir:J

.field public iu:F

.field public j:I

.field public final kk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public kp:Lcom/byazt/sy/c;

.field public l:I

.field public lo:Lcom/byazt/hkv/n;

.field public lr:Lcom/byazt/dyf/tt;

.field public lt:Lcom/byazt/wg/tt;

.field public final m:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ma:I

.field public md:Lcom/byazt/dqg/tt;

.field public final my:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final n:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public nb:Lcom/byazt/kcl/uj;

.field public nt:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final nu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final ny:Lcom/byazt/ua/c$c;

.field public or:Lcom/byazt/kcl/c;

.field public os:J

.field public oz:J

.field public p:Lcom/byazt/dqg/RewardFullBaseLayout;

.field public pf:Lcom/byazt/kcl/ve;

.field public pu:Lcom/byazt/sy/n;

.field public final q:Lcom/byazt/cjm/c;

.field public qy:Z

.field public r:Lcom/byazt/hkv/tt;

.field public final rh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public rl:Z

.field public s:Lcom/byazt/kcl/c$tt;

.field public final sl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final sp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public sv:Lcom/byazt/lcf/TTBaseVideoActivity;

.field public final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public tk:Lcom/byazt/zd/c$c;

.field public to:Lcom/byazt/rob/c;

.field public final tt:Lcom/byazt/nr/d;

.field public tx:Z

.field public final u:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final uj:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public v:I

.field public final ve:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final x:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public xd:Lcom/byazt/biq/uj;

.field public y:Lcom/byazt/kcl/c$c;

.field public yf:Ljava/lang/Double;

.field public final yp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public yv:I

.field public final z:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public zb:Lcom/byazt/kcl/tt;

.field public zm:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/byazt/cty/BaseThemeActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "rewarded_video"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "fullscreen_interstitial_ad"

    .line 14
    .line 15
    :goto_0
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->c:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, Lcom/byazt/nr/d;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ve:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->uj:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    .line 43
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 49
    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    .line 73
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->kk:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    .line 80
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 81
    .line 82
    .line 83
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->da:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 91
    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    .line 94
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    .line 99
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    .line 101
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 102
    .line 103
    .line 104
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 109
    .line 110
    .line 111
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 112
    .line 113
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    .line 115
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->yp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 119
    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 121
    .line 122
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 123
    .line 124
    .line 125
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 130
    .line 131
    .line 132
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    .line 134
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 135
    .line 136
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 137
    .line 138
    .line 139
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 140
    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 142
    .line 143
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 144
    .line 145
    .line 146
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 147
    .line 148
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 149
    .line 150
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 151
    .line 152
    .line 153
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->my:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 154
    .line 155
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 156
    .line 157
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 158
    .line 159
    .line 160
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->gt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 161
    .line 162
    const/4 v0, -0x1

    .line 163
    iput v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->yv:I

    .line 164
    .line 165
    const-wide/16 v2, 0x0

    .line 166
    .line 167
    iput-wide v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->os:J

    .line 168
    .line 169
    iput-wide v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->oz:J

    .line 170
    .line 171
    const/4 v0, 0x1

    .line 172
    iput v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->j:I

    .line 173
    .line 174
    const/4 v4, 0x0

    .line 175
    iput-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->yf:Ljava/lang/Double;

    .line 176
    .line 177
    iput-wide v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ir:J

    .line 178
    .line 179
    iput-boolean v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->g:Z

    .line 180
    .line 181
    new-instance v1, Lcom/byazt/lcf/TTBaseVideoActivity$1;

    .line 182
    .line 183
    invoke-direct {v1, p0}, Lcom/byazt/lcf/TTBaseVideoActivity$1;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 184
    .line 185
    .line 186
    iput-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tk:Lcom/byazt/zd/c$c;

    .line 187
    .line 188
    new-instance v1, Lcom/byazt/lcf/TTBaseVideoActivity$12;

    .line 189
    .line 190
    invoke-direct {v1, p0}, Lcom/byazt/lcf/TTBaseVideoActivity$12;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 191
    .line 192
    .line 193
    iput-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->kp:Lcom/byazt/sy/c;

    .line 194
    .line 195
    new-instance v1, Lcom/byazt/lcf/TTBaseVideoActivity$16;

    .line 196
    .line 197
    invoke-direct {v1, p0}, Lcom/byazt/lcf/TTBaseVideoActivity$16;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 198
    .line 199
    .line 200
    iput-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ny:Lcom/byazt/ua/c$c;

    .line 201
    .line 202
    new-instance v1, Lcom/byazt/xjc/tt;

    .line 203
    .line 204
    new-instance v2, Lcom/byazt/lcf/TTBaseVideoActivity$17;

    .line 205
    .line 206
    invoke-direct {v2, p0}, Lcom/byazt/lcf/TTBaseVideoActivity$17;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 207
    .line 208
    .line 209
    invoke-direct {v1, v2}, Lcom/byazt/xjc/tt;-><init>(Lcom/byazt/xjc/c$c;)V

    .line 210
    .line 211
    .line 212
    iput-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    .line 213
    .line 214
    new-instance v1, Lcom/byazt/cjm/tt;

    .line 215
    .line 216
    new-instance v2, Lcom/byazt/lcf/TTBaseVideoActivity$18;

    .line 217
    .line 218
    invoke-direct {v2, p0}, Lcom/byazt/lcf/TTBaseVideoActivity$18;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 219
    .line 220
    .line 221
    invoke-direct {v1, v2}, Lcom/byazt/cjm/tt;-><init>(Lcom/byazt/cjm/c$c;)V

    .line 222
    .line 223
    .line 224
    iput-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    .line 225
    .line 226
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 227
    .line 228
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 229
    .line 230
    .line 231
    iput-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nt:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 232
    .line 233
    return-void
.end method

.method public static synthetic a(Lcom/byazt/lcf/TTBaseVideoActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tx:Z

    return p0
.end method

.method private c(Lcom/byazt/qq/da;)V
    .locals 3

    .line 17
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->pf()I

    move-result v0

    .line 18
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 19
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "remainTime"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    if-lez v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {p0, v0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/ete/ic;Lcom/byazt/qq/da;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/qq/da;->tt()V

    return-void

    .line 22
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/lcf/TTBaseVideoActivity;)Z
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->hq()Z

    move-result p0

    return p0
.end method

.method public static synthetic da(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private dz()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/byazt/fcd/da;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    instance-of v0, v0, Lcom/byazt/fcd/ve;

    .line 10
    .line 11
    return v0
.end method

.method private f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->cu()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->qy:Z

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->kp()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/byazt/fcd/tt;->kk()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->nb()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 37
    .line 38
    instance-of v1, v0, Lcom/byazt/fcd/ve;

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    instance-of v0, v0, Lcom/byazt/fcd/da;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    .line 48
    .line 49
    const/16 v1, 0x12c

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    .line 55
    .line 56
    const-wide/16 v2, 0x1388

    .line 57
    .line 58
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_0
    return-void
.end method

.method private g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->f:Lcom/byazt/qq/tt$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/qq/tt$c;->uj()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public static synthetic gr(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic gt(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic gu(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private hj()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->zm()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->f()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1, p0}, Lcom/byazt/kcl/a;->c(ZLcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private hq()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->id()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xb4

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/byazt/dqg/n;->i()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x7

    .line 35
    if-eq v0, v1, :cond_0

    .line 36
    .line 37
    return v2

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    return v0

    .line 40
    :cond_1
    return v2
.end method

.method public static synthetic i(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private ir()V
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v1, Lcom/byazt/lcf/TTBaseVideoActivity$11;

    .line 15
    .line 16
    invoke-direct {v1, p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity$11;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/byazt/lcf/TTBaseVideoActivity$13;

    .line 23
    .line 24
    invoke-direct {v1, p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity$13;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v2, 0x12c

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private iu()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->p:Lcom/byazt/dqg/RewardFullBaseLayout;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->m()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 22
    .line 23
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "auth_reward_gold"

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-lez v0, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->p:Lcom/byazt/dqg/RewardFullBaseLayout;

    .line 35
    .line 36
    new-instance v2, Lcom/byazt/dqg/RewardAuthToastLayout;

    .line 37
    .line 38
    iget-object v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 39
    .line 40
    invoke-direct {v2, v3, v0}, Lcom/byazt/dqg/RewardAuthToastLayout;-><init>(Landroid/content/Context;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const/4 v1, 0x1

    .line 49
    new-array v1, v1, [Ljava/lang/Object;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    aput-object v0, v1, v2

    .line 53
    .line 54
    const-string v0, "TTBaseVideoActivity"

    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ic:I

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->fr()F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->iu:F

    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->by()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->j:I

    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-static {v0, v1}, Lcom/byazt/ete/kp;->c(Lcom/byazt/ete/ic;Z)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/byazt/ete/kp;->tt(Lcom/byazt/ete/ic;Z)V

    .line 47
    .line 48
    .line 49
    sput-boolean v1, Lcom/byazt/fh/a;->ve:Z

    .line 50
    .line 51
    sput v1, Lcom/byazt/fh/a;->tt:I

    .line 52
    .line 53
    sput v1, Lcom/byazt/fh/a;->c:I

    .line 54
    .line 55
    sput-boolean v1, Lcom/byazt/fh/a;->uj:Z

    .line 56
    .line 57
    return-void
.end method

.method public static synthetic m(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private ma()V
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v2, "reward_full_scene_type"

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/byazt/fcd/c;->eo()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    nop

    .line 21
    :cond_0
    :goto_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 26
    .line 27
    const-string v3, "stats_reward_full_destroy"

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3, v0}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    sput-boolean v0, Lcom/byazt/fh/a;->ve:Z

    .line 34
    .line 35
    sput v0, Lcom/byazt/fh/a;->tt:I

    .line 36
    .line 37
    sput v0, Lcom/byazt/fh/a;->c:I

    .line 38
    .line 39
    sput-boolean v0, Lcom/byazt/fh/a;->uj:Z

    .line 40
    .line 41
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->gr()V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->or:Lcom/byazt/kcl/c;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/byazt/kcl/c;->a()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->sp()V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pu:Lcom/byazt/sy/n;

    .line 63
    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/byazt/sy/n;->tt()V

    .line 67
    .line 68
    .line 69
    :cond_1
    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(Z)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->p()V

    .line 74
    .line 75
    .line 76
    const-string v0, "recycleRes"

    .line 77
    .line 78
    invoke-virtual {p0, v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 82
    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->rl()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-static {v0}, Lcom/byazt/nl/c;->c(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->rl()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/byazt/omf/rl;->c(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->eo()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-static {v0}, Lcom/byazt/aas/cu;->tt(I)V

    .line 117
    .line 118
    .line 119
    :cond_2
    return-void
.end method

.method public static synthetic my(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic nu(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic p(Lcom/byazt/lcf/TTBaseVideoActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->hj()V

    return-void
.end method

.method public static synthetic qy(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private r()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lcom/byazt/apd/tt;->tt(Lcom/byazt/ete/ic;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->m()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    return v1

    .line 32
    :cond_1
    const/4 v2, 0x1

    .line 33
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 34
    .line 35
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "saas_play_time_type"

    .line 39
    .line 40
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    if-ne v0, v2, :cond_2

    .line 45
    .line 46
    return v2

    .line 47
    :cond_2
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    new-array v2, v2, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object v0, v2, v1

    .line 52
    .line 53
    const-string v0, "TTBaseVideoActivity"

    .line 54
    .line 55
    invoke-static {v0, v2}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    return v1
.end method

.method public static synthetic rh(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic rl(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private s()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/dqg/RewardFullBaseLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/byazt/dqg/RewardFullBaseLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->p:Lcom/byazt/dqg/RewardFullBaseLayout;

    .line 9
    .line 10
    new-instance v0, Lcom/byazt/kcl/n;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/byazt/kcl/n;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    .line 18
    .line 19
    new-instance v0, Lcom/byazt/kcl/tt;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/byazt/kcl/tt;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 27
    .line 28
    new-instance v0, Lcom/byazt/kcl/c;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/byazt/kcl/c;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->or:Lcom/byazt/kcl/c;

    .line 36
    .line 37
    new-instance v0, Lcom/byazt/kcl/a;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lcom/byazt/kcl/a;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 45
    .line 46
    new-instance v0, Lcom/byazt/kcl/uj;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/byazt/kcl/uj;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nb:Lcom/byazt/kcl/uj;

    .line 54
    .line 55
    new-instance v0, Lcom/byazt/kcl/ve;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lcom/byazt/kcl/ve;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pf:Lcom/byazt/kcl/ve;

    .line 63
    .line 64
    return-void
.end method

.method public static synthetic sl(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private tt(Lcom/byazt/qq/da;)V
    .locals 8

    const/4 v0, 0x1

    new-array v7, v0, [Z

    const/4 v0, 0x0

    aput-boolean v0, v7, v0

    .line 3
    new-instance v0, Lcom/byazt/lcf/TTBaseVideoActivity$5;

    invoke-direct {v0, p0, v7, p1}, Lcom/byazt/lcf/TTBaseVideoActivity$5;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;[ZLcom/byazt/qq/da;)V

    invoke-static {v0}, Lcom/byazt/ja/tt;->c(Lcom/byazt/ja/tt$c;)V

    const-string p1, "onClickBrowseClose"

    .line 4
    invoke-virtual {p0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt(Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/byazt/lcf/TTBaseVideoActivity$6;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/byazt/lcf/TTBaseVideoActivity$6;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;JJ[Z)V

    .line 6
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method public static synthetic u(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/kcl/c$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->y:Lcom/byazt/kcl/c$c;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/ete/ic;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method private xd()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/my;->uj(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->pf()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->t()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Lcom/byazt/fcd/tt;->x(Z)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(I)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v6, 0x1

    .line 44
    const/4 v7, 0x1

    .line 45
    invoke-virtual/range {v2 .. v7}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->lr()V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/byazt/ete/kp;->sp(Lcom/byazt/ete/ic;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->gt()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 67
    .line 68
    invoke-static {v2}, Lcom/byazt/ete/kp;->da(Lcom/byazt/ete/ic;)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    int-to-long v2, v2

    .line 73
    cmp-long v4, v0, v2

    .line 74
    .line 75
    if-ltz v4, :cond_2

    .line 76
    .line 77
    const/4 v0, 0x2

    .line 78
    invoke-virtual {p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(I)V

    .line 79
    .line 80
    .line 81
    :cond_2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/byazt/fcd/c;->cu()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method private y()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/fcd/uj;->c(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;)Lcom/byazt/fcd/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const-string v0, "TTBaseVideoActivity"

    .line 14
    .line 15
    const-string v1, "initAdType failed , finish activity"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->finish()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-static {v0, v1, v2}, Lcom/byazt/ete/or;->tt(ZLcom/byazt/ete/ic;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->ab()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-ne v0, v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v2, 0x0

    .line 50
    :goto_0
    iput-boolean v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->rl:Z

    .line 51
    .line 52
    :cond_2
    iget-object v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 53
    .line 54
    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    .line 55
    .line 56
    iget-object v5, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 57
    .line 58
    iget-object v6, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 59
    .line 60
    iget-object v7, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nb:Lcom/byazt/kcl/uj;

    .line 61
    .line 62
    iget-object v8, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->or:Lcom/byazt/kcl/c;

    .line 63
    .line 64
    invoke-virtual/range {v3 .. v8}, Lcom/byazt/fcd/c;->c(Lcom/byazt/kcl/n;Lcom/byazt/kcl/a;Lcom/byazt/kcl/tt;Lcom/byazt/kcl/uj;Lcom/byazt/kcl/c;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lcom/byazt/biq/ve;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 76
    .line 77
    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 78
    .line 79
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/biq/ve;-><init>(ZLcom/byazt/ete/ic;Lcom/byazt/kcl/a;Lcom/byazt/fcd/c;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->aw:Lcom/byazt/biq/ve;

    .line 83
    .line 84
    iget v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->v:I

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/byazt/biq/ve;->tt(I)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->c:Ljava/lang/String;

    .line 92
    .line 93
    iget-boolean v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->rl:Z

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->aw:Lcom/byazt/biq/ve;

    .line 100
    .line 101
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/byazt/fcd/c;->c(Ljava/lang/String;ZZLcom/byazt/biq/ve;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/byazt/fcd/c;->x()V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method private yf()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->ul()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x1

    .line 21
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/high16 v3, 0x1000000

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const/16 v3, 0x80

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/byazt/omf/gt;->c(Landroid/content/Context;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/byazt/fcd/c;->bm()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const/16 v3, 0x400

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 62
    .line 63
    .line 64
    if-ne v0, v1, :cond_2

    .line 65
    .line 66
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 67
    .line 68
    const/16 v3, 0x1e

    .line 69
    .line 70
    if-lt v2, v3, :cond_1

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2, v1}, Le1/a;->a(Landroid/view/Window;Z)V

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :catchall_0
    nop

    .line 92
    :cond_2
    :goto_0
    if-ne v0, v1, :cond_3

    .line 93
    .line 94
    return-void

    .line 95
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    goto :goto_1

    .line 104
    :catchall_1
    const/4 v1, 0x0

    .line 105
    :goto_1
    if-nez v1, :cond_4

    .line 106
    .line 107
    return-void

    .line 108
    :cond_4
    new-instance v2, Lcom/byazt/lcf/TTBaseVideoActivity$9;

    .line 109
    .line 110
    invoke-direct {v2, p0, v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity$9;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;ILandroid/view/View;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public static synthetic yp(Lcom/byazt/lcf/TTBaseVideoActivity;)Ljava/lang/Double;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->yf:Ljava/lang/Double;

    return-object p0
.end method

.method public static synthetic yv(Lcom/byazt/lcf/TTBaseVideoActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->j:I

    return p0
.end method

.method public static synthetic z(Lcom/byazt/lcf/TTBaseVideoActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->kk:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic zm(Lcom/byazt/lcf/TTBaseVideoActivity;)Lcom/byazt/qq/tt$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->f:Lcom/byazt/qq/tt$c;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/tt;->kk()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/rl;->sp(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt(ZZ)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->a()J

    move-result-wide v2

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt(JZ)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0, v1, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(ZZ)V

    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 6

    .line 7
    invoke-virtual {p0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->n(I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_7

    .line 8
    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nb:Lcom/byazt/kcl/uj;

    invoke-virtual {v4}, Lcom/byazt/kcl/uj;->uj()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v4}, Lcom/byazt/kcl/a;->t()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {p1}, Lcom/byazt/kcl/a;->da()V

    return-void

    .line 11
    :cond_1
    iget-object v4, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v4}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 12
    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_4

    if-ne v0, v2, :cond_3

    .line 13
    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->uj:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    iget-object v4, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {v4}, Lcom/byazt/ete/ic;->i()I

    move-result v4

    if-ne v4, v1, :cond_2

    iget-object v4, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 15
    invoke-static {v4}, Lcom/byazt/ete/kp;->rh(Lcom/byazt/ete/ic;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "\u5956\u52b1\u5c31\u5feb\u6765\u4e86\n\u53bb\u8be6\u60c5\u9875\u770b\u770b\u4e5f\u7d2f\u8ba1\u65f6\u957f\u54e6\uff5e"

    goto :goto_0

    :cond_2
    const-string v4, "\u5956\u52b1\u8fd8\u5728\u8def\u4e0a\u72c2\u5954\n\u518d\u7b49\u4e00\u4e0b\u4e0b\u54e6\uff5e"

    .line 16
    :goto_0
    iget-object v5, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    invoke-virtual {v5, v4}, Lcom/byazt/kcl/n;->tt(Ljava/lang/String;)V

    .line 17
    :cond_3
    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v4}, Lcom/byazt/kcl/a;->pf()V

    .line 18
    :cond_4
    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_5

    return-void

    :cond_5
    if-ne v0, v2, :cond_7

    .line 19
    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    return-void

    :cond_7
    if-eq v0, v2, :cond_d

    if-eq v0, v3, :cond_b

    if-eq v0, v1, :cond_a

    const/4 v2, 0x4

    if-eq v0, v2, :cond_8

    goto :goto_1

    :cond_8
    if-eq p1, v1, :cond_9

    .line 20
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->nu()V

    :cond_9
    :goto_1
    return-void

    .line 21
    :cond_a
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {p1}, Lcom/byazt/kcl/a;->pf()V

    return-void

    .line 22
    :cond_b
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 23
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {p1}, Lcom/byazt/kcl/tt;->qy()V

    .line 24
    :cond_c
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->n()V

    return-void

    .line 25
    :cond_d
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt()V

    return-void
.end method

.method public aw()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->z(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kcl/n;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bm()V
    .locals 0

    return-void
.end method

.method public bx()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    .line 2
    .line 3
    const/16 v1, 0x258

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/byazt/ete/ic;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 118
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bm:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "rit_scene"

    .line 119
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_0
    invoke-static {p1}, Lcom/byazt/ete/or;->c(Lcom/byazt/ete/ic;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "insert_ad_control"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {p1}, Lcom/byazt/ete/or;->uj(Lcom/byazt/ete/ic;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "carousel_pos"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {p1}, Lcom/byazt/ete/or;->tt(Lcom/byazt/ete/ic;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "refresh_ad_control"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    invoke-interface {v1}, Lcom/byazt/xjc/c;->tt()I

    move-result v1

    const-string v2, "carousel_type"

    if-eqz v1, :cond_1

    .line 124
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    invoke-interface {p1}, Lcom/byazt/xjc/c;->tt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {p1}, Lcom/byazt/ete/lt;->x(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pf:Lcom/byazt/kcl/ve;

    if-eqz p1, :cond_3

    .line 128
    invoke-virtual {p1, v0}, Lcom/byazt/kcl/ve;->c(Ljava/util/Map;)V

    :cond_3
    return-object v0
.end method

.method public c(FFFFI)V
    .locals 9

    .line 103
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/byazt/dqg/n;->c()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    invoke-virtual {v0}, Lcom/byazt/dqg/n;->c()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 105
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    invoke-virtual {v1}, Lcom/byazt/dqg/n;->c()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 106
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v2}, Lcom/byazt/kcl/a;->cu()Lcom/byazt/dh/ve;

    move-result-object v2

    instance-of v2, v2, Lcom/byazt/zd/c;

    if-eqz v2, :cond_1

    .line 107
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v2}, Lcom/byazt/kcl/a;->cu()Lcom/byazt/dh/ve;

    move-result-object v2

    check-cast v2, Lcom/byazt/zd/c;

    .line 108
    invoke-virtual {v2}, Lcom/byazt/zd/c;->hd()Z

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    int-to-float p1, v1

    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, p2

    mul-float p1, p1, p3

    .line 109
    iget-object p2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    invoke-virtual {p2}, Lcom/byazt/dqg/n;->c()Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    neg-float p1, p1

    .line 110
    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    int-to-long p2, p5

    .line 111
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_2
    int-to-float v0, v0

    mul-float v7, v0, p3

    int-to-float p3, v1

    mul-float v8, p3, p4

    .line 113
    new-instance p3, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v2, p3

    move v4, p1

    move v6, p2

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const/4 p1, 0x1

    .line 114
    invoke-virtual {p3, p1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    int-to-long p1, p5

    .line 115
    invoke-virtual {p3, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 116
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    invoke-virtual {p1}, Lcom/byazt/dqg/n;->c()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public c(I)V
    .locals 6

    .line 79
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->my:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->hj:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x32

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->hj:J

    const-string v0, "onAdVideoBarClick"

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0, v0, v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    invoke-virtual {v0}, Lcom/byazt/dqg/n;->u()Lcom/byazt/rpt/FullRewardExpressView;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ouz/x;->c(Lcom/byazt/ouz/NativeExpressView;)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    :cond_2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    invoke-interface {v0, v1}, Lcom/byazt/xjc/c;->c(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(I)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->da(I)V

    return-void
.end method

.method public c(II)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/byazt/xjc/c;->c(III)V

    return-void
.end method

.method public c(III)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/xjc/c;->c(III)V

    return-void
.end method

.method public c(ILcom/byazt/xjc/uj;)V
    .locals 3

    .line 58
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/rl;->ve(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 59
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 60
    iget-boolean v2, p2, Lcom/byazt/xjc/uj;->c:Z

    if-nez v2, :cond_3

    .line 61
    :cond_2
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    if-eqz p2, :cond_4

    .line 62
    iget-boolean v2, p2, Lcom/byazt/xjc/uj;->uj:Z

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    invoke-interface {v2, p1, v0}, Lcom/byazt/xjc/c;->c(IZ)I

    move-result p1

    if-nez p1, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    if-eqz p2, :cond_6

    .line 64
    iget-boolean v0, p2, Lcom/byazt/xjc/uj;->ve:Z

    if-eqz v0, :cond_6

    .line 65
    invoke-static {}, Lcom/byazt/ete/or;->da()I

    move-result v1

    .line 66
    :cond_6
    new-instance v0, Lcom/byazt/xjc/ve$c;

    invoke-direct {v0}, Lcom/byazt/xjc/ve$c;-><init>()V

    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->hd:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v2}, Lcom/byazt/xjc/ve$c;->c(Ljava/lang/String;)Lcom/byazt/xjc/ve$c;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 68
    invoke-virtual {v2}, Lcom/byazt/fcd/c;->pf()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/byazt/xjc/ve$c;->c(I)Lcom/byazt/xjc/ve$c;

    move-result-object v0

    .line 69
    invoke-virtual {v0, v1}, Lcom/byazt/xjc/ve$c;->tt(I)Lcom/byazt/xjc/ve$c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->da:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/xjc/ve$c;->c(Z)Lcom/byazt/xjc/ve$c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->uj:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/xjc/ve$c;->c(Ljava/util/Set;)Lcom/byazt/xjc/ve$c;

    move-result-object v0

    iget-boolean v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->rl:Z

    .line 72
    invoke-virtual {v0, v1}, Lcom/byazt/xjc/ve$c;->tt(Z)Lcom/byazt/xjc/ve$c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    .line 73
    invoke-virtual {v0, v1}, Lcom/byazt/xjc/ve$c;->c(Lcom/byazt/cjm/c;)Lcom/byazt/xjc/ve$c;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p1}, Lcom/byazt/xjc/ve$c;->ve(I)Lcom/byazt/xjc/ve$c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 75
    invoke-virtual {v1}, Lcom/byazt/fcd/c;->md()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/xjc/ve$c;->uj(I)Lcom/byazt/xjc/ve$c;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    .line 76
    invoke-interface {v1}, Lcom/byazt/xjc/c;->uj()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tx:Z

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/byazt/xjc/ve$c;->ve(Z)Lcom/byazt/xjc/ve$c;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/byazt/xjc/ve$c;->c()Lcom/byazt/xjc/ve;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    invoke-interface {v1, v0, p1, p2}, Lcom/byazt/xjc/c;->c(Lcom/byazt/xjc/ve;ILcom/byazt/xjc/uj;)V

    :cond_8
    :goto_2
    return-void
.end method

.method public c(IZ)V
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->t(I)V

    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->sl(I)V

    :cond_0
    return-void
.end method

.method public c(J)V
    .locals 2

    .line 31
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x2bc

    .line 32
    iput v1, v0, Landroid/os/Message;->what:I

    .line 33
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "rit_scene"

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bm:Ljava/lang/String;

    const-string v0, "is_preload"

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->gu:Z

    const-string v0, "object_create_ts"

    const-wide/16 v2, 0x0

    .line 93
    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->gr:J

    const-string v0, "is_adm"

    .line 94
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zm:Z

    const-string v0, "multi_process_key"

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->hd:Ljava/lang/String;

    const-string v0, "key_video_cache_callback"

    const/4 v2, -0x1

    .line 96
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->yv:I

    const-string v0, "_client_bidding_aution_price"

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->yf:Ljava/lang/Double;

    .line 99
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->to:Lcom/byazt/rob/c;

    if-eqz v0, :cond_1

    const-string v2, "is_second_page"

    .line 100
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/byazt/rob/c;->c(Z)V

    :cond_1
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Lcom/byazt/hkv/tt;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0, p1, p2}, Lcom/byazt/kcl/tt;->c(Lcom/byazt/ete/ic;Lcom/byazt/hkv/tt;)V

    .line 130
    iget-object p2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nb:Lcom/byazt/kcl/uj;

    invoke-virtual {p2, p1}, Lcom/byazt/kcl/uj;->c(Lcom/byazt/ete/ic;)V

    return-void
.end method

.method public c(Lcom/byazt/vis/ve;)V
    .locals 1

    .line 15
    new-instance v0, Lcom/byazt/lcf/TTBaseVideoActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity$3;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/vis/ve;)V

    invoke-virtual {p1, v0}, Lcom/byazt/vis/ve;->c(Lcom/byazt/vis/ve$c;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/kcl/tt;->c(Ljava/lang/String;)V

    return-void
.end method

.method public abstract c(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public c(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 34
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    invoke-virtual {p1}, Lcom/byazt/dqg/n;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/byazt/fcd/c;->uj(Z)V

    return-void

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    invoke-virtual {p1}, Lcom/byazt/dqg/n;->a()Z

    move-result p1

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 37
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {p1}, Lcom/byazt/kcl/a;->zb()Lcom/byazt/dh/tt;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 38
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {p1}, Lcom/byazt/kcl/a;->zb()Lcom/byazt/dh/tt;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/byazt/dh/tt;->c(I)V

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/byazt/fcd/c;->uj(Z)V

    .line 40
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    invoke-virtual {p1}, Lcom/byazt/dqg/n;->a()Z

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->j:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    goto :goto_0

    .line 41
    :cond_3
    iget-object p1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 42
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->md:Lcom/byazt/dqg/tt;

    invoke-virtual {p1, v0}, Lcom/byazt/dqg/tt;->a(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public c(ZZ)V
    .locals 6

    .line 43
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0, p2}, Lcom/byazt/kcl/a;->tt(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->u()V

    if-eqz p1, :cond_1

    .line 45
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->yp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    iget-object p1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {p1}, Lcom/byazt/fcd/c;->d()V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 49
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->n()V

    return-void

    .line 50
    :cond_1
    iget-object p1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/kp;->rl(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 51
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {p1}, Lcom/byazt/kcl/tt;->pf()V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->uj(I)V

    .line 54
    :goto_0
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {p1}, Lcom/byazt/kcl/a;->nb()Z

    move-result p1

    if-nez p1, :cond_4

    .line 55
    iget-object p1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 56
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {p1}, Lcom/byazt/fcd/c;->d()V

    .line 57
    :cond_3
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->n()V

    :cond_4
    return-void
.end method

.method public c(JZ)Z
    .locals 3

    .line 9
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->qy()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p3, :cond_1

    .line 10
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->gu()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    :cond_1
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->f()V

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    iget-boolean v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->rl:Z

    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v2}, Lcom/byazt/fcd/c;->gr()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/byazt/kcl/a;->c(JZI)Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez p3, :cond_4

    .line 13
    iget-object p2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/aas/rl;->sp(Lcom/byazt/ete/ic;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    return p3

    .line 14
    :cond_3
    invoke-virtual {p0, p3, p3}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt(ZZ)V

    :cond_4
    return p1
.end method

.method public c(Landroid/os/Bundle;)Z
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->or:Lcom/byazt/kcl/c;

    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->hd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/kcl/c;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->or:Lcom/byazt/kcl/c;

    invoke-virtual {p1}, Lcom/byazt/kcl/c;->c()V

    .line 5
    :cond_0
    invoke-static {}, Lcom/byazt/omf/uj;->c()Lcom/byazt/omf/uj;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {p1, v0}, Lcom/byazt/omf/uj;->tt(Lcom/byazt/ete/ic;)V

    .line 6
    iget-object p1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    if-nez p1, :cond_1

    const-string p1, "TTBaseVideoActivity"

    const-string v0, "mMaterialMeta is null , no data to display ,the TTBaseVideoActivity finished !!"

    .line 7
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt()V

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public c(Lcom/byazt/ete/ic;Lcom/byazt/qq/da;)Z
    .locals 5

    .line 23
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->dh()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->uj:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 26
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ir:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    const/4 p1, 0x1

    return p1

    .line 27
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ir:J

    .line 28
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    new-instance v1, Lcom/byazt/lcf/TTBaseVideoActivity$7;

    invoke-direct {v1, p0, p2}, Lcom/byazt/lcf/TTBaseVideoActivity$7;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/qq/da;)V

    invoke-virtual {v0, p1, v1}, Lcom/byazt/fcd/c;->c(Lcom/byazt/ete/ic;Lcom/byazt/qq/da;)Lcom/byazt/qq/tt$c;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->f:Lcom/byazt/qq/tt$c;

    .line 29
    iget-object p2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pf:Lcom/byazt/kcl/ve;

    invoke-virtual {p1}, Lcom/byazt/qq/tt$c;->c()I

    move-result p1

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->f:Lcom/byazt/qq/tt$c;

    invoke-virtual {v0}, Lcom/byazt/qq/tt$c;->tt()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reward_retain_dialog_show"

    invoke-virtual {p2, v1, p1, v0}, Lcom/byazt/kcl/ve;->c(Ljava/lang/String;ILjava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->f:Lcom/byazt/qq/tt$c;

    invoke-virtual {p1}, Lcom/byazt/qq/tt$c;->ve()Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public cu()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->rl:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->rl:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/byazt/fcd/c;->n(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public da()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->m()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->yv()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/xs/da;->n(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 5
    invoke-static {v0}, Lcom/byazt/xs/da;->uj(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt()V

    return-void

    .line 7
    :cond_1
    new-instance v0, Lcom/byazt/lcf/TTBaseVideoActivity$4;

    invoke-direct {v0, p0}, Lcom/byazt/lcf/TTBaseVideoActivity$4;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 8
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/xs/da;->n(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v1}, Lcom/byazt/xs/da;->uj(Lcom/byazt/ete/ic;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt(Lcom/byazt/qq/da;)V

    return-void

    .line 10
    :cond_3
    :goto_0
    invoke-direct {p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/qq/da;)V

    return-void
.end method

.method public da(I)V
    .locals 14

    .line 11
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    instance-of v1, v0, Lcom/byazt/fcd/x;

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/byazt/fcd/c;->qp()Lcom/byazt/zd/tt;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0}, Lcom/byazt/zd/tt;->sl()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nt:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "device_info_new"

    .line 15
    invoke-static {p1}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/dna/u;

    .line 16
    invoke-interface {p1}, Lcom/byazt/dna/u;->getDisplayDpi()I

    move-result p1

    .line 17
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/byazt/aas/pf;->a(Landroid/content/Context;)F

    move-result v3

    .line 18
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/byazt/aas/pf;->sp(Landroid/content/Context;)F

    move-result v4

    .line 19
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->ic()Ljava/util/Map;

    move-result-object v10

    .line 20
    invoke-interface {v0}, Lcom/byazt/zd/tt;->sp()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 21
    new-instance v0, Lcom/byazt/ete/i$c;

    invoke-direct {v0}, Lcom/byazt/ete/i$c;-><init>()V

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v0, v5}, Lcom/byazt/ete/i$c;->a(F)Lcom/byazt/ete/i$c;

    move-result-object v0

    .line 22
    invoke-virtual {v0, v5}, Lcom/byazt/ete/i$c;->n(F)Lcom/byazt/ete/i$c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/byazt/ete/i$c;->uj(F)Lcom/byazt/ete/i$c;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/byazt/ete/i$c;->ve(F)Lcom/byazt/ete/i$c;

    move-result-object v0

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v5, v6}, Lcom/byazt/ete/i$c;->tt(J)Lcom/byazt/ete/i$c;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/byazt/ete/i$c;->c(J)Lcom/byazt/ete/i$c;

    move-result-object v0

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/byazt/ete/i$c;->uj(I)Lcom/byazt/ete/i$c;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v5}, Lcom/byazt/ete/i$c;->n(I)Lcom/byazt/ete/i$c;

    move-result-object v0

    const/16 v5, -0x400

    invoke-virtual {v0, v5}, Lcom/byazt/ete/i$c;->a(I)Lcom/byazt/ete/i$c;

    move-result-object v0

    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v5

    invoke-virtual {v5}, Lcom/byazt/omf/x;->tt()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    :goto_0
    invoke-virtual {v0, v5}, Lcom/byazt/ete/i$c;->ve(I)Lcom/byazt/ete/i$c;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lcom/byazt/ete/i$c;->tt(I)Lcom/byazt/ete/i$c;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/byazt/ete/i$c;->c(F)Lcom/byazt/ete/i$c;

    move-result-object p1

    .line 25
    invoke-virtual {p1, v4}, Lcom/byazt/ete/i$c;->tt(F)Lcom/byazt/ete/i$c;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->by()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {v0}, Lcom/byazt/dqg/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    invoke-virtual {v0}, Lcom/byazt/dqg/n;->da()B

    move-result v1

    :cond_1
    invoke-virtual {p1, v1}, Lcom/byazt/ete/i$c;->c(B)Lcom/byazt/ete/i$c;

    .line 28
    :cond_2
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/wz/x;->tt(Lcom/byazt/ete/ic;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/ete/i$c;->c(I)Lcom/byazt/ete/i$c;

    const-string v5, "click"

    .line 29
    iget-object v6, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/i$c;->c()Lcom/byazt/ete/i;

    move-result-object v7

    iget-object v8, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->c:Ljava/lang/String;

    const/4 v9, 0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lcom/byazt/ddx/uj;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Lcom/byazt/ete/i;Ljava/lang/String;ZLjava/util/Map;IZZ)V

    :cond_3
    return-void
.end method

.method public eo()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public finish()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/fcd/c;->z()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->ic()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lcom/byazt/kcl/tt;->c(Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/byazt/kcl/tt;->n()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/byazt/fcd/c;->tt(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->c:Ljava/lang/String;

    .line 34
    .line 35
    const-string v3, "click_close"

    .line 36
    .line 37
    invoke-static {v1, v2, v3, v0}, Lcom/byazt/ddx/uj;->a(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->p()V

    .line 41
    .line 42
    .line 43
    invoke-super {p0}, Lcom/byazt/cty/BaseThemeActivity;->finish()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public gr()Z
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->rl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->zb()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public gt()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pu:Lcom/byazt/sy/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/byazt/dqg/n;->u()Lcom/byazt/rpt/FullRewardExpressView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    invoke-virtual {v0}, Lcom/byazt/dqg/n;->u()Lcom/byazt/rpt/FullRewardExpressView;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pu:Lcom/byazt/sy/n;

    invoke-virtual {v1}, Lcom/byazt/sy/n;->c()Lcom/byazt/sy/sp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/ouz/NativeExpressView;->setEasyPlayableSender(Lcom/byazt/sy/sp;)V

    .line 4
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pu:Lcom/byazt/sy/n;

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    invoke-virtual {v1}, Lcom/byazt/dqg/n;->u()Lcom/byazt/rpt/FullRewardExpressView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ouz/NativeExpressView;->getEasyPlayableLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/byazt/sy/n;->c(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public gu()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nb:Lcom/byazt/kcl/uj;

    invoke-virtual {v0}, Lcom/byazt/kcl/uj;->ve()V

    .line 3
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->qp()V

    .line 4
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->c(I)V

    .line 5
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    const/16 v2, 0x4b0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "state"

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "reduce_duration"

    .line 9
    iget-object v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v3}, Lcom/byazt/fcd/c;->l()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    :cond_0
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    const-string v3, "playableStateChange"

    invoke-virtual {v2, v3, v0}, Lcom/byazt/dqg/n;->c(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    invoke-interface {v0, v1}, Lcom/byazt/xjc/c;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->z:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v1, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(ILcom/byazt/xjc/uj;)V

    return-void
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v0, 0x12c

    .line 4
    .line 5
    if-eq p1, v0, :cond_d

    .line 6
    .line 7
    const/16 v0, 0x190

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eq p1, v0, :cond_b

    .line 12
    .line 13
    const/16 v0, 0x1f4

    .line 14
    .line 15
    if-eq p1, v0, :cond_a

    .line 16
    .line 17
    const/16 v0, 0x258

    .line 18
    .line 19
    if-eq p1, v0, :cond_9

    .line 20
    .line 21
    const/16 v0, 0x2bc

    .line 22
    .line 23
    if-eq p1, v0, :cond_8

    .line 24
    .line 25
    const-wide/16 v3, 0x3e8

    .line 26
    .line 27
    const/16 v0, 0x4b0

    .line 28
    .line 29
    if-eq p1, v0, :cond_5

    .line 30
    .line 31
    const/16 v0, 0x514

    .line 32
    .line 33
    if-eq p1, v0, :cond_0

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    .line 38
    .line 39
    iget-object v5, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->aw:Lcom/byazt/biq/ve;

    .line 40
    .line 41
    invoke-virtual {v5}, Lcom/byazt/biq/ve;->i()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    int-to-long v5, v5

    .line 46
    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->gr()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->aw:Lcom/byazt/biq/ve;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/byazt/biq/ve;->x()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->kp()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->aw:Lcom/byazt/biq/ve;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/byazt/biq/ve;->sp()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, v1}, Lcom/byazt/fcd/tt;->x(Z)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 83
    .line 84
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->aw:Lcom/byazt/biq/ve;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/byazt/biq/ve;->n()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    int-to-long v5, v0

    .line 91
    mul-long v5, v5, v3

    .line 92
    .line 93
    invoke-virtual {p1, v5, v6}, Lcom/byazt/kcl/a;->tt(J)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    .line 97
    .line 98
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->p()D

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->aw:Lcom/byazt/biq/ve;

    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/byazt/biq/ve;->n()I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    int-to-double v5, v0

    .line 111
    sub-double/2addr v3, v5

    .line 112
    double-to-int v0, v3

    .line 113
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    iget-object v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->aw:Lcom/byazt/biq/ve;

    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/byazt/biq/ve;->n()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-virtual {p1, v0, v3, v2, v2}, Lcom/byazt/dqg/n;->c(Ljava/lang/CharSequence;IIZ)V

    .line 128
    .line 129
    .line 130
    :cond_2
    new-instance p1, Lcom/byazt/xjc/uj;

    .line 131
    .line 132
    invoke-direct {p1}, Lcom/byazt/xjc/uj;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    invoke-static {v0}, Lcom/byazt/ete/or;->tt(Z)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-lez v0, :cond_4

    .line 144
    .line 145
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 146
    .line 147
    invoke-static {v0}, Lcom/byazt/ete/or;->n(Lcom/byazt/ete/ic;)I

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    div-int/lit16 v0, v0, 0x3e8

    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-static {v2}, Lcom/byazt/ete/or;->tt(Z)I

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-ge v0, v2, :cond_3

    .line 162
    .line 163
    move v2, v0

    .line 164
    :cond_3
    sub-int/2addr v0, v2

    .line 165
    iget-object v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 166
    .line 167
    invoke-virtual {v3}, Lcom/byazt/fcd/c;->md()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    if-gt v0, v3, :cond_4

    .line 172
    .line 173
    iput-boolean v1, p1, Lcom/byazt/xjc/uj;->c:Z

    .line 174
    .line 175
    iput v2, p1, Lcom/byazt/xjc/uj;->tt:I

    .line 176
    .line 177
    :cond_4
    const/4 v0, 0x2

    .line 178
    invoke-virtual {p0, v0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(ILcom/byazt/xjc/uj;)V

    .line 179
    .line 180
    .line 181
    new-instance p1, Lcom/byazt/xjc/uj;

    .line 182
    .line 183
    invoke-direct {p1}, Lcom/byazt/xjc/uj;-><init>()V

    .line 184
    .line 185
    .line 186
    iput-boolean v1, p1, Lcom/byazt/xjc/uj;->c:Z

    .line 187
    .line 188
    const/4 v0, 0x3

    .line 189
    invoke-virtual {p0, v0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(ILcom/byazt/xjc/uj;)V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    .line 193
    .line 194
    invoke-interface {p1}, Lcom/byazt/xjc/c;->sp()V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/byazt/fcd/c;->tk()V

    .line 200
    .line 201
    .line 202
    :goto_0
    return-void

    .line 203
    :cond_5
    iget-object p1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 204
    .line 205
    invoke-static {p1}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_6

    .line 210
    .line 211
    return-void

    .line 212
    :cond_6
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/byazt/kcl/tt;->d()Z

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    if-eqz p1, :cond_7

    .line 219
    .line 220
    invoke-virtual {p0, v1, v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(IZ)V

    .line 221
    .line 222
    .line 223
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nb:Lcom/byazt/kcl/uj;

    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->pf()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    iget-object v5, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 230
    .line 231
    invoke-virtual {v5}, Lcom/byazt/fcd/c;->pf()I

    .line 232
    .line 233
    .line 234
    move-result v5

    .line 235
    invoke-virtual {p1, v1, v5}, Lcom/byazt/kcl/uj;->c(II)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0, v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(I)V

    .line 239
    .line 240
    .line 241
    :cond_7
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    .line 242
    .line 243
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 244
    .line 245
    .line 246
    return-void

    .line 247
    :cond_8
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 248
    .line 249
    invoke-virtual {p1}, Lcom/byazt/kcl/tt;->zb()V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :cond_9
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    .line 254
    .line 255
    const/4 v1, 0x0

    .line 256
    const/4 v2, 0x0

    .line 257
    const/4 v3, 0x0

    .line 258
    const/4 v4, 0x1

    .line 259
    const/4 v5, 0x1

    .line 260
    invoke-virtual/range {v0 .. v5}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :cond_a
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 265
    .line 266
    invoke-virtual {p1}, Lcom/byazt/kcl/tt;->x()V

    .line 267
    .line 268
    .line 269
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 270
    .line 271
    invoke-virtual {p1}, Lcom/byazt/kcl/a;->x()V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->md:Lcom/byazt/dqg/tt;

    .line 275
    .line 276
    invoke-virtual {p1, v2}, Lcom/byazt/dqg/tt;->ve(Z)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    .line 280
    .line 281
    invoke-virtual {p1, v2}, Lcom/byazt/dqg/n;->ve(Z)V

    .line 282
    .line 283
    .line 284
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    .line 285
    .line 286
    invoke-virtual {p1}, Lcom/byazt/dqg/n;->uj()V

    .line 287
    .line 288
    .line 289
    return-void

    .line 290
    :cond_b
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 291
    .line 292
    invoke-virtual {p1}, Lcom/byazt/kcl/a;->i()V

    .line 293
    .line 294
    .line 295
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 296
    .line 297
    invoke-virtual {p1}, Lcom/byazt/fcd/c;->a()Z

    .line 298
    .line 299
    .line 300
    move-result p1

    .line 301
    if-eqz p1, :cond_c

    .line 302
    .line 303
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    .line 304
    .line 305
    invoke-virtual {p1, v1}, Lcom/byazt/dqg/n;->c(Z)V

    .line 306
    .line 307
    .line 308
    :cond_c
    invoke-virtual {p0, v2, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(ZZ)V

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    :cond_d
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->sl()V

    .line 313
    .line 314
    .line 315
    return-void
.end method

.method public hd()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->yf:Ljava/lang/Double;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->iu:F

    iget v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->j:I

    invoke-static {v0, v1, v2}, Lcom/byazt/biq/tt;->c(Landroid/content/Context;FI)[F

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 4
    aget v0, v0, v3

    .line 5
    iget v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->iu:F

    const/high16 v5, 0x42c80000    # 100.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    float-to-int v1, v2

    .line 6
    iput v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->dz:I

    float-to-int v0, v0

    .line 7
    iput v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ma:I

    return-void

    .line 8
    :cond_0
    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->iu:F

    iget-object v6, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 9
    invoke-virtual {v6}, Lcom/byazt/ete/ic;->qe()F

    move-result v6

    iget v7, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->j:I

    .line 10
    invoke-static {v4, v5, v6, v7}, Lcom/byazt/biq/tt;->c(Landroid/content/Context;FFI)[I

    move-result-object v4

    .line 11
    aget v1, v4, v1

    .line 12
    aget v3, v4, v3

    const/4 v5, 0x2

    .line 13
    aget v5, v4, v5

    const/4 v6, 0x3

    .line 14
    aget v4, v4, v6

    int-to-float v1, v1

    sub-float/2addr v2, v1

    int-to-float v5, v5

    sub-float/2addr v2, v5

    float-to-int v2, v2

    .line 15
    iput v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->dz:I

    int-to-float v2, v3

    sub-float/2addr v0, v2

    int-to-float v3, v4

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 16
    iput v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ma:I

    .line 17
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/h;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ic:I

    .line 18
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/dl/uj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 19
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->p:Lcom/byazt/dqg/RewardFullBaseLayout;

    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v4, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v4, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 20
    invoke-static {v4, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-static {v5, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    .line 21
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/byazt/dqg/RewardFullBaseLayout;->c(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public i(I)V
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->to:Lcom/byazt/rob/c;

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/byazt/aas/nb;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {}, Lcom/byazt/lvl/c;->c()Lcom/byazt/lvl/c;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {v1, v2, v0}, Lcom/byazt/lvl/c;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/dj/tt;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->to:Lcom/byazt/rob/c;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/byazt/rob/c;->tt(Z)V

    .line 26
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->to:Lcom/byazt/rob/c;

    invoke-virtual {v1, p1, v0}, Lcom/byazt/rob/c;->c(ILcom/byazt/dj/tt;)V

    return-void
.end method

.method public ic()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/ete/ic;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public kk()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->eo()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->t()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->xd()V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x1

    .line 21
    invoke-virtual {p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->a(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public kp()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/fcd/tt;->iu()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    return v0
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x3

    .line 11
    invoke-virtual {p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->a(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public lo()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nb:Lcom/byazt/kcl/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kcl/uj;->uj()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->cu()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/byazt/fcd/c;->sp()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v0, v1}, Lcom/byazt/ete/kp;->ve(Lcom/byazt/ete/ic;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    return v0

    .line 34
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 35
    return v0
.end method

.method public lr()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->a(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public lt()Lcom/byazt/kcl/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pf:Lcom/byazt/kcl/ve;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public m(I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public md()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public my()B
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/dqg/n;->da()B

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n(I)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->wn()I

    move-result v2

    if-eq v2, v0, :cond_8

    const/4 v3, 0x3

    if-eq v2, v3, :cond_7

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5

    const/4 v5, 0x5

    if-eq v2, v5, :cond_5

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->u:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x3

    goto :goto_1

    :cond_7
    if-eqz p1, :cond_1

    :cond_8
    :goto_1
    return v0
.end method

.method public n()V
    .locals 5

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    if-eqz v1, :cond_0

    const-string v2, "reward_full_scene_type"

    .line 4
    invoke-virtual {v1}, Lcom/byazt/fcd/c;->eo()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 5
    :cond_0
    :goto_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    const-string v3, "stats_reward_full_show_endcard"

    invoke-virtual {v1, v2, v3, v0}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->cu()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/my;->uj(Lcom/byazt/ete/ic;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/tt;->uj(Z)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->zm()V

    .line 10
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    instance-of v0, v0, Lcom/byazt/fcd/da;

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    invoke-interface {v0, v1}, Lcom/byazt/xjc/c;->tt(Z)V

    .line 12
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    invoke-interface {v0}, Lcom/byazt/xjc/c;->a()V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    instance-of v0, v0, Lcom/byazt/fcd/sp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 14
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->gt()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    instance-of v0, v0, Lcom/byazt/fcd/x;

    if-eqz v0, :cond_5

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->qy()V

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->c(Z)V

    .line 17
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nb:Lcom/byazt/kcl/uj;

    iget-boolean v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->rl:Z

    invoke-virtual {v0, v2}, Lcom/byazt/kcl/uj;->c(Z)V

    .line 18
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->t()V

    .line 19
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    instance-of v0, v0, Lcom/byazt/fcd/sp;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->i()V

    return-void

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/byazt/kcl/n;->c(I)V

    .line 22
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lr:Lcom/byazt/dyf/tt;

    if-eqz v0, :cond_7

    .line 23
    invoke-virtual {v0}, Lcom/byazt/dyf/tt;->resetDislikeStatus()V

    .line 24
    :cond_7
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->f:Lcom/byazt/qq/tt$c;

    if-eqz v0, :cond_8

    .line 25
    invoke-virtual {v0}, Lcom/byazt/qq/tt$c;->n()V

    .line 26
    :cond_8
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->md:Lcom/byazt/dqg/tt;

    if-eqz v0, :cond_9

    const/16 v2, 0x8

    .line 27
    invoke-virtual {v0, v2}, Lcom/byazt/dqg/tt;->n(I)V

    .line 28
    :cond_9
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/byazt/kcl/tt;->ve(Z)V

    .line 29
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->nu()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 30
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/xd;->sl(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/rl;->tt(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 31
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/kcl/tt;->c(ZILjava/lang/String;)V

    .line 32
    :cond_a
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->yp()V

    .line 33
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    const/16 v1, 0x1f4

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 34
    :cond_b
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/xd;->sl(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 35
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    const/16 v3, 0x198

    const-string v4, "end_card_timeout"

    invoke-virtual {v0, v2, v3, v4}, Lcom/byazt/kcl/tt;->c(ZILjava/lang/String;)V

    .line 36
    :cond_c
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/tt;->n(Z)V

    .line 37
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->x()V

    :cond_d
    :goto_1
    return-void
.end method

.method public nb()Lcom/byazt/nr/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public nu()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->da()V

    return-void
.end method

.method public nu(I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/aas/pf;->tt(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/byazt/lcf/TTBaseVideoActivity$8;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/byazt/lcf/TTBaseVideoActivity$8;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    :catchall_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/byazt/ete/ic;->uj(Lcom/byazt/ete/ic;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->ka()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 22
    .line 23
    instance-of v0, v0, Lcom/byazt/fcd/x;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->m()V

    .line 30
    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lt:Lcom/byazt/wg/tt;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/byazt/wg/tt;->tt(Landroid/app/Activity;Lcom/byazt/ete/ic;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    return-void

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/byazt/ete/my;->u(Lcom/byazt/ete/ic;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->da()V

    .line 56
    .line 57
    .line 58
    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/byazt/vfu/sp;->tt(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/byazt/cty/BaseThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    iput-object p0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->s()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Landroid/content/Intent;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Landroid/os/Bundle;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->j()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->y()V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yf()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->i()V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 49
    .line 50
    iget v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->dz:I

    .line 51
    .line 52
    iget v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ma:I

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Lcom/byazt/fcd/c;->c(II)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->p:Lcom/byazt/dqg/RewardFullBaseLayout;

    .line 58
    .line 59
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->uj()V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/byazt/fcd/c;->tt()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    .line 71
    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ny:Lcom/byazt/ua/c$c;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Lcom/byazt/dqg/n;->c(Lcom/byazt/ua/c$c;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->r()Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    new-instance p1, Lcom/byazt/biq/uj;

    .line 86
    .line 87
    invoke-direct {p1}, Lcom/byazt/biq/uj;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->xd:Lcom/byazt/biq/uj;

    .line 91
    .line 92
    :cond_2
    const/high16 p1, 0x7e070000

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/byazt/md/SaasAuthRewardDialog;

    .line 99
    .line 100
    if-eqz p1, :cond_4

    .line 101
    .line 102
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 103
    .line 104
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->c:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_3

    .line 111
    .line 112
    const/4 v2, 0x7

    .line 113
    goto :goto_0

    .line 114
    :cond_3
    const/4 v2, 0x5

    .line 115
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/byazt/md/SaasAuthRewardDialog;->c(Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    :cond_4
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 123
    .line 124
    const/4 v1, 0x1

    .line 125
    invoke-static {p1, v0, v1}, Lcom/byazt/ete/or;->tt(ZLcom/byazt/ete/ic;Z)Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_5

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->or()Lcom/byazt/dqg/RewardFullBaseLayout;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lcom/byazt/dqg/RewardFullBaseLayout;->getSceneFrameContainer()Landroid/widget/FrameLayout;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-instance v0, Lcom/byazt/lcf/TTBaseVideoActivity$19;

    .line 140
    .line 141
    invoke-direct {v0, p0}, Lcom/byazt/lcf/TTBaseVideoActivity$19;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 145
    .line 146
    .line 147
    :cond_5
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/cty/BaseThemeActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/fcd/c;->m()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->dz()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pf:Lcom/byazt/kcl/ve;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/kcl/ve;->n()Lcom/byazt/ddx/n;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/16 v1, 0x10

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/n;->c(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lr:Lcom/byazt/dyf/tt;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/dyf/tt;->resetDislikeStatus()V

    .line 33
    .line 34
    .line 35
    :cond_2
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->ma()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lt:Lcom/byazt/wg/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/wg/tt;->c(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public onPause()V
    .locals 8

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->os:J

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-lez v4, :cond_0

    .line 11
    .line 12
    iget-wide v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->oz:J

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v4

    .line 18
    iget-wide v6, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->os:J

    .line 19
    .line 20
    sub-long/2addr v4, v6

    .line 21
    add-long/2addr v0, v4

    .line 22
    iput-wide v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->oz:J

    .line 23
    .line 24
    iput-wide v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->os:J

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->to:Lcom/byazt/rob/c;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/byazt/rob/c;->ve()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    new-instance v0, Landroid/os/Bundle;

    .line 37
    .line 38
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "foreground_time"

    .line 42
    .line 43
    iget-wide v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->oz:J

    .line 44
    .line 45
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/byazt/rob/tt;->c()Lcom/byazt/rob/tt;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ic:I

    .line 53
    .line 54
    invoke-virtual {v1, v2, v0}, Lcom/byazt/rob/tt;->c(ILandroid/os/Bundle;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->sv()V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->qy:Z

    .line 62
    .line 63
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/byazt/fcd/c;->yp()V

    .line 68
    .line 69
    .line 70
    :cond_2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->or:Lcom/byazt/kcl/c;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/byazt/kcl/c;->n()V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->n()V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->xd:Lcom/byazt/biq/uj;

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/byazt/biq/uj;->c()V

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    .line 88
    .line 89
    const/16 v1, 0x514

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/byazt/cjm/c;->tt()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->os:J

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/byazt/xjc/c;->n()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->to:Lcom/byazt/rob/c;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/rob/c;->uj()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-static {}, Lcom/byazt/rob/tt;->c()Lcom/byazt/rob/tt;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ic:I

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Lcom/byazt/rob/tt;->c(I)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const-string v3, "foreground_time"

    .line 47
    .line 48
    const-wide/16 v4, 0x0

    .line 49
    .line 50
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    const-wide/16 v5, 0x3e8

    .line 55
    .line 56
    div-long/2addr v3, v5

    .line 57
    long-to-float v0, v3

    .line 58
    iget-object v3, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 59
    .line 60
    invoke-static {v3}, Lcom/byazt/ete/kp;->yv(Lcom/byazt/ete/ic;)F

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    mul-float v0, v0, v3

    .line 65
    .line 66
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p0, v0, v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(IZ)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/byazt/rob/tt;->c()Lcom/byazt/rob/tt;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ic:I

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Lcom/byazt/rob/tt;->tt(I)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->to:Lcom/byazt/rob/c;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Lcom/byazt/rob/c;->tt(Z)V

    .line 85
    .line 86
    .line 87
    :cond_1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->xd:Lcom/byazt/biq/uj;

    .line 88
    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/byazt/biq/uj;->tt()V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->xd:Lcom/byazt/biq/uj;

    .line 95
    .line 96
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 97
    .line 98
    invoke-virtual {v0, v3}, Lcom/byazt/biq/uj;->c(Ljava/util/concurrent/TimeUnit;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v3

    .line 102
    long-to-int v0, v3

    .line 103
    invoke-virtual {p0, v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(IZ)V

    .line 104
    .line 105
    .line 106
    iget-object v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->xd:Lcom/byazt/biq/uj;

    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/byazt/biq/uj;->ve()V

    .line 109
    .line 110
    .line 111
    iget-object v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    .line 112
    .line 113
    if-eqz v3, :cond_2

    .line 114
    .line 115
    iget-object v3, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 116
    .line 117
    invoke-static {v3}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-nez v3, :cond_2

    .line 122
    .line 123
    new-instance v3, Lorg/json/JSONObject;

    .line 124
    .line 125
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 126
    .line 127
    .line 128
    :try_start_0
    const-string v4, "time"

    .line 129
    .line 130
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    :goto_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    .line 139
    .line 140
    const-string v4, "reduceTime"

    .line 141
    .line 142
    invoke-virtual {v0, v4, v3}, Lcom/byazt/dqg/n;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 143
    .line 144
    .line 145
    :cond_2
    iput-boolean v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->qy:Z

    .line 146
    .line 147
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->ve()V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->or:Lcom/byazt/kcl/c;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/byazt/kcl/c;->uj()V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 158
    .line 159
    if-eqz v0, :cond_3

    .line 160
    .line 161
    iget-object v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->uj:Ljava/util/concurrent/ConcurrentHashMap;

    .line 162
    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    invoke-virtual {v0, v3}, Lcom/byazt/fcd/c;->tt(Z)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->aw()V

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nb:Lcom/byazt/kcl/uj;

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/byazt/kcl/uj;->c()V

    .line 180
    .line 181
    .line 182
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->ir()V

    .line 183
    .line 184
    .line 185
    :cond_3
    new-instance v0, Lcom/byazt/xjc/uj;

    .line 186
    .line 187
    invoke-direct {v0}, Lcom/byazt/xjc/uj;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    invoke-static {v3}, Lcom/byazt/ete/or;->c(Z)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-lez v3, :cond_4

    .line 199
    .line 200
    const/4 v1, 0x1

    .line 201
    :cond_4
    iput-boolean v1, v0, Lcom/byazt/xjc/uj;->c:Z

    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    invoke-static {v1}, Lcom/byazt/ete/or;->c(Z)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    iput v1, v0, Lcom/byazt/xjc/uj;->tt:I

    .line 212
    .line 213
    invoke-virtual {p0, v2, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(ILcom/byazt/xjc/uj;)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    .line 217
    .line 218
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->aw:Lcom/byazt/biq/ve;

    .line 219
    .line 220
    invoke-virtual {v1}, Lcom/byazt/biq/ve;->i()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    int-to-long v1, v1

    .line 225
    const/16 v3, 0x514

    .line 226
    .line 227
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 228
    .line 229
    .line 230
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    :try_start_0
    const-string v0, "multi_process_key"

    .line 9
    .line 10
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->hd:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "is_preload"

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->gu:Z

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    const-string v0, "object_create_ts"

    .line 23
    .line 24
    iget-wide v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->gr:J

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    const-string v0, "is_adm"

    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zm:Z

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    const-string v0, "key_video_cache_callback"

    .line 37
    .line 38
    iget v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->yv:I

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 41
    .line 42
    .line 43
    const-string v0, "video_current"

    .line 44
    .line 45
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/byazt/kcl/a;->m()J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 52
    .line 53
    .line 54
    const-string v0, "is_mute"

    .line 55
    .line 56
    iget-boolean v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->rl:Z

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    .line 60
    .line 61
    const-string v0, "rit_scene"

    .line 62
    .line 63
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bm:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v0, "_client_bidding_aution_price"

    .line 69
    .line 70
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->yf:Ljava/lang/Double;

    .line 71
    .line 72
    if-nez v1, :cond_1

    .line 73
    .line 74
    const-string v1, ""

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    :catchall_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public onSkipBorderClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/fcd/c;->c(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->u()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->hq:Lcom/byazt/bzd/c;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/bzd/c;->c()I

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Lcom/byazt/qqc/ve;->c()Lcom/byazt/qqc/ve;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 21
    .line 22
    iget-boolean v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->rl:Z

    .line 23
    .line 24
    invoke-virtual {v0, p0, v1, v2}, Lcom/byazt/qqc/ve;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/byazt/fcd/c;->ve(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->a()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->hq:Lcom/byazt/bzd/c;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/byazt/bzd/c;->tt()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-static {}, Lcom/byazt/qqc/ve;->c()Lcom/byazt/qqc/ve;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, p0, v1, v2}, Lcom/byazt/qqc/ve;->tt(Landroid/content/Context;Lcom/byazt/ete/ic;Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->dz()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pf:Lcom/byazt/kcl/ve;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/kcl/ve;->n()Lcom/byazt/ddx/n;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/16 p1, 0xc

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 p1, 0xd

    .line 22
    .line 23
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/byazt/ddx/n;->c(FI)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public or()Lcom/byazt/dqg/RewardFullBaseLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->p:Lcom/byazt/dqg/RewardFullBaseLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public os()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->p:Lcom/byazt/dqg/RewardFullBaseLayout;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/byazt/xjc/c;->c(Landroid/widget/FrameLayout;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public oz()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->da:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public abstract p()V
.end method

.method public pf()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->h()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x3e8

    .line 8
    .line 9
    div-long/2addr v0, v2

    .line 10
    long-to-int v1, v0

    .line 11
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/fcd/c;->l()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr v1, v0

    .line 18
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/byazt/fcd/c;->lo()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sub-int/2addr v0, v1

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0
.end method

.method public pu()Lcom/byazt/kcl/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->my:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public qp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nb:Lcom/byazt/kcl/uj;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/kcl/uj;->tt()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public qy()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->c(I)V

    .line 3
    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->c(Z)V

    .line 6
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->n(Z)V

    .line 7
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/byazt/kcl/n;->a(Z)V

    .line 8
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    iget-object v3, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {v3}, Lcom/byazt/ete/ic;->fe()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/byazt/kcl/n;->tt(Z)V

    .line 9
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nb:Lcom/byazt/kcl/uj;

    iget-boolean v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->rl:Z

    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->uj:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/byazt/kcl/uj;->c(ZZ)V

    .line 10
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    const/16 v2, 0x4b0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "state"

    .line 12
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    const-string v2, "playableStateChange"

    invoke-virtual {v1, v2, v0}, Lcom/byazt/dqg/n;->c(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public rh()V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->n()V

    return-void
.end method

.method public rh(I)V
    .locals 1

    .line 3
    new-instance v0, Lcom/byazt/lcf/TTBaseVideoActivity$15;

    invoke-direct {v0, p0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity$15;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;I)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public rl()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lr:Lcom/byazt/dyf/tt;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/byazt/dyf/tt;->isShow()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sl()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/tt;->kk()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/a;->c(I)V

    .line 4
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->my()V

    .line 5
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/a;->ve(Z)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(ZZ)V

    return-void
.end method

.method public sl(I)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "time"

    .line 9
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    const-string v1, "reduceTime"

    invoke-virtual {p1, v1, v0}, Lcom/byazt/dqg/n;->c(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public sp()V
    .locals 15

    .line 2
    new-instance v6, Lcom/byazt/lcf/TTBaseVideoActivity$20;

    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v3, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    move-result v0

    const/4 v7, 0x7

    const/4 v8, 0x5

    if-eqz v0, :cond_0

    const/4 v5, 0x7

    goto :goto_0

    :cond_0
    const/4 v5, 0x5

    :goto_0
    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/byazt/lcf/TTBaseVideoActivity$20;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    iput-object v6, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lo:Lcom/byazt/hkv/n;

    .line 3
    iget v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->iu:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 4
    const-class v0, Lcom/byazt/nat/c;

    invoke-virtual {v6, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ny:Lcom/byazt/ua/c$c;

    invoke-virtual {v0, v1}, Lcom/byazt/nat/c;->c(Ljava/lang/Object;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lo:Lcom/byazt/hkv/n;

    const-class v1, Lcom/byazt/vis/ve;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/vis/ve;

    .line 6
    invoke-virtual {p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/vis/ve;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lo:Lcom/byazt/hkv/n;

    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->md:Lcom/byazt/dqg/tt;

    invoke-virtual {v2}, Lcom/byazt/dqg/tt;->u()Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lo:Lcom/byazt/hkv/n;

    const-class v2, Lcom/byazt/vis/c;

    invoke-virtual {v0, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/vis/c;

    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->ic()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 9
    new-instance v0, Lcom/byazt/lcf/TTBaseVideoActivity$21;

    iget-object v11, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v12, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    iget-object v13, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v14, 0x7

    goto :goto_1

    :cond_2
    const/4 v14, 0x5

    :goto_1
    move-object v9, v0

    move-object v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/byazt/lcf/TTBaseVideoActivity$21;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->r:Lcom/byazt/hkv/tt;

    .line 10
    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/vis/ve;

    .line 11
    invoke-virtual {p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/vis/ve;)V

    .line 12
    new-instance v0, Lcom/byazt/lcf/TTBaseVideoActivity$22;

    invoke-direct {v0, p0}, Lcom/byazt/lcf/TTBaseVideoActivity$22;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->y:Lcom/byazt/kcl/c$c;

    .line 13
    new-instance v0, Lcom/byazt/lcf/TTBaseVideoActivity$2;

    invoke-direct {v0, p0}, Lcom/byazt/lcf/TTBaseVideoActivity$2;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->s:Lcom/byazt/kcl/c$tt;

    .line 14
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lo:Lcom/byazt/hkv/n;

    invoke-virtual {v0, v1}, Lcom/byazt/fcd/c;->c(Lcom/byazt/hkv/n;)V

    return-void
.end method

.method public sp(I)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->p:Lcom/byazt/dqg/RewardFullBaseLayout;

    invoke-virtual {v0, p1}, Lcom/byazt/dqg/RewardFullBaseLayout;->c(I)V

    return-void
.end method

.method public sv()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yp(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public t()V
    .locals 4

    .line 2
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pf:Lcom/byazt/kcl/ve;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v3}, Lcom/byazt/kcl/ve;->c(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "stats_reward_full_completed"

    invoke-virtual {v0, v1, v3, v2}, Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->da:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onVideoComplete"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public t(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0, p1}, Lcom/byazt/fcd/c;->ve(I)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(I)V

    return-void
.end method

.method public tk()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->uj:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public to()Lcom/byazt/fcd/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->finish()V

    return-void
.end method

.method public tt(I)V
    .locals 6

    if-gtz p1, :cond_0

    .line 13
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/byazt/kcl/n;->c(ZLjava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    const/16 v1, 0x258

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public tt(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "insert_ad_bundle"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    new-instance v1, Lcom/byazt/xjc/ve;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/byazt/xjc/ve;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Lcom/byazt/xjc/ve;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->hd:Ljava/lang/String;

    .line 66
    iget-object p1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/ete/or;->c(Lcom/byazt/ete/ic;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 67
    invoke-virtual {v1}, Lcom/byazt/xjc/ve;->da()I

    move-result p1

    iput p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->v:I

    .line 68
    :cond_0
    invoke-virtual {v1}, Lcom/byazt/xjc/ve;->sl()Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tx:Z

    .line 69
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->da:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Lcom/byazt/xjc/ve;->uj()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->uj:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/byazt/xjc/ve;->x()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 71
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    invoke-interface {p1, v1}, Lcom/byazt/xjc/c;->c(Lcom/byazt/xjc/ve;)V

    .line 72
    invoke-virtual {v1}, Lcom/byazt/xjc/ve;->n()Z

    move-result p1

    iput-boolean p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->rl:Z

    .line 73
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->q:Lcom/byazt/cjm/c;

    invoke-virtual {v1}, Lcom/byazt/xjc/ve;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/byazt/cjm/c;->ve(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public tt(Landroid/os/Bundle;)V
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "multi_process_key"

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->hd:Ljava/lang/String;

    const-string v0, "is_preload"

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->gu:Z

    const-string v0, "object_create_ts"

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->gr:J

    const-string v0, "is_adm"

    .line 55
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zm:Z

    const-string v0, "key_video_cache_callback"

    const/4 v1, -0x1

    .line 56
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->yv:I

    const-string v0, "rit_scene"

    .line 57
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bm:Ljava/lang/String;

    const-string v0, "_client_bidding_aution_price"

    .line 58
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->yf:Ljava/lang/Double;

    const-string v0, "is_mute"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->rl:Z

    const-string v0, "video_current"

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 62
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {p1, v0, v1}, Lcom/byazt/kcl/a;->c(J)V

    :cond_1
    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->p()Lcom/byazt/omf/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-virtual {v0, p1, v1}, Lcom/byazt/omf/d;->ve(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt()V

    .line 11
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->tt()V

    return-void
.end method

.method public tt(Z)V
    .locals 4

    .line 15
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x190

    .line 16
    iput v1, v0, Landroid/os/Message;->what:I

    .line 17
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x7d0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public tt(ZZ)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->x()Ljava/util/Map;

    move-result-object p1

    .line 19
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->kk:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    iget-boolean v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "is_adm"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->md()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "is_play_again"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->yv:I

    if-ne v2, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "if_cache_callback"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->xv()Ljava/lang/String;

    move-result-object v2

    const-string v3, "src_req_id"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->rp()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "is_map"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->rh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "is_repeat"

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    iget-object v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->yf:Ljava/lang/Double;

    invoke-static {v2, v3, p1, v4}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V

    .line 27
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pf:Lcom/byazt/kcl/ve;

    invoke-virtual {p1}, Lcom/byazt/kcl/ve;->n()Lcom/byazt/ddx/n;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0xb

    invoke-virtual {p1, v2, v3}, Lcom/byazt/ddx/n;->c(FI)V

    .line 28
    invoke-static {}, Lcom/byazt/pf/c;->c()Lcom/byazt/pf/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/pf/c;->uj()V

    .line 29
    iget-object p1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->eo()I

    move-result p1

    invoke-static {p1}, Lcom/byazt/aas/cu;->c(I)V

    :cond_1
    if-eqz p2, :cond_7

    .line 30
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    move-result p1

    iget-object p2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {p1, p2, v1}, Lcom/byazt/ete/or;->tt(ZLcom/byazt/ete/ic;Z)Z

    move-result p1

    if-nez p1, :cond_4

    .line 31
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/ogz/sl;->oq()Z

    move-result p1

    .line 32
    iget-object p2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nu:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    .line 33
    :cond_2
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    const-string v1, "stats_callback_repeat"

    invoke-virtual {p1, p2, v1}, Lcom/byazt/ukr/yp;->uj(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :cond_3
    :goto_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 35
    iget-object p2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->kk:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    const-string v1, "has_show_event"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p2, "onAdShow"

    .line 36
    invoke-virtual {p0, p2, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 37
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {p1}, Lcom/byazt/fcd/c;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 38
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    invoke-virtual {p1}, Lcom/byazt/dqg/n;->sp()V

    .line 39
    :cond_5
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pu:Lcom/byazt/sy/n;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/byazt/sy/n;->c()Lcom/byazt/sy/sp;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 40
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pu:Lcom/byazt/sy/n;

    invoke-virtual {p1}, Lcom/byazt/sy/n;->c()Lcom/byazt/sy/sp;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/sy/sp;->uj()V

    .line 41
    :cond_6
    iget-object p1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->yv()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 42
    invoke-static {}, Lcom/byazt/yxu/c;->c()Lcom/byazt/yxu/c;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/byazt/yxu/c;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    :cond_7
    invoke-virtual {p0, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(Z)V

    return-void
.end method

.method public tt(JZ)Z
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lo:Lcom/byazt/hkv/n;

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/a;->c(Lcom/byazt/hkv/c;)V

    .line 45
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v1}, Lcom/byazt/fcd/c;->my()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/kcl/a;->c(Landroid/widget/FrameLayout;Ljava/lang/String;Z)V

    .line 46
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->x()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/a;->tt(Ljava/util/Map;)V

    .line 47
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v1}, Lcom/byazt/kcl/a;->cu()Lcom/byazt/dh/ve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dqg/n;->c(Lcom/byazt/dh/ve;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tk:Lcom/byazt/zd/c$c;

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/a;->c(Lcom/byazt/zd/c$c;)V

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(JZ)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    long-to-int p3, p2

    iput p3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->l:I

    :cond_1
    return p1
.end method

.method public tx()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->b:Lcom/byazt/xjc/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/byazt/xjc/c;->tt(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public u()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "onVideoError"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public u(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->md:Lcom/byazt/dqg/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/dqg/tt;->n(I)V

    return-void
.end method

.method public uj()V
    .locals 9

    .line 3
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->p:Lcom/byazt/dqg/RewardFullBaseLayout;

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0, v1}, Lcom/byazt/dqg/RewardFullBaseLayout;->c(Lcom/byazt/fcd/c;)V

    .line 4
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->iu()V

    .line 5
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/fcd/c;->c(Z)Lcom/byazt/dqg/tt;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->md:Lcom/byazt/dqg/tt;

    .line 6
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->t()Lcom/byazt/dqg/n;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    .line 7
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->u()Lcom/byazt/go/AbstractEndCardFrameLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->d:Lcom/byazt/go/AbstractEndCardFrameLayout;

    .line 8
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->md:Lcom/byazt/dqg/tt;

    invoke-virtual {v0}, Lcom/byazt/dqg/tt;->c()V

    .line 9
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->sp()V

    .line 10
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->md:Lcom/byazt/dqg/tt;

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lo:Lcom/byazt/hkv/n;

    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->r:Lcom/byazt/hkv/tt;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/dqg/tt;->c(Lcom/byazt/hkv/tt;Lcom/byazt/hkv/tt;)V

    .line 11
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->md:Lcom/byazt/dqg/tt;

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->or:Lcom/byazt/kcl/c;

    invoke-virtual {v1}, Lcom/byazt/kcl/c;->sp()Lcom/byazt/kcl/c$ve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/dqg/tt;->c(Landroid/webkit/DownloadListener;)V

    .line 12
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    move-result v3

    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lo:Lcom/byazt/hkv/n;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/byazt/kcl/n;->c(Lcom/byazt/ete/ic;Lcom/byazt/kcl/tt;ZLcom/byazt/hkv/tt;)V

    .line 13
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    iget-boolean v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->rl:Z

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->uj(Z)V

    .line 14
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->or:Lcom/byazt/kcl/c;

    invoke-virtual {v0}, Lcom/byazt/kcl/c;->ve()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lo:Lcom/byazt/hkv/n;

    const-class v1, Lcom/byazt/nat/c;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->or:Lcom/byazt/kcl/c;

    invoke-virtual {v1}, Lcom/byazt/kcl/c;->tt()Lcom/byazt/pop/ve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 16
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->or:Lcom/byazt/kcl/c;

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->y:Lcom/byazt/kcl/c$c;

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/c;->c(Lcom/byazt/kcl/c$c;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->or:Lcom/byazt/kcl/c;

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->s:Lcom/byazt/kcl/c$tt;

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/c;->c(Lcom/byazt/kcl/c$tt;)V

    .line 18
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->or:Lcom/byazt/kcl/c;

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ny:Lcom/byazt/ua/c$c;

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/c;->c(Lcom/byazt/ua/c$c;)V

    .line 19
    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    iget-object v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->or:Lcom/byazt/kcl/c;

    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yv()Z

    move-result v5

    iget-object v6, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->c:Ljava/lang/String;

    iget v7, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->dz:I

    iget v8, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ma:I

    invoke-virtual/range {v2 .. v8}, Lcom/byazt/kcl/tt;->c(Lcom/byazt/kcl/n;Lcom/byazt/kcl/c;ZLjava/lang/String;II)V

    .line 20
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lo:Lcom/byazt/hkv/n;

    iget-object v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->ny:Lcom/byazt/ua/c$c;

    invoke-interface {v3}, Lcom/byazt/ua/c$c;->getVideoModel()Lcom/byazt/ua/c;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->d:Lcom/byazt/go/AbstractEndCardFrameLayout;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/byazt/kcl/tt;->c(Lcom/byazt/ete/ic;Lcom/byazt/hkv/tt;Lcom/byazt/ua/c;Lcom/byazt/go/AbstractEndCardFrameLayout;)V

    .line 21
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nb:Lcom/byazt/kcl/uj;

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    iget-object v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->eo:Lcom/byazt/kcl/n;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/byazt/kcl/uj;->c(Lcom/byazt/kcl/tt;Lcom/byazt/ete/ic;Ljava/lang/String;Lcom/byazt/kcl/n;)V

    .line 22
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pf:Lcom/byazt/kcl/ve;

    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->md:Lcom/byazt/dqg/tt;

    invoke-virtual {v3}, Lcom/byazt/dqg/tt;->u()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/kcl/ve;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Landroid/view/View;)V

    .line 23
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/a;->c(Lcom/byazt/ete/ic;)V

    .line 24
    new-instance v0, Lcom/byazt/bzd/c;

    invoke-direct {v0}, Lcom/byazt/bzd/c;-><init>()V

    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->hq:Lcom/byazt/bzd/c;

    .line 25
    new-instance v0, Lcom/byazt/sy/n;

    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->kp:Lcom/byazt/sy/c;

    invoke-direct {v0, v1, v2}, Lcom/byazt/sy/n;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/sy/c;)V

    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->pu:Lcom/byazt/sy/n;

    .line 26
    new-instance v0, Lcom/byazt/wg/tt;

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/byazt/wg/tt;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lt:Lcom/byazt/wg/tt;

    .line 27
    new-instance v0, Lcom/byazt/rob/c;

    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-direct {v0, v1, v2}, Lcom/byazt/rob/c;-><init>(Lcom/byazt/ete/ic;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->to:Lcom/byazt/rob/c;

    return-void
.end method

.method public uj(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public uj(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->g:Z

    return-void
.end method

.method public v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/fcd/c;->lt()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public ve()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->qp()V

    .line 4
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/a;->c(I)V

    .line 5
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->i()V

    .line 6
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->yp()V

    .line 7
    invoke-virtual {p0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->a(I)V

    return-void
.end method

.method public ve(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public ve(Ljava/lang/String;)V
    .locals 7

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lr:Lcom/byazt/dyf/tt;

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Lcom/byazt/dyf/tt;

    iget-object v2, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v1, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->wq()Lcom/byazt/vo/tt;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->c:Ljava/lang/String;

    const/4 v5, 0x1

    .line 11
    invoke-static {}, Lcom/byazt/xky/tt;->c()Lcom/byazt/dyf/c;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/byazt/dyf/tt;-><init>(Landroid/content/Context;Lcom/byazt/vo/tt;Ljava/lang/String;ZLcom/byazt/dyf/c;)V

    iput-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lr:Lcom/byazt/dyf/tt;

    .line 12
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->sv:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-static {v1, v2, v0}, Lcom/byazt/tl/ve;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dyf/tt;)V

    .line 13
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lr:Lcom/byazt/dyf/tt;

    new-instance v1, Lcom/byazt/lcf/TTBaseVideoActivity$10;

    invoke-direct {v1, p0}, Lcom/byazt/lcf/TTBaseVideoActivity$10;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    invoke-virtual {v0, v1}, Lcom/byazt/dyf/tt;->setDislikeInteractionCallback(Lcom/byazt/dyf/tt$c;)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lr:Lcom/byazt/dyf/tt;

    invoke-virtual {v0, p1}, Lcom/byazt/dyf/tt;->setDislikeSource(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->lr:Lcom/byazt/dyf/tt;

    invoke-virtual {p1}, Lcom/byazt/dyf/tt;->showDislikeDialog()V

    return-void
.end method

.method public abstract ve(Z)V
.end method

.method public x()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->ic()Ljava/util/Map;

    move-result-object v0

    .line 4
    iget-wide v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->gr:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->gr:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "object_media_holder_time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    if-nez v1, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/byazt/fcd/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    if-eqz v1, :cond_2

    .line 8
    iget-object v2, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/dqg/n;->u()Lcom/byazt/rpt/FullRewardExpressView;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/byazt/ouz/yv;->c(Ljava/util/Map;Lcom/byazt/ete/ic;Lcom/byazt/ouz/NativeExpressView;)V

    :cond_2
    return-object v0
.end method

.method public x(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public yp()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->da:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->x:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "onSkippedVideo"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public yp(I)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->tt()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pause_from"

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v1, v0}, Lcom/byazt/kcl/a;->c(Ljava/util/Map;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    const/16 v1, 0x4b0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->m(I)V

    .line 12
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->kp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/cty/BaseThemeActivity;->qp:Lcom/byazt/ete/ic;

    .line 13
    invoke-static {v0}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nb:Lcom/byazt/kcl/uj;

    .line 14
    invoke-virtual {v0}, Lcom/byazt/kcl/uj;->uj()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    if-nez v0, :cond_2

    return-void

    .line 16
    :cond_2
    invoke-virtual {v0}, Lcom/byazt/fcd/c;->qy()V

    .line 17
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->kp()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/tt;->tt(Z)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    .line 18
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->gr()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/dqg/n;->uj(Z)V

    :cond_3
    return-void
.end method

.method public abstract yv()Z
.end method

.method public z()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public z(I)V
    .locals 4

    .line 4
    invoke-virtual {p0, p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->nu(I)V

    .line 5
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    instance-of v0, v0, Lcom/byazt/fcd/x;

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    new-instance v1, Lcom/byazt/lcf/TTBaseVideoActivity$14;

    invoke-direct {v1, p0}, Lcom/byazt/lcf/TTBaseVideoActivity$14;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->hj()V

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->gr()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->tt:Lcom/byazt/nr/d;

    const/16 v1, 0x4b0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->kp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->cu()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    invoke-virtual {v0}, Lcom/byazt/fcd/c;->gu()V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->uj()V

    :cond_4
    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    .line 14
    iget-object p1, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->h:Lcom/byazt/dqg/n;

    if-eqz p1, :cond_5

    .line 15
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->gr()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/dqg/n;->uj(Z)V

    :cond_5
    return-void
.end method

.method public zb()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public zm()Z
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/byazt/lcf/TTBaseVideoActivity;->gr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->nb()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->bx:Lcom/byazt/fcd/c;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/byazt/fcd/tt;->kk()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->nb:Lcom/byazt/kcl/uj;

    invoke-virtual {v0}, Lcom/byazt/kcl/uj;->uj()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->zb:Lcom/byazt/kcl/tt;

    invoke-virtual {v0}, Lcom/byazt/kcl/tt;->cu()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 7
    :cond_4
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->qy()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 8
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->ve()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->tt()Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->tt()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 10
    :cond_6
    iget-object v0, p0, Lcom/byazt/lcf/TTBaseVideoActivity;->cu:Lcom/byazt/kcl/a;

    invoke-virtual {v0}, Lcom/byazt/kcl/a;->ve()Z

    :cond_7
    return v2
.end method
