.class public abstract Lcom/byazt/wz/c;
.super Lcom/byazt/wz/uj;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/wz/c$c;
    }
.end annotation


# instance fields
.field public a:Z

.field public c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final da:Lcom/byazt/nr/d;

.field public gr:Lcom/byazt/aas/c$tt;

.field public gt:Z

.field public final gu:Lcom/byazt/wrq/tt;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/omf/nu;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lcom/byazt/pop/uj;

.field public volatile m:Ljava/lang/Runnable;

.field public volatile md:Lcom/byazt/yzg/ve;

.field public volatile my:Z

.field public final n:Ljava/util/concurrent/atomic/AtomicInteger;

.field public nu:I

.field public qy:Ljava/lang/String;

.field public rh:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public rl:Z

.field public final sl:Ljava/lang/String;

.field public final sp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public t:Z

.field public tt:Lcom/byazt/ete/n;

.field public volatile u:Z

.field public uj:Ljava/lang/String;

.field public ve:Lcom/byazt/ete/ic;

.field public x:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public yp:Lcom/byazt/omf/yp;

.field public z:Lcom/byazt/wz/c$c;

.field public final zm:Lcom/byazt/su/tt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/wz/uj;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/wz/c;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/byazt/wz/c;->a:Z

    .line 14
    .line 15
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/byazt/wz/c;->sp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    new-instance v1, Lcom/byazt/nr/d;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v1, v2, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/byazt/wz/c;->da:Lcom/byazt/nr/d;

    .line 32
    .line 33
    iput-boolean v0, p0, Lcom/byazt/wz/c;->t:Z

    .line 34
    .line 35
    iput-boolean v0, p0, Lcom/byazt/wz/c;->u:Z

    .line 36
    .line 37
    new-instance v1, Lcom/byazt/wz/c$c;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/byazt/wz/c$c;-><init>(Lcom/byazt/wz/c;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/byazt/wz/c;->z:Lcom/byazt/wz/c$c;

    .line 43
    .line 44
    iput v0, p0, Lcom/byazt/wz/c;->nu:I

    .line 45
    .line 46
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lcom/byazt/wz/c;->h:Ljava/util/List;

    .line 52
    .line 53
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/byazt/wz/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    new-instance v0, Lcom/byazt/wz/c$1;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/byazt/wz/c$1;-><init>(Lcom/byazt/wz/c;)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/byazt/wz/c;->gu:Lcom/byazt/wrq/tt;

    .line 66
    .line 67
    new-instance v0, Lcom/byazt/wz/c$5;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/byazt/wz/c$5;-><init>(Lcom/byazt/wz/c;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/byazt/wz/c;->gr:Lcom/byazt/aas/c$tt;

    .line 73
    .line 74
    new-instance v0, Lcom/byazt/wz/c$6;

    .line 75
    .line 76
    invoke-direct {v0, p0}, Lcom/byazt/wz/c$6;-><init>(Lcom/byazt/wz/c;)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/byazt/wz/c;->zm:Lcom/byazt/su/tt;

    .line 80
    .line 81
    iput-object p4, p0, Lcom/byazt/wz/c;->qy:Ljava/lang/String;

    .line 82
    .line 83
    new-instance p4, Ljava/lang/ref/WeakReference;

    .line 84
    .line 85
    invoke-direct {p4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iput-object p4, p0, Lcom/byazt/wz/c;->c:Ljava/lang/ref/WeakReference;

    .line 89
    .line 90
    iput-object p2, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    .line 93
    .line 94
    .line 95
    move-result-object p4

    .line 96
    iput-object p4, p0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 97
    .line 98
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result p4

    .line 102
    if-eqz p4, :cond_0

    .line 103
    .line 104
    invoke-static {p2}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p3

    .line 108
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result p4

    .line 112
    if-eqz p4, :cond_1

    .line 113
    .line 114
    const-string p3, "embeded_ad"

    .line 115
    .line 116
    :cond_1
    iput-object p3, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    .line 117
    .line 118
    new-instance p3, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->hashCode()I

    .line 124
    .line 125
    .line 126
    move-result p4

    .line 127
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    iput-object p2, p0, Lcom/byazt/wz/c;->sl:Ljava/lang/String;

    .line 142
    .line 143
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 144
    .line 145
    .line 146
    move-result-object p2

    .line 147
    invoke-virtual {p2}, Lcom/byazt/omf/x;->nb()Ljava/util/function/Function;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    iput-object p2, p0, Lcom/byazt/wz/c;->rh:Ljava/util/function/Function;

    .line 152
    .line 153
    iget-object p2, p0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 154
    .line 155
    if-nez p2, :cond_2

    .line 156
    .line 157
    iget-object p2, p0, Lcom/byazt/wz/c;->qy:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    if-eqz p2, :cond_2

    .line 164
    .line 165
    return-void

    .line 166
    :cond_2
    iget-object p2, p0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 167
    .line 168
    if-nez p2, :cond_3

    .line 169
    .line 170
    new-instance p2, Lcom/byazt/ete/n;

    .line 171
    .line 172
    invoke-direct {p2}, Lcom/byazt/ete/n;-><init>()V

    .line 173
    .line 174
    .line 175
    iput-object p2, p0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 176
    .line 177
    iget-object p3, p0, Lcom/byazt/wz/c;->qy:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {p2, p3}, Lcom/byazt/ete/n;->tt(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :cond_3
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    if-nez p2, :cond_4

    .line 187
    .line 188
    invoke-static {p1}, Lcom/byazt/omf/gt;->c(Landroid/content/Context;)V

    .line 189
    .line 190
    .line 191
    :cond_4
    new-instance p1, Lcom/byazt/pop/uj;

    .line 192
    .line 193
    invoke-direct {p1}, Lcom/byazt/pop/uj;-><init>()V

    .line 194
    .line 195
    .line 196
    iput-object p1, p0, Lcom/byazt/wz/c;->i:Lcom/byazt/pop/uj;

    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/byazt/wz/c;->c()V

    .line 199
    .line 200
    .line 201
    return-void
.end method

.method private a(Lorg/json/JSONObject;Z)V
    .locals 0

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/byazt/pop/ve;->c(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/wz/c;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/wz/c;->gu()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Landroid/app/Activity;)V
    .locals 2

    .line 24
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/byazt/wz/c;->m:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    .line 26
    new-instance v1, Lcom/byazt/wz/c$7;

    invoke-direct {v1, p0}, Lcom/byazt/wz/c$7;-><init>(Lcom/byazt/wz/c;)V

    iput-object v1, p0, Lcom/byazt/wz/c;->m:Ljava/lang/Runnable;

    .line 27
    iget-object v1, p0, Lcom/byazt/wz/c;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, p1, v1}, Lcom/byazt/aas/c;->c(Landroid/app/Activity;Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public static synthetic c(Lcom/byazt/wz/c;Lorg/json/JSONObject;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/wz/c;->sp(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private c(Ljava/lang/String;Z)Z
    .locals 4

    .line 43
    new-instance v0, Lcom/byazt/aas/zb;

    invoke-direct {v0}, Lcom/byazt/aas/zb;-><init>()V

    iget-object v1, p0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 44
    invoke-virtual {v1}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    move-result-object v1

    const-string v2, "downloadUrl"

    invoke-virtual {v0, v2, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v0

    .line 45
    invoke-virtual {p0}, Lcom/byazt/wz/uj;->gt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "hashCode"

    invoke-virtual {v0, v2, v1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/byazt/wz/c;->rh:Ljava/util/function/Function;

    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v2

    const/4 v3, 0x6

    .line 47
    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    .line 48
    invoke-virtual {v2, v3}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v2

    const/4 v3, 0x0

    .line 49
    invoke-virtual {v2, v3, v0}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v0

    .line 51
    invoke-static {v1, v0}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/byazt/wz/c$11;

    invoke-direct {v0, p0, p2, p1}, Lcom/byazt/wz/c$11;-><init>(Lcom/byazt/wz/c;ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return v3

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private gu()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->zm()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method private qy()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/wz/c;->t:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/byazt/wz/c;->t:Z

    .line 8
    .line 9
    new-instance v0, Lcom/byazt/wz/c$2;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/byazt/wz/c$2;-><init>(Lcom/byazt/wz/c;)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-virtual {p0, v1, v0}, Lcom/byazt/wz/c;->c(ILcom/byazt/dk/ve$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private rl()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/byazt/bwm/n;->ve()Ljava/util/concurrent/ExecutorService;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/byazt/wz/c$8;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/byazt/wz/c$8;-><init>(Lcom/byazt/wz/c;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private sp(Lorg/json/JSONObject;Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "material_meta"

    .line 2
    iget-object v2, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    new-instance v3, Lcom/byazt/wz/c$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/byazt/wz/c$3;-><init>(Lcom/byazt/wz/c;Lorg/json/JSONObject;Z)V

    iget-object v4, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/byazt/apd/tt;->c(Lcom/byazt/eia/i;Lcom/byazt/ysz/ve;Ljava/lang/String;Ljava/util/Map;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/byazt/wz/c;->x(Lorg/json/JSONObject;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/wz/c;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wz/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/wz/c;Lorg/json/JSONObject;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/wz/c;->x(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/wz/c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/wz/c;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/wz/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/wz/c;->rl()V

    return-void
.end method

.method private x(Lorg/json/JSONObject;Z)V
    .locals 4

    .line 7
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "event_tag"

    .line 9
    iget-object v3, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "material_meta"

    .line 10
    iget-object v3, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v2, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->mu()I

    move-result v2

    const/16 v3, -0x3e9

    if-eq v2, v3, :cond_0

    .line 12
    iget-object v2, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v2}, Lcom/byazt/ete/ic;->mu()I

    move-result v2

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/byazt/apd/tt;->c()Lcom/byazt/apd/tt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/byazt/apd/tt;->ve()I

    move-result v2

    .line 14
    iget-object v3, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v3, v2}, Lcom/byazt/ete/ic;->iu(I)V

    :goto_0
    const-string v3, "saas_status_while_click"

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/byazt/wz/c;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v0, v2, v3, v1}, Lcom/byazt/apd/tt;->c(Landroid/content/Context;Lcom/byazt/eia/i;Ljava/util/Map;)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_1

    .line 17
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object p1

    const-string p2, "save_jump_success_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    .line 18
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object p1

    const-string p2, "save_jump_success_ad_tag"

    iget-object v0, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "save_dpl_success_materialmeta"

    invoke-interface {p1, v0, p2}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/wz/c;->x()Lcom/byazt/yzg/ve;

    move-result-object v0

    invoke-virtual {p0}, Lcom/byazt/wz/c;->m()Lcom/byazt/yzg/c;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/yzg/c;Lcom/byazt/eia/sp;)V

    .line 21
    invoke-static {}, Lcom/byazt/wdw/n;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 22
    invoke-static {v1}, Lcom/byazt/wdw/n;->c(Z)V

    :cond_2
    if-nez v0, :cond_4

    .line 23
    new-instance v0, Lcom/byazt/wdw/n;

    iget-object v2, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {p0}, Lcom/byazt/wz/c;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v2, v3, v1}, Lcom/byazt/wdw/n;-><init>(Lcom/byazt/eia/da;Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/wdw/n;->c(Ljava/lang/String;)Lcom/byazt/wdw/n;

    move-result-object v0

    iget-object v1, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    .line 25
    invoke-static {v1}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/wdw/n;->c(I)Lcom/byazt/wdw/n;

    move-result-object v0

    iget-boolean v1, p0, Lcom/byazt/wz/c;->u:Z

    .line 26
    invoke-virtual {v0, v1}, Lcom/byazt/wdw/n;->tt(Z)Lcom/byazt/wdw/n;

    move-result-object v0

    new-instance v1, Lcom/byazt/wz/c$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/wz/c$4;-><init>(Lcom/byazt/wz/c;Lorg/json/JSONObject;Z)V

    .line 27
    invoke-virtual {v0, v1}, Lcom/byazt/wdw/n;->c(Lcom/byazt/wdw/n$c;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/byazt/wz/c;->n(Lorg/json/JSONObject;Z)V

    :cond_3
    return-void

    .line 29
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/byazt/wz/c;->n(Lorg/json/JSONObject;Z)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
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

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/wz/c;->u:Z

    return-void
.end method

.method public c()V
    .locals 0

    .line 3
    invoke-virtual {p0}, Lcom/byazt/wz/c;->my()V

    .line 4
    invoke-virtual {p0}, Lcom/byazt/wz/c;->rh()V

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/byazt/wz/c;->nu:I

    return-void
.end method

.method public c(ILcom/byazt/dk/ve$c;)V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/byazt/wz/c;->x:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/byazt/wz/c;->x:Ljava/util/HashSet;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/wz/c;->x:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/byazt/wz/c;->rh:Ljava/util/function/Function;

    if-eqz v0, :cond_1

    .line 14
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v0

    const/16 v1, 0x9

    .line 15
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v0

    new-instance v1, Lcom/byazt/aas/zb;

    invoke-direct {v1}, Lcom/byazt/aas/zb;-><init>()V

    const-string v2, "hid"

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object v1

    const-string v2, "id"

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    const-string v1, "onEventLogHandler"

    .line 19
    invoke-virtual {p1, v1, p2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    .line 20
    invoke-virtual {p0}, Lcom/byazt/wz/uj;->gt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "hashCode"

    invoke-virtual {p1, v1, p2}, Lcom/byazt/aas/zb;->c(Ljava/lang/Object;Ljava/lang/Object;)Lcom/byazt/aas/zb;

    move-result-object p1

    const/4 p2, 0x0

    .line 21
    invoke-virtual {v0, p2, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p1

    .line 23
    iget-object p2, p0, Lcom/byazt/wz/c;->rh:Ljava/util/function/Function;

    invoke-static {p2, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public c(Landroid/app/Activity;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/byazt/wz/c;->c:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_1

    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/wz/c;->rh()V

    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Z)V
    .locals 5

    .line 54
    invoke-virtual {p0}, Lcom/byazt/wz/c;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 56
    invoke-direct {p0}, Lcom/byazt/wz/c;->qy()V

    .line 57
    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byazt/wdw/ve;->c(Lcom/byazt/eia/i;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 58
    invoke-static {v0}, Lcom/byazt/xs/da;->n(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/xs/da;->uj(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    new-instance v0, Lcom/byazt/wdw/ve;

    iget-object v1, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->my()Lcom/byazt/ete/yp;

    move-result-object v2

    invoke-virtual {p0}, Lcom/byazt/wz/c;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/byazt/wdw/ve;-><init>(Lcom/byazt/eia/i;Lcom/byazt/ete/yp;Landroid/content/Context;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v1}, Lcom/byazt/wdw/ve;->c(Ljava/lang/String;)Lcom/byazt/wdw/ve;

    move-result-object v0

    new-instance v1, Lcom/byazt/wz/c$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/wz/c$12;-><init>(Lcom/byazt/wz/c;Lcom/byazt/ete/ic;Z)V

    .line 61
    invoke-virtual {v0, v1}, Lcom/byazt/wdw/ve;->c(Lcom/byazt/wdw/ve$c;)I

    return-void

    .line 62
    :cond_1
    invoke-static {p1}, Lcom/byazt/aas/nb;->qy(Lcom/byazt/ete/ic;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/byazt/wz/c;->sp(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public c(Lcom/byazt/pop/c;)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/byazt/wz/c;->c(Lcom/byazt/pop/c;Z)V

    return-void
.end method

.method public c(Lcom/byazt/pop/c;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/wz/c;->i:Lcom/byazt/pop/uj;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Lcom/byazt/pop/uj;->c(Lcom/byazt/pop/c;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 8
    invoke-virtual {p0, p1}, Lcom/byazt/wz/c;->tt(Lcom/byazt/pop/c;)V

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/wz/c;->rh()V

    return-void
.end method

.method public c(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v9, p0

    .line 35
    iget-object v0, v9, Lcom/byazt/wz/c;->z:Lcom/byazt/wz/c$c;

    if-nez v0, :cond_0

    .line 36
    new-instance v10, Lcom/byazt/wz/c$c;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/byazt/wz/c$c;-><init>(Lcom/byazt/wz/c;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    iput-object v10, v9, Lcom/byazt/wz/c;->z:Lcom/byazt/wz/c$c;

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 37
    invoke-virtual {v0, p1}, Lcom/byazt/wz/c$c;->c(Ljava/lang/String;)V

    .line 38
    iget-object v0, v9, Lcom/byazt/wz/c;->z:Lcom/byazt/wz/c$c;

    move-wide v1, p2

    invoke-virtual {v0, p2, p3}, Lcom/byazt/wz/c$c;->c(J)V

    .line 39
    iget-object v0, v9, Lcom/byazt/wz/c;->z:Lcom/byazt/wz/c$c;

    move-wide v1, p4

    invoke-virtual {v0, v1, v2}, Lcom/byazt/wz/c$c;->tt(J)V

    .line 40
    iget-object v0, v9, Lcom/byazt/wz/c;->z:Lcom/byazt/wz/c$c;

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/byazt/wz/c$c;->tt(Ljava/lang/String;)V

    .line 41
    iget-object v0, v9, Lcom/byazt/wz/c;->z:Lcom/byazt/wz/c$c;

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/byazt/wz/c$c;->ve(Ljava/lang/String;)V

    .line 42
    :goto_0
    invoke-static {}, Lcom/byazt/bwm/n;->ve()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iget-object v1, v9, Lcom/byazt/wz/c;->z:Lcom/byazt/wz/c$c;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/byazt/wz/c;->rh:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    .line 30
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object p1

    .line 31
    invoke-static {v0, p1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 63
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/byazt/pop/ve;->sp()Z

    move-result v1

    invoke-static {p5, p3, p4, v1}, Lcom/byazt/aas/nb;->c(ZLcom/byazt/ete/ic;Ljava/lang/String;Z)Z

    .line 64
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 65
    new-instance p4, Landroid/content/Intent;

    const-string p5, "android.intent.action.VIEW"

    invoke-direct {p4, p5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p4, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p3, 0x10000000

    .line 67
    invoke-virtual {p4, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p3, "open_url"

    .line 68
    invoke-virtual {p4, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p1, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :catchall_0
    return v0
.end method

.method public da()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/wz/c;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Landroid/app/Activity;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v0, Landroid/app/Activity;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Lcom/byazt/omf/x;->c(Landroid/app/Activity;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-direct {p0, v0}, Lcom/byazt/wz/c;->c(Landroid/app/Activity;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    invoke-direct {p0}, Lcom/byazt/wz/c;->rl()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/byazt/wz/c;->gu()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x2

    .line 9
    invoke-static {v0, v1}, Lcom/byazt/rgb/c;->n(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wz/c;->c:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/content/Context;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    return-object v0

    .line 23
    :catchall_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/byazt/omf/x;->c()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0}, Lcom/byazt/wz/c;->n(Z)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    .line 30
    instance-of v1, p1, Ljava/lang/Boolean;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    check-cast p1, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/byazt/aas/nb;->qy(Lcom/byazt/ete/ic;)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/byazt/wz/c;->tt(Lorg/json/JSONObject;Z)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    const/4 p1, 0x1

    .line 51
    invoke-virtual {p0, p1}, Lcom/byazt/wz/c;->n(Z)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void
.end method

.method public i()Lcom/byazt/omf/yp;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c;->yp:Lcom/byazt/omf/yp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/byazt/wzi/c;->c(Landroid/content/Context;)Lcom/byazt/wzi/c;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x3

    .line 14
    invoke-virtual {v0, v1}, Lcom/byazt/wzi/c;->c(I)Landroid/os/IBinder;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/byazt/omf/yp$c;->c(Landroid/os/IBinder;)Lcom/byazt/omf/yp;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/byazt/wz/c;->yp:Lcom/byazt/omf/yp;

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/wz/c;->yp:Lcom/byazt/omf/yp;

    .line 25
    .line 26
    return-object v0
.end method

.method public m()Lcom/byazt/yzg/c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/wz/c;->uj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/byazt/yzg/n;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/byazt/yzg/n;-><init>()V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/wz/c;->u:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/byazt/yzg/uj;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/byazt/yzg/uj;-><init>()V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    new-instance v0, Lcom/byazt/yzg/tt;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/byazt/yzg/tt;-><init>()V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public abstract my()V
.end method

.method public n(Lorg/json/JSONObject;Z)V
    .locals 3

    .line 3
    invoke-virtual {p0}, Lcom/byazt/wz/c;->sl()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/wz/c;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 5
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->z()Lcom/byazt/ete/n;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 6
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->x()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 7
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->B_()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/byazt/wz/c;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->x()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    iget-object v1, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    invoke-interface {p0}, Lcom/byazt/pop/ve;->sp()Z

    move-result v2

    invoke-static {p1, p2, v0, v1, v2}, Lcom/byazt/omf/or;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;Z)Z

    return-void

    .line 9
    :cond_1
    invoke-virtual {p0, p2}, Lcom/byazt/wz/c;->sp(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->B_()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 11
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/byazt/wz/c;->tt(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public n(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    iget-object v0, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    const-string v1, "quickapp_success"

    invoke-static {p1, v0, v1}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    iget-object v0, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    const-string v1, "quickapp_fail"

    invoke-static {p1, v0, v1}, Lcom/byazt/ddx/uj;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public nu()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/ete/gt;->a(Lcom/byazt/ete/ic;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x3

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/ete/n;->c()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0
.end method

.method public abstract rh()V
.end method

.method public sl()Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->yp()Lcom/byazt/ete/nu;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/byazt/ete/nu;->tt()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v2}, Lcom/byazt/ete/nu;->c(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    new-instance v4, Landroid/content/Intent;

    .line 35
    .line 36
    const-string v5, "android.intent.action.VIEW"

    .line 37
    .line 38
    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    invoke-static {v4}, Lcom/byazt/aas/nb;->ve(Landroid/content/Intent;)V

    .line 45
    .line 46
    .line 47
    new-instance v3, Ljava/util/HashMap;

    .line 48
    .line 49
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v5, "source"

    .line 53
    .line 54
    const-string v6, "AbsDMLibManager"

    .line 55
    .line 56
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    const-string v5, "scheme"

    .line 60
    .line 61
    invoke-static {v0}, Lcom/byazt/aas/nb;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 69
    .line 70
    iget-object v5, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    .line 71
    .line 72
    iget-boolean v6, p0, Lcom/byazt/wz/c;->u:Z

    .line 73
    .line 74
    invoke-static {v0, v5, v3, v6}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 75
    .line 76
    .line 77
    invoke-static {v4}, Lcom/byazt/aas/nb;->c(Landroid/content/Intent;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    .line 83
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/wz/c;->u:Z

    .line 84
    .line 85
    iget-object v3, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 86
    .line 87
    iget-object v5, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    .line 88
    .line 89
    invoke-interface {p0}, Lcom/byazt/pop/ve;->sp()Z

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    invoke-static {v0, v3, v5, v6}, Lcom/byazt/aas/nb;->c(ZLcom/byazt/ete/ic;Ljava/lang/String;Z)Z

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/byazt/wz/c;->getContext()Landroid/content/Context;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sget-object v3, Lcom/byazt/omf/p;->x:Ljava/lang/String;

    .line 101
    .line 102
    const-string v5, "internal"

    .line 103
    .line 104
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-static {v0, v4, v3}, Lcom/byazt/nr/tt;->startActivity(Landroid/content/Context;Landroid/content/Intent;Z)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 112
    .line 113
    iget-object v3, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    .line 114
    .line 115
    iget-boolean v4, p0, Lcom/byazt/wz/c;->u:Z

    .line 116
    .line 117
    const/4 v5, 0x1

    .line 118
    invoke-static {v0, v3, v2, v4, v5}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lcom/byazt/ddx/x;->c()Lcom/byazt/ddx/x;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    iget-object v7, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 126
    .line 127
    iget-object v8, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    .line 128
    .line 129
    iget-boolean v9, p0, Lcom/byazt/wz/c;->u:Z

    .line 130
    .line 131
    invoke-interface {p0}, Lcom/byazt/pop/ve;->sp()Z

    .line 132
    .line 133
    .line 134
    move-result v10

    .line 135
    const/4 v11, 0x0

    .line 136
    invoke-virtual/range {v6 .. v11}, Lcom/byazt/ddx/x;->c(Lcom/byazt/ete/ic;Ljava/lang/String;ZZLcom/byazt/ddx/i$c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    return v5

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    iget-object v3, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->x()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-nez v3, :cond_0

    .line 152
    .line 153
    iget-object v3, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 154
    .line 155
    iget-object v4, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    .line 156
    .line 157
    const-string v5, "open_fallback_url"

    .line 158
    .line 159
    invoke-static {v3, v4, v5, v2}, Lcom/byazt/ddx/uj;->x(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/byazt/wz/c;->getContext()Landroid/content/Context;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iget-object v3, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 167
    .line 168
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->x()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    iget-object v4, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 173
    .line 174
    iget-object v5, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    .line 175
    .line 176
    invoke-interface {p0}, Lcom/byazt/pop/ve;->sp()Z

    .line 177
    .line 178
    .line 179
    move-result v6

    .line 180
    invoke-static {v2, v3, v4, v5, v6}, Lcom/byazt/omf/or;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;Z)Z

    .line 181
    .line 182
    .line 183
    :cond_0
    iget-object v2, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 184
    .line 185
    iget-object v3, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    .line 186
    .line 187
    iget-boolean v4, p0, Lcom/byazt/wz/c;->u:Z

    .line 188
    .line 189
    invoke-static {v2, v3, v0, v4, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 190
    .line 191
    .line 192
    return v1

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 194
    .line 195
    iget-object v3, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    .line 196
    .line 197
    iget-boolean v4, p0, Lcom/byazt/wz/c;->u:Z

    .line 198
    .line 199
    invoke-static {v0, v3, v2, v4, v1}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 200
    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/wz/c;->t()V

    .line 204
    .line 205
    .line 206
    :cond_3
    :goto_0
    return v1
.end method

.method public sp(Z)Z
    .locals 8

    .line 6
    iget-object v0, p0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/byazt/wz/c;->nu()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/wz/c;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v0, p0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    invoke-virtual {v0}, Lcom/byazt/ete/n;->c()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    iget-object v6, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/byazt/wz/c;->u:Z

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/byazt/wz/c;->c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ete/ic;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x9

    .line 9
    iput v2, v1, Landroid/os/Message;->what:I

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Lcom/byazt/wz/c;->da:Lcom/byazt/nr/d;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 12
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object p1

    const-string v1, "save_jump_success_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lcom/byazt/it/c;->put(Ljava/lang/String;J)V

    .line 13
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object p1

    const-string v1, "save_jump_success_ad_tag"

    iget-object v2, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/byazt/omf/tt;->c()Lcom/byazt/it/ve;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->yg()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "save_dpl_success_materialmeta"

    invoke-interface {p1, v2, v1}, Lcom/byazt/it/c;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0, v1}, Lcom/byazt/wz/c;->n(Z)V

    :goto_0
    return v0

    :cond_2
    :goto_1
    return v1
.end method

.method public t()V
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :try_start_0
    const-string v3, "reqId"

    .line 21
    .line 22
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    const-string v1, "cid"

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    :catch_0
    :cond_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "deeplink_url_null"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v1, v2, v0, v3}, Lcom/byazt/ukr/yp;->c(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public tt()V
    .locals 1

    .line 7
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/byazt/wz/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/omf/gt;->c(Landroid/content/Context;)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/wz/c;->rh()V

    return-void
.end method

.method public tt(Lcom/byazt/pop/c;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/byazt/ue/tt;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/byazt/bwm/n;->ve()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/byazt/wz/c$9;

    invoke-direct {v1, p0, p1}, Lcom/byazt/wz/c$9;-><init>(Lcom/byazt/wz/c;Lcom/byazt/pop/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public tt(Lorg/json/JSONObject;Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/wz/c;->tt:Lcom/byazt/ete/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/ete/n;->tt()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/byazt/wz/c;->ve(Lorg/json/JSONObject;Z)Z

    :cond_0
    return-void
.end method

.method public abstract u()V
.end method

.method public uj(Lorg/json/JSONObject;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/byazt/wz/c;->a(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public abstract uj()Z
.end method

.method public ve()V
    .locals 3

    .line 11
    iget-object v0, p0, Lcom/byazt/wz/c;->i:Lcom/byazt/pop/uj;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/byazt/pop/uj;->tt()V

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/byazt/wz/c;->u()V

    .line 14
    iget-object v0, p0, Lcom/byazt/wz/c;->x:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/byazt/wz/c;->x:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 17
    iget-object v1, p0, Lcom/byazt/wz/c;->x:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 18
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/byazt/wz/c$10;

    const-string v2, "remove_log_hanlder"

    invoke-direct {v1, p0, v2, v0}, Lcom/byazt/wz/c$10;-><init>(Lcom/byazt/wz/c;Ljava/lang/String;Ljava/util/Iterator;)V

    invoke-static {v1}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/byazt/wz/c;->c:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 22
    iput-object v1, p0, Lcom/byazt/wz/c;->c:Ljava/lang/ref/WeakReference;

    .line 23
    :cond_2
    iput-object v1, p0, Lcom/byazt/wz/c;->md:Lcom/byazt/yzg/ve;

    return-void
.end method

.method public ve(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/byazt/wz/c;->gt:Z

    return-void
.end method

.method public ve(Lorg/json/JSONObject;Z)Z
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/byazt/wz/c;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/byazt/wz/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/wz/c;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "\"\u65e0\u7f51\u7edc\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\""

    invoke-static {p1, p2, v1}, Lcom/byazt/nr/h;->c(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/byazt/aas/nb;->yv()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-boolean v0, p0, Lcom/byazt/wz/c;->u:Z

    iget-object v1, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    iget-object v3, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    invoke-interface {p0}, Lcom/byazt/pop/ve;->sp()Z

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/byazt/aas/nb;->c(ZLcom/byazt/ete/ic;Ljava/lang/String;Z)Z

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/byazt/wz/c;->uj(Lorg/json/JSONObject;Z)V

    :catch_0
    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 8
    :cond_2
    invoke-static {}, Lcom/byazt/aas/nb;->yv()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-boolean v0, p0, Lcom/byazt/wz/c;->u:Z

    iget-object v2, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    iget-object v3, p0, Lcom/byazt/wz/c;->uj:Ljava/lang/String;

    invoke-interface {p0}, Lcom/byazt/pop/ve;->sp()Z

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/byazt/aas/nb;->c(ZLcom/byazt/ete/ic;Ljava/lang/String;Z)Z

    .line 10
    :cond_3
    invoke-interface {p0, p1, p2}, Lcom/byazt/pop/ve;->c(Lorg/json/JSONObject;Z)V

    :goto_1
    return v1
.end method

.method public x()Lcom/byazt/yzg/ve;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c;->md:Lcom/byazt/yzg/ve;

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/byazt/wz/c;->md:Lcom/byazt/yzg/ve;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/byazt/yzg/ve;

    invoke-virtual {p0}, Lcom/byazt/wz/c;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    invoke-direct {v0, v1, v2}, Lcom/byazt/yzg/ve;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;)V

    iput-object v0, p0, Lcom/byazt/wz/c;->md:Lcom/byazt/yzg/ve;

    .line 5
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/byazt/wz/c;->md:Lcom/byazt/yzg/ve;

    return-object v0
.end method

.method public yp()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public z()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/c;->rh:Ljava/util/function/Function;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/ete/gt;->m(Lcom/byazt/ete/ic;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->jg()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    const-string v0, "\u5df2\u4e0b\u8f7d%d%%\uff0c\u53ef\u5728\u901a\u77e5\u680f\u6682\u505c\u6216\u53d6\u6d88"

    .line 28
    .line 29
    iget-object v3, p0, Lcom/byazt/wz/c;->gu:Lcom/byazt/wrq/tt;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/byazt/wrq/tt;->getCurrentPercent()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    :try_start_0
    new-array v4, v1, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    aput-object v3, v4, v2

    .line 42
    .line 43
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :catch_0
    invoke-direct {p0, v0, v1}, Lcom/byazt/wz/c;->c(Ljava/lang/String;Z)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    return v0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/byazt/wz/c;->ve:Lcom/byazt/ete/ic;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/byazt/ete/gt;->da(Lcom/byazt/ete/ic;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    return v1

    .line 61
    :cond_3
    const-string v1, "adm"

    .line 62
    .line 63
    invoke-static {v0, v1}, Lcom/byazt/wz/x;->tt(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "\u5e94\u7528\u6b63\u5728\u4e0b\u8f7d..."

    .line 67
    .line 68
    invoke-direct {p0, v0, v2}, Lcom/byazt/wz/c;->c(Ljava/lang/String;Z)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    return v0
.end method
