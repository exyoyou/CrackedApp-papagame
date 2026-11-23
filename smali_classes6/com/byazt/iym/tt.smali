.class public Lcom/byazt/iym/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x310,
        0xd
    }
.end annotation


# instance fields
.field public a:I

.field public final c:Lcom/byazt/lcf/TTBaseVideoActivity;

.field public da:Lcom/byazt/pop/ve;

.field public i:Lcom/byazt/hkv/c;

.field public m:Z

.field public n:Z

.field public nu:Lcom/byazt/rpt/FullRewardExpressView;

.field public sl:Landroid/view/ViewGroup;

.field public sp:Lcom/byazt/ouz/a;

.field public t:Z

.field public final tt:Lcom/byazt/ete/ic;

.field public u:J

.field public uj:Z

.field public final ve:Ljava/lang/String;

.field public x:Lcom/byazt/ouz/n;

.field public final yp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final z:Z


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/byazt/iym/tt;->da:Lcom/byazt/pop/ve;

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/byazt/iym/tt;->yp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/byazt/iym/tt;->n:Z

    .line 16
    .line 17
    iput-object p1, p0, Lcom/byazt/iym/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 18
    .line 19
    iput-object p2, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/byazt/iym/tt;->ve:Ljava/lang/String;

    .line 22
    .line 23
    iput-boolean p4, p0, Lcom/byazt/iym/tt;->z:Z

    .line 24
    .line 25
    iput-boolean p5, p0, Lcom/byazt/iym/tt;->m:Z

    .line 26
    .line 27
    new-instance p4, Lcom/byazt/iym/tt$1;

    .line 28
    .line 29
    invoke-static {p3}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    move-object v2, p4

    .line 34
    move-object v3, p0

    .line 35
    move-object v4, p1

    .line 36
    move-object v5, p2

    .line 37
    move-object v6, p3

    .line 38
    move-object v8, p1

    .line 39
    invoke-direct/range {v2 .. v8}, Lcom/byazt/iym/tt$1;-><init>(Lcom/byazt/iym/tt;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;ILcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 40
    .line 41
    .line 42
    iput-object p4, p0, Lcom/byazt/iym/tt;->sp:Lcom/byazt/ouz/a;

    .line 43
    .line 44
    const-class p5, Lcom/byazt/vis/c;

    .line 45
    .line 46
    invoke-virtual {p4, p5}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 47
    .line 48
    .line 49
    move-result-object p4

    .line 50
    check-cast p4, Lcom/byazt/vis/c;

    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/ete/ic;)Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p4, v0}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    new-instance p4, Lcom/byazt/iym/tt$2;

    .line 60
    .line 61
    invoke-static {p3}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    move-object v1, p4

    .line 66
    move-object v2, p0

    .line 67
    move-object v3, p1

    .line 68
    move-object v4, p2

    .line 69
    move-object v5, p3

    .line 70
    move-object v7, p1

    .line 71
    invoke-direct/range {v1 .. v7}, Lcom/byazt/iym/tt$2;-><init>(Lcom/byazt/iym/tt;Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;ILcom/byazt/lcf/TTBaseVideoActivity;)V

    .line 72
    .line 73
    .line 74
    iput-object p4, p0, Lcom/byazt/iym/tt;->x:Lcom/byazt/ouz/n;

    .line 75
    .line 76
    invoke-virtual {p4, p5}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    check-cast p4, Lcom/byazt/vis/c;

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/ete/ic;)Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p4, v0}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 87
    .line 88
    .line 89
    new-instance p4, Lcom/byazt/hkv/c;

    .line 90
    .line 91
    const/4 v0, 0x7

    .line 92
    invoke-direct {p4, p1, p2, p3, v0}, Lcom/byazt/hkv/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    iput-object p4, p0, Lcom/byazt/iym/tt;->i:Lcom/byazt/hkv/c;

    .line 96
    .line 97
    const-class v0, Lcom/byazt/vis/ve;

    .line 98
    .line 99
    invoke-virtual {p4, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 100
    .line 101
    .line 102
    move-result-object p4

    .line 103
    check-cast p4, Lcom/byazt/vis/ve;

    .line 104
    .line 105
    invoke-virtual {p1, p4}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/vis/ve;)V

    .line 106
    .line 107
    .line 108
    iget-object p4, p0, Lcom/byazt/iym/tt;->i:Lcom/byazt/hkv/c;

    .line 109
    .line 110
    invoke-virtual {p4, p5}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 111
    .line 112
    .line 113
    move-result-object p4

    .line 114
    check-cast p4, Lcom/byazt/vis/c;

    .line 115
    .line 116
    invoke-virtual {p1, p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/ete/ic;)Ljava/util/Map;

    .line 117
    .line 118
    .line 119
    move-result-object p5

    .line 120
    invoke-virtual {p4, p5}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Lcom/byazt/ete/ic;->i()I

    .line 124
    .line 125
    .line 126
    move-result p4

    .line 127
    const/4 p5, 0x4

    .line 128
    if-ne p4, p5, :cond_0

    .line 129
    .line 130
    invoke-static {p1, p2, p3}, Lcom/byazt/yih/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/wz/c;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    iput-object p1, p0, Lcom/byazt/iym/tt;->da:Lcom/byazt/pop/ve;

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    iget-object p2, p0, Lcom/byazt/iym/tt;->da:Lcom/byazt/pop/ve;

    .line 145
    .line 146
    new-instance p3, Lcom/byazt/iym/tt$3;

    .line 147
    .line 148
    invoke-direct {p3, p0, p1}, Lcom/byazt/iym/tt$3;-><init>(Lcom/byazt/iym/tt;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {p2, p3}, Lcom/byazt/pop/ve;->c(Lcom/byazt/pop/c;)V

    .line 152
    .line 153
    .line 154
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/iym/tt;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/iym/tt;->u:J

    return-wide p1
.end method

.method public static synthetic c(Lcom/byazt/iym/tt;)Landroid/view/ViewGroup;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/iym/tt;->sl:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/iym/tt;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/iym/tt;->t:Z

    return p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/iym/tt;->uj:Z

    .line 2
    .line 3
    return v0
.end method

.method public c()Lcom/byazt/ete/ic;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    return-object v0
.end method

.method public c(FF)V
    .locals 10

    .line 29
    invoke-virtual {p0}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    .line 30
    invoke-virtual {p0}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object v2

    invoke-static {v1, v0, p1, p2, v2}, Lcom/byazt/aas/md;->c(ILjava/lang/String;FFLcom/byazt/ete/ic;)Lcom/byazt/dj/tt;

    move-result-object v6

    .line 31
    new-instance p1, Lcom/byazt/rpt/FullRewardExpressView;

    iget-object v4, p0, Lcom/byazt/iym/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {p0}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object v5

    invoke-virtual {p0}, Lcom/byazt/iym/tt;->tt()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/byazt/rpt/FullRewardExpressView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object p1, p0, Lcom/byazt/iym/tt;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    .line 32
    invoke-virtual {p1}, Lcom/byazt/ouz/NativeExpressView;->getAdShowTime()Lcom/byazt/ddx/n;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/byazt/ddx/n;->c(Z)V

    .line 33
    iget-object p1, p0, Lcom/byazt/iym/tt;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    new-instance p2, Lcom/byazt/iym/tt$6;

    invoke-direct {p2, p0}, Lcom/byazt/iym/tt$6;-><init>(Lcom/byazt/iym/tt;)V

    invoke-virtual {p1, p2}, Lcom/byazt/ouz/NativeExpressView;->setExpressInteractionListener(Lcom/byazt/ouz/c;)V

    .line 34
    iget-object p1, p0, Lcom/byazt/iym/tt;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    invoke-virtual {p1}, Lcom/byazt/ouz/NativeExpressView;->m()V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/byazt/rpt/FullRewardExpressView;)V
    .locals 3

    .line 5
    iput-object p2, p0, Lcom/byazt/iym/tt;->sl:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/byazt/iym/tt;->c()Lcom/byazt/ete/ic;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/byazt/iym/tt;->da:Lcom/byazt/pop/ve;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 8
    invoke-interface {p2}, Lcom/byazt/pop/ve;->tt()V

    .line 9
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    instance-of p2, p2, Landroid/app/Activity;

    if-eqz p2, :cond_1

    .line 10
    iget-object p2, p0, Lcom/byazt/iym/tt;->da:Lcom/byazt/pop/ve;

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {p2, v1, v0}, Lcom/byazt/pop/ve;->c(Landroid/app/Activity;Z)V

    .line 11
    :cond_1
    iget-object p2, p0, Lcom/byazt/iym/tt;->sp:Lcom/byazt/ouz/a;

    invoke-virtual {p2, p3}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;)V

    .line 12
    iget-object p2, p0, Lcom/byazt/iym/tt;->sp:Lcom/byazt/ouz/a;

    const-class v1, Lcom/byazt/nat/c;

    invoke-virtual {p2, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p2

    check-cast p2, Lcom/byazt/nat/c;

    iget-object v2, p0, Lcom/byazt/iym/tt;->da:Lcom/byazt/pop/ve;

    invoke-virtual {p2, v2}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 13
    iget-object p2, p0, Lcom/byazt/iym/tt;->sp:Lcom/byazt/ouz/a;

    invoke-virtual {p3, p2}, Lcom/byazt/ouz/NativeExpressView;->setClickListener(Lcom/byazt/hkv/tt;)V

    .line 14
    iget-object p2, p0, Lcom/byazt/iym/tt;->x:Lcom/byazt/ouz/n;

    invoke-virtual {p2, p3}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;)V

    .line 15
    iget-object p2, p0, Lcom/byazt/iym/tt;->x:Lcom/byazt/ouz/n;

    invoke-virtual {p2, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p2

    check-cast p2, Lcom/byazt/nat/c;

    iget-object v2, p0, Lcom/byazt/iym/tt;->da:Lcom/byazt/pop/ve;

    invoke-virtual {p2, v2}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 16
    iget-object p2, p0, Lcom/byazt/iym/tt;->x:Lcom/byazt/ouz/n;

    invoke-virtual {p3, p2}, Lcom/byazt/ouz/NativeExpressView;->setClickCreativeListener(Lcom/byazt/hkv/c;)V

    .line 17
    iget-object p2, p0, Lcom/byazt/iym/tt;->i:Lcom/byazt/hkv/c;

    invoke-virtual {p2, p1}, Lcom/byazt/hkv/tt;->c(Landroid/view/View;)V

    .line 18
    iget-object p1, p0, Lcom/byazt/iym/tt;->i:Lcom/byazt/hkv/c;

    invoke-virtual {p1, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/nat/c;

    iget-object p2, p0, Lcom/byazt/iym/tt;->da:Lcom/byazt/pop/ve;

    invoke-virtual {p1, p2}, Lcom/byazt/nat/c;->c(Lcom/byazt/pop/ve;)V

    .line 19
    new-instance p1, Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/byazt/iym/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    iget-object p2, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {p2}, Lcom/byazt/ete/ic;->pa()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/byazt/ete/zb;

    invoke-static {p2}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 21
    iget-object p2, p0, Lcom/byazt/iym/tt;->sl:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c(Lcom/byazt/ouz/NativeExpressView;)V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/byazt/iym/tt;->yp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/byazt/iym/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v1, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/ete/ic;)Ljava/util/Map;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0, v1, p1}, Lcom/byazt/ouz/yv;->c(Ljava/util/Map;Lcom/byazt/ete/ic;Lcom/byazt/ouz/NativeExpressView;)V

    .line 26
    iget-object p1, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    iget-object v1, p0, Lcom/byazt/iym/tt;->ve:Ljava/lang/String;

    iget-object v2, p0, Lcom/byazt/iym/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->hd()Ljava/lang/Double;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V

    .line 27
    invoke-static {}, Lcom/byazt/pf/c;->c()Lcom/byazt/pf/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/pf/c;->uj()V

    .line 28
    iget-object p1, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->eo()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/byazt/aas/cu;->c(I)V

    :cond_1
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/byazt/iym/tt;->uj:Z

    return-void
.end method

.method public da()Lcom/byazt/jzl/a;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 3
    .line 4
    invoke-static {v0, v1}, Lcom/byazt/ete/xd;->c(ILcom/byazt/ete/ic;)Lcom/byazt/jzl/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setCid(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x64

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setWidth(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setHeight(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setLogExtra(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/byazt/iym/tt;->uj:Z

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setQuiet(Z)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method public i()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byazt/iym/tt;->z:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/iym/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/iym/tt;->i:Lcom/byazt/hkv/c;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/ete/ic;Lcom/byazt/hkv/tt;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public n()Lcom/byazt/zd/c$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/iym/tt$4;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/byazt/iym/tt$4;-><init>(Lcom/byazt/iym/tt;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public sl()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/iym/tt;->u:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public sp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/tt;->sl:Landroid/view/ViewGroup;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/iym/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->u()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public t()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/byazt/iym/tt;->m:Z

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
    iput-boolean v0, p0, Lcom/byazt/iym/tt;->m:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    if-nez v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->jl()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    const/4 v2, 0x7

    .line 20
    invoke-static {v2, v1}, Lcom/byazt/aas/md;->c(ILjava/lang/String;)Lcom/byazt/dj/tt;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/byazt/ete/xd;->z(Lcom/byazt/ete/ic;)Lcom/byazt/jzl/uj;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    iget-object v2, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 33
    .line 34
    invoke-static {v0, v2}, Lcom/byazt/ete/xd;->c(ILcom/byazt/ete/ic;)Lcom/byazt/jzl/a;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v2, "material_meta"

    .line 39
    .line 40
    iget-object v3, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 41
    .line 42
    invoke-virtual {v0, v2, v3}, Lcom/byazt/jzl/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/byazt/dj/tt;->gt()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const/4 v1, 0x0

    .line 53
    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "ad_slot"

    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, Lcom/byazt/jzl/a;->putExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lcom/byazt/iym/tt$5;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/byazt/iym/tt$5;-><init>(Lcom/byazt/iym/tt;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, v1}, Lcom/byazt/btt/ve;->c(Lcom/byazt/jzl/a;Lcom/byazt/fk/da$c;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    return-void
.end method

.method public tt(FF)Lcom/byazt/rpt/FullRewardExpressView;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/iym/tt;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/byazt/iym/tt;->c(FF)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/byazt/iym/tt;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    return-object p1
.end method

.method public tt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/tt;->ve:Ljava/lang/String;

    return-object v0
.end method

.method public tt(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v0, p1}, Lcom/byazt/ete/ic;->m(Z)V

    return-void
.end method

.method public uj()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ete/lt;->da(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/byazt/iym/tt;->t:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/ete/lt;->tt(Lcom/byazt/ete/ic;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget v1, p0, Lcom/byazt/iym/tt;->a:I

    .line 21
    .line 22
    sub-int v1, v0, v1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/ete/lt;->tt(Lcom/byazt/ete/ic;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iput v0, p0, Lcom/byazt/iym/tt;->a:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget v0, p0, Lcom/byazt/iym/tt;->a:I

    .line 34
    .line 35
    iget-object v2, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/byazt/ete/lt;->tt(Lcom/byazt/ete/ic;)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-ge v0, v2, :cond_1

    .line 42
    .line 43
    iget v0, p0, Lcom/byazt/iym/tt;->a:I

    .line 44
    .line 45
    add-int/2addr v0, v1

    .line 46
    iput v0, p0, Lcom/byazt/iym/tt;->a:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v1, 0x0

    .line 50
    :cond_2
    :goto_0
    return v1
.end method

.method public ve()Lcom/byazt/hkv/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/tt;->i:Lcom/byazt/hkv/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/tt;->da:Lcom/byazt/pop/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/pop/ve;->ve()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/iym/tt;->nu:Lcom/byazt/rpt/FullRewardExpressView;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/rpt/FullRewardExpressView;->t()V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->eo()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-static {v0}, Lcom/byazt/aas/cu;->tt(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
