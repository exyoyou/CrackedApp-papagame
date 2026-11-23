.class public Lcom/byazt/un/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/jr/c;
.implements Lcom/byazt/dh/tt;
.implements Lcom/byazt/dna/qp$c;
.implements Lcom/byazt/sgn/yp$c;
.implements Lcom/byazt/sgn/z$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x60,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/jr/c;",
        "Lcom/byazt/dh/tt<",
        "Lcom/byazt/ete/ic;",
        ">;",
        "Lcom/byazt/dna/qp$c;",
        "Lcom/byazt/sgn/yp$c;",
        "Lcom/byazt/sgn/z$tt;"
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public aw:Landroid/widget/RelativeLayout;

.field public b:Z

.field public bm:Landroid/widget/RelativeLayout;

.field public bx:Landroid/widget/TextView;

.field public c:Landroid/view/View;

.field public cu:Lcom/byazt/uz/c;

.field public d:Lcom/byazt/pop/ve;

.field public da:Landroid/view/View;

.field public eo:Lcom/byazt/dh/ve;

.field public gr:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/byazt/dh/tt$c;",
            ">;"
        }
    .end annotation
.end field

.field public gt:I

.field public gu:I

.field public h:Z

.field public hd:Landroid/widget/TextView;

.field public i:Landroid/widget/ImageView;

.field public ic:Lcom/byazt/ff/RoundImageView;

.field public kk:Lcom/byazt/ua/c$c;

.field public kp:I

.field public l:Landroid/view/View;

.field public lo:Landroid/widget/RelativeLayout;

.field public lr:Lcom/byazt/lbn/TTViewStub;

.field public lt:Landroid/widget/TextView;

.field public m:Lcom/byazt/lbn/TTViewStub;

.field public md:Lcom/byazt/un/tt;

.field public my:I

.field public n:Landroid/view/View;

.field public nb:Landroid/view/View;

.field public nu:I

.field public or:Lcom/byazt/hkv/c;

.field public final os:I

.field public final oz:I

.field public p:Lcom/byazt/sgn/z;

.field public pf:Landroid/widget/TextView;

.field public pu:Lcom/byazt/ff/RoundImageView;

.field public q:Lcom/byazt/hkv/c;

.field public qp:Z

.field public volatile qy:Z

.field public r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public rh:I

.field public rl:Z

.field public sl:Lcom/byazt/ff/RoundImageView;

.field public sp:Lcom/byazt/lbn/TTViewStub;

.field public sv:Lcom/byazt/un/NativeVideoTsView$c;

.field public t:Landroid/widget/TextView;

.field public tk:Ljava/lang/String;

.field public to:Landroid/widget/TextView;

.field public tt:Lcom/byazt/jr/tt;

.field public tx:Lcom/byazt/un/sp;

.field public u:Landroid/widget/TextView;

.field public uj:Landroid/view/View;

.field public final v:I

.field public ve:Landroid/widget/ImageView;

.field public x:Landroid/view/View;

.field public yp:Landroid/widget/TextView;

.field public yv:Landroid/content/Context;

.field public z:Lcom/byazt/ff/TTProgressBar;

.field public zb:Lcom/byazt/hkv/c;

.field public zm:Lcom/byazt/ete/ic;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/byazt/ete/ic;Lcom/byazt/dh/ve;Lcom/byazt/hkv/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/EnumSet<",
            "Lcom/byazt/dh/tt$c;",
            ">;",
            "Lcom/byazt/ete/ic;",
            "Lcom/byazt/dh/ve;",
            "Lcom/byazt/hkv/c;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v8, p7

    .line 23
    invoke-direct/range {v0 .. v8}, Lcom/byazt/un/a;-><init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/byazt/ete/ic;Lcom/byazt/dh/ve;ZLcom/byazt/hkv/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLjava/util/EnumSet;Lcom/byazt/ete/ic;Lcom/byazt/dh/ve;ZLcom/byazt/hkv/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Z",
            "Ljava/util/EnumSet<",
            "Lcom/byazt/dh/tt$c;",
            ">;",
            "Lcom/byazt/ete/ic;",
            "Lcom/byazt/dh/ve;",
            "Z",
            "Lcom/byazt/hkv/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/un/a;->rl:Z

    .line 3
    iput-boolean v0, p0, Lcom/byazt/un/a;->h:Z

    .line 4
    iput-boolean v0, p0, Lcom/byazt/un/a;->qp:Z

    .line 5
    iput v0, p0, Lcom/byazt/un/a;->v:I

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lcom/byazt/un/a;->os:I

    const/4 v0, 0x3

    .line 7
    iput v0, p0, Lcom/byazt/un/a;->oz:I

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/byazt/un/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    instance-of v0, p0, Lcom/byazt/un/n;

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    .line 11
    invoke-virtual {p0, p7}, Lcom/byazt/un/a;->uj(Z)V

    .line 12
    iput-object p2, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    .line 13
    iput-boolean p3, p0, Lcom/byazt/un/a;->rl:Z

    if-nez p4, :cond_1

    .line 14
    const-class p2, Lcom/byazt/dh/tt$c;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Lcom/byazt/un/a;->gr:Ljava/util/EnumSet;

    .line 15
    iput-object p6, p0, Lcom/byazt/un/a;->eo:Lcom/byazt/dh/ve;

    .line 16
    iput-object p8, p0, Lcom/byazt/un/a;->q:Lcom/byazt/hkv/c;

    .line 17
    iput-object p5, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 18
    invoke-direct {p0}, Lcom/byazt/un/a;->h()V

    const/16 p2, 0x8

    .line 19
    invoke-virtual {p0, p2}, Lcom/byazt/un/a;->uj(I)V

    .line 20
    iget-object p2, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p5}, Lcom/byazt/un/a;->c(Landroid/content/Context;Landroid/view/View;Lcom/byazt/ete/ic;)V

    .line 21
    invoke-virtual {p0}, Lcom/byazt/un/a;->uj()V

    .line 22
    invoke-virtual {p0}, Lcom/byazt/un/a;->m()V

    return-void
.end method

.method public static synthetic a(Lcom/byazt/un/a;)Lcom/byazt/un/sp;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/un/a;->tx:Lcom/byazt/un/sp;

    return-object p0
.end method

.method private bx()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/byazt/un/a;->h:Z

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
    iget-object v0, p0, Lcom/byazt/un/a;->da:Landroid/view/View;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 13
    .line 14
    if-nez v0, :cond_2

    .line 15
    .line 16
    return v1

    .line 17
    :cond_2
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->ir()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-ne v0, v2, :cond_3

    .line 23
    .line 24
    return v2

    .line 25
    :cond_3
    return v1
.end method

.method public static synthetic c(Lcom/byazt/un/a;)Ljava/lang/String;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/byazt/un/a;->tk:Ljava/lang/String;

    return-object p0
.end method

.method private c(Lcom/byazt/hkv/c;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    if-nez v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 10
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "click_live_element"

    const-string v2, "click_live_feed"

    .line 11
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-class v1, Lcom/byazt/vis/c;

    invoke-virtual {p1, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/vis/c;

    invoke-virtual {p1, v0}, Lcom/byazt/vis/c;->c(Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Lcom/byazt/nc/u;Lcom/byazt/hkv/c;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 16
    :cond_0
    const-class v0, Lcom/byazt/nat/c;

    invoke-virtual {p2, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/c;->c(Ljava/lang/Object;)V

    .line 17
    const-class v0, Lcom/byazt/vis/ve;

    invoke-virtual {p2, v0}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p2

    check-cast p2, Lcom/byazt/vis/ve;

    .line 18
    instance-of v0, p1, Lcom/byazt/kyz/ve;

    if-nez v0, :cond_1

    return-void

    .line 19
    :cond_1
    check-cast p1, Lcom/byazt/kyz/ve;

    invoke-virtual {p1}, Lcom/byazt/kyz/ve;->getInteractionManager()Lcom/byazt/omf/my;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 20
    :cond_2
    invoke-virtual {p1, p2}, Lcom/byazt/omf/my;->c(Lcom/byazt/vis/ve;)V

    return-void
.end method

.method private cu()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {v2}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_4

    .line 15
    .line 16
    iget-object v2, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/byazt/ete/bx;->i(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    invoke-static {v2}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v3, p0, Lcom/byazt/un/a;->ic:Lcom/byazt/ff/RoundImageView;

    .line 33
    .line 34
    invoke-interface {v2, v3}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 35
    .line 36
    .line 37
    :cond_1
    iget-object v2, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 38
    .line 39
    invoke-static {v2}, Lcom/byazt/ete/bx;->ve(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 44
    .line 45
    invoke-static {v3}, Lcom/byazt/ete/bx;->x(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_2

    .line 54
    .line 55
    iget-object v4, p0, Lcom/byazt/un/a;->hd:Landroid/widget/TextView;

    .line 56
    .line 57
    invoke-static {v4, v2}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v2, p0, Lcom/byazt/un/a;->aw:Landroid/widget/RelativeLayout;

    .line 61
    .line 62
    if-nez v2, :cond_3

    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    invoke-static {v3}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/4 v3, 0x2

    .line 70
    invoke-interface {v2, v3}, Lcom/byazt/yj/yp;->type(I)Lcom/byazt/yj/yp;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    new-instance v3, Lcom/byazt/un/a$10;

    .line 75
    .line 76
    invoke-direct {v3, p0, v0, v1}, Lcom/byazt/un/a$10;-><init>(Lcom/byazt/un/a;J)V

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x4

    .line 80
    invoke-interface {v2, v3, v0}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;I)Lcom/byazt/yj/t;

    .line 81
    .line 82
    .line 83
    :cond_4
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/un/a$1;

    .line 2
    .line 3
    const-string v1, "native_video_layout_download_listener"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/byazt/un/a$1;-><init>(Lcom/byazt/un/a;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private eo()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/byazt/ete/pu;->a(Lcom/byazt/ete/ic;)Lcom/byazt/ete/dz;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/byazt/ete/pu;->sp(Lcom/byazt/ete/ic;)Lcom/byazt/ete/ma;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->vp()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    if-ne v0, v1, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 29
    .line 30
    invoke-static {v0}, Lcom/byazt/ete/ic;->ve(Lcom/byazt/ete/ic;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    return v1

    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    return v0
.end method

.method private h()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/byazt/un/a;->kp:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "embeded_ad"

    .line 11
    .line 12
    const-string v2, "embeded_ad_landingpage"

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/byazt/un/a;->h:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    move-object v0, v1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v2

    .line 23
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iput v3, p0, Lcom/byazt/un/a;->kp:I

    .line 28
    .line 29
    iget-boolean v3, p0, Lcom/byazt/un/a;->h:Z

    .line 30
    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    const-string v3, "draw_ad"

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-eqz v3, :cond_2

    .line 40
    .line 41
    const-string v2, "draw_ad_landingpage"

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    iget-boolean v3, p0, Lcom/byazt/un/a;->h:Z

    .line 45
    .line 46
    if-nez v3, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    move-object v2, v0

    .line 56
    :goto_1
    iput-object v2, p0, Lcom/byazt/un/a;->tk:Ljava/lang/String;

    .line 57
    .line 58
    return-void
.end method

.method public static synthetic i(Lcom/byazt/un/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/un/a;->pf()V

    return-void
.end method

.method public static synthetic n(Lcom/byazt/un/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/un/a;->d()V

    return-void
.end method

.method private nb()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/un/a;->qp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/un/a;->ve:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->pe()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/un/a;->uj:Landroid/view/View;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/un/a;->n:Landroid/view/View;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/un/a;->a:Landroid/widget/ImageView;

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/a;->uj:Landroid/view/View;

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    invoke-static {v0, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/byazt/un/a;->aw:Landroid/widget/RelativeLayout;

    .line 47
    .line 48
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/byazt/un/a;->uj:Landroid/view/View;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/byazt/aas/pf;->a(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/byazt/un/a;->qp()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    .line 62
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->pe()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    iget-object v0, p0, Lcom/byazt/un/a;->n:Landroid/view/View;

    .line 73
    .line 74
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/byazt/un/a;->n:Landroid/view/View;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/byazt/aas/pf;->a(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    iget-object v0, p0, Lcom/byazt/un/a;->a:Landroid/widget/ImageView;

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_2

    .line 98
    .line 99
    iget-object v0, p0, Lcom/byazt/un/a;->a:Landroid/widget/ImageView;

    .line 100
    .line 101
    invoke-static {v0}, Lcom/byazt/aas/pf;->a(Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/byazt/un/a;->a:Landroid/widget/ImageView;

    .line 115
    .line 116
    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/byazt/un/a;->a:Landroid/widget/ImageView;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 122
    .line 123
    invoke-static {v1}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {p0, v0, v1}, Lcom/byazt/un/a;->c(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_2
    return-void
.end method

.method private or()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

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
    const-string v0, "fullscreen_interstitial_ad"

    .line 8
    .line 9
    iget-object v2, p0, Lcom/byazt/un/a;->tk:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, "rewarded_video"

    .line 18
    .line 19
    iget-object v2, p0, Lcom/byazt/un/a;->tk:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->by()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v2, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->fr()F

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/4 v3, 0x1

    .line 40
    if-ne v0, v3, :cond_2

    .line 41
    .line 42
    const/high16 v0, 0x42c80000    # 100.0f

    .line 43
    .line 44
    cmpl-float v0, v2, v0

    .line 45
    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    return v3

    .line 49
    :cond_2
    return v1
.end method

.method private pf()V
    .locals 7

    .line 1
    :try_start_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    const/16 v1, 0xd

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0xf

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/un/a;->da:Landroid/view/View;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v1, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    iget-object v2, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    .line 40
    .line 41
    const/high16 v3, 0x43480000    # 200.0f

    .line 42
    .line 43
    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iget-object v3, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    .line 48
    .line 49
    const v4, 0x43a58000    # 331.0f

    .line 50
    .line 51
    .line 52
    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iget-object v4, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    .line 57
    .line 58
    const/high16 v5, 0x42dc0000    # 110.0f

    .line 59
    .line 60
    invoke-static {v4, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    iget-object v5, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    .line 65
    .line 66
    const/high16 v6, 0x42c80000    # 100.0f

    .line 67
    .line 68
    invoke-static {v5, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-lt v0, v2, :cond_2

    .line 73
    .line 74
    if-lt v1, v3, :cond_2

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lcom/byazt/un/a;->a(I)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    if-le v0, v4, :cond_4

    .line 82
    .line 83
    if-gt v1, v5, :cond_3

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    const/4 v0, 0x3

    .line 87
    invoke-virtual {p0, v0}, Lcom/byazt/un/a;->a(I)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_4
    :goto_0
    const/4 v0, 0x2

    .line 92
    invoke-virtual {p0, v0}, Lcom/byazt/un/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method private qp()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a;->tk:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "splash_ad"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/byazt/un/a;->tk:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "cache_splash_ad"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return v0

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    return v0
.end method

.method private sp(I)I
    .locals 3

    .line 2
    iget v0, p0, Lcom/byazt/un/a;->my:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/byazt/un/a;->gt:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    const/high16 v1, 0x43640000    # 228.0f

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    const/high16 v2, 0x43200000    # 160.0f

    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    int-to-float p1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float p1, p1, v2

    .line 5
    iget v2, p0, Lcom/byazt/un/a;->my:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    .line 6
    iget v2, p0, Lcom/byazt/un/a;->gt:I

    int-to-float v2, v2

    mul-float v2, v2, p1

    float-to-int p1, v2

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-ge p1, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    return v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic sp(Lcom/byazt/un/a;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/un/a;->lo:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/un/a;)Lcom/byazt/ua/c$c;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/un/a;->kk:Lcom/byazt/ua/c$c;

    return-object p0
.end method

.method private tt(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    const p1, 0x7e06ffb0

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const v0, 0x7e06fee8

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    .line 11
    invoke-direct {p0}, Lcom/byazt/un/a;->or()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 12
    invoke-static {p1, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 13
    invoke-static {p2, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 14
    iput-object p1, p0, Lcom/byazt/un/a;->aw:Landroid/widget/RelativeLayout;

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {p2, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 16
    invoke-static {p1, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 17
    iput-object p2, p0, Lcom/byazt/un/a;->aw:Landroid/widget/RelativeLayout;

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/byazt/un/a;->aw:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const p2, 0x7e06ff77

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/byazt/ff/RoundImageView;

    iput-object p1, p0, Lcom/byazt/un/a;->ic:Lcom/byazt/ff/RoundImageView;

    .line 20
    iget-object p1, p0, Lcom/byazt/un/a;->aw:Landroid/widget/RelativeLayout;

    const p2, 0x7e06ff1e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/byazt/un/a;->hd:Landroid/widget/TextView;

    .line 21
    iget-object p1, p0, Lcom/byazt/un/a;->aw:Landroid/widget/RelativeLayout;

    const p2, 0x7e06feed

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/byazt/un/a;->bm:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private tt(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 22
    iget-object p2, p0, Lcom/byazt/un/a;->m:Lcom/byazt/lbn/TTViewStub;

    if-eqz p2, :cond_1

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/byazt/un/a;->nb:Landroid/view/View;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    iget-object p2, p0, Lcom/byazt/un/a;->m:Lcom/byazt/lbn/TTViewStub;

    invoke-virtual {p2}, Lcom/byazt/lbn/TTViewStub;->c()Landroid/view/View;

    const p2, 0x7e06feda

    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/byazt/un/a;->nb:Landroid/view/View;

    const p2, 0x7e06ff9c

    .line 26
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/byazt/un/a;->pf:Landroid/widget/TextView;

    const p2, 0x7e06ff82

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/byazt/un/a;->bx:Landroid/widget/TextView;

    :cond_1
    :goto_0
    return-void
.end method

.method private tt(Lcom/byazt/hkv/c;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/btt/c;->c(Ljava/lang/Integer;)Lcom/byazt/nc/yp;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/byazt/ouz/gu;

    if-nez v1, :cond_1

    return-void

    .line 7
    :cond_1
    const-class v1, Lcom/byazt/vis/ve;

    invoke-virtual {p1, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/vis/ve;

    .line 8
    check-cast v0, Lcom/byazt/ouz/gu;

    invoke-virtual {v0, p1}, Lcom/byazt/ouz/gu;->setAdShowCallBack(Lcom/byazt/vis/ve;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic uj(Lcom/byazt/un/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/un/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/un/a;)Lcom/byazt/un/NativeVideoTsView$c;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/un/a;->sv:Lcom/byazt/un/NativeVideoTsView$c;

    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/un/a;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/un/a;->aw:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private x(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/un/a;->da:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/byazt/un/a;->nb:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    return-void
.end method

.method private zb()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Lcom/byazt/un/a$8;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Lcom/byazt/un/a$8;-><init>(Lcom/byazt/un/a;Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    .line 18
    .line 19
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    check-cast v1, Landroid/view/ViewGroup;

    .line 24
    .line 25
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(I)V
    .locals 10

    .line 3
    iget-object v0, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/high16 v0, 0x41a00000    # 20.0f

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/high16 v3, 0x41000000    # 8.0f

    const/16 v4, 0xe

    const/4 v5, -0x2

    if-ne p1, v1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    const/high16 v6, 0x428e0000    # 71.0f

    invoke-static {p1, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result p1

    .line 5
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 6
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 7
    iget-object p1, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object p1, p0, Lcom/byazt/un/a;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 10
    iget-object v6, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v6, v7}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v6

    iput v6, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 11
    iget-object v6, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v6

    iput v6, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 12
    iget-object v6, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v6

    iput v6, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 13
    iget-object v6, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    invoke-static {v6, v7}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v6

    iput v6, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 14
    iget-object v6, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {p1, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 15
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 16
    iget-object v6, p0, Lcom/byazt/un/a;->u:Landroid/widget/TextView;

    invoke-virtual {v6, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    iget-object p1, p0, Lcom/byazt/un/a;->u:Landroid/widget/TextView;

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 18
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    const/high16 v7, 0x42000000    # 32.0f

    invoke-static {v6, v7}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {p1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 19
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 20
    iget-object v4, p0, Lcom/byazt/un/a;->u:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 21
    iget-object v2, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 22
    iget-object v2, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 23
    iget-object v0, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v2, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    iget-object v5, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    const/high16 v6, 0x40e00000    # 7.0f

    invoke-static {v5, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v5

    iget-object v6, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    iget-object v6, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v5, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 24
    iget-object v0, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object p1, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 26
    iget-object p1, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 27
    iget-object p1, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-void

    :cond_0
    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    .line 28
    iget-object p1, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {p1, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result p1

    .line 29
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 30
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 31
    iget-object p1, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object p1, p0, Lcom/byazt/un/a;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 34
    iget-object v0, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 35
    iget-object v0, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 36
    iget-object v0, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 37
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 38
    iget-object v0, p0, Lcom/byazt/un/a;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object p1, p0, Lcom/byazt/un/a;->u:Landroid/widget/TextView;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40
    iget-object p1, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    return-void

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    const/high16 v6, 0x42440000    # 49.0f

    invoke-static {p1, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result p1

    .line 42
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, p1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43
    invoke-virtual {v6, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 44
    iget-object p1, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object p1, p0, Lcom/byazt/un/a;->t:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 47
    iget-object v6, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v6

    iput v6, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 48
    iget-object v6, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    invoke-static {v6, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    iput v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 49
    iget-object v3, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 50
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 51
    iget-object v3, p0, Lcom/byazt/un/a;->u:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object p1, p0, Lcom/byazt/un/a;->u:Landroid/widget/TextView;

    const/high16 v3, 0x41500000    # 13.0f

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 53
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    const/high16 v6, 0x41e00000    # 28.0f

    invoke-static {v4, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {p1, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 54
    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    iget-object v4, p0, Lcom/byazt/un/a;->u:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 56
    iget-object v2, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v0

    .line 57
    iget-object v2, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    const/high16 v4, 0x41c80000    # 25.0f

    invoke-static {v2, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    .line 58
    iget-object v4, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v4, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    .line 59
    iget-object v5, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 60
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 61
    iget-object v7, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 62
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v7, ""

    .line 63
    :cond_2
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 64
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, v8, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 65
    iget-object v5, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 66
    iget-object v3, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/lit8 v5, v2, 0x2

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v5, v7

    if-le v3, v5, :cond_3

    iget-object v3, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/lit8 v5, v4, 0x2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    add-int/2addr v5, v6

    if-le v3, v5, :cond_3

    .line 67
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 68
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 69
    iget-object v0, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v3, v5}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v2, v3, v2, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 71
    iget-object v0, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 72
    iget-object v0, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, 0x0

    .line 73
    iget-boolean v1, p0, Lcom/byazt/un/a;->rl:Z

    invoke-virtual {p0, v0, v1}, Lcom/byazt/un/a;->c(ZZ)V

    .line 74
    invoke-virtual {p0}, Lcom/byazt/un/a;->zm()V

    return-void
.end method

.method public c(I)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/byazt/un/a;->bm:Landroid/widget/RelativeLayout;

    invoke-static {v0, p1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    return-void
.end method

.method public c(II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 67
    iget-object p1, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    invoke-static {p1}, Lcom/byazt/aas/pf;->uj(Landroid/content/Context;)I

    move-result p1

    :cond_0
    if-gtz p1, :cond_1

    return-void

    .line 68
    :cond_1
    iput p1, p0, Lcom/byazt/un/a;->nu:I

    .line 69
    invoke-virtual {p0}, Lcom/byazt/un/a;->sl()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/byazt/un/a;->da()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/byazt/un/a;->gr:Ljava/util/EnumSet;

    sget-object v1, Lcom/byazt/dh/tt$c;->uj:Lcom/byazt/dh/tt$c;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 70
    :cond_2
    invoke-direct {p0, p1}, Lcom/byazt/un/a;->sp(I)I

    move-result p1

    iput p1, p0, Lcom/byazt/un/a;->rh:I

    goto :goto_1

    .line 71
    :cond_3
    :goto_0
    iput p2, p0, Lcom/byazt/un/a;->rh:I

    .line 72
    :goto_1
    iget p1, p0, Lcom/byazt/un/a;->nu:I

    iget p2, p0, Lcom/byazt/un/a;->rh:I

    invoke-virtual {p0, p1, p2}, Lcom/byazt/un/a;->tt(II)V

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(JJ)V
    .locals 0

    .line 2
    return-void
.end method

.method public c(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 48
    iget-object p1, p0, Lcom/byazt/un/a;->lr:Lcom/byazt/lbn/TTViewStub;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/byazt/un/a;->l:Landroid/view/View;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/byazt/un/a;->lr:Lcom/byazt/lbn/TTViewStub;

    invoke-virtual {p1}, Lcom/byazt/lbn/TTViewStub;->c()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/un/a;->l:Landroid/view/View;

    const p1, 0x7e06fff1

    .line 50
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/byazt/un/a;->lo:Landroid/widget/RelativeLayout;

    const p1, 0x7e06fff6

    .line 51
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/byazt/ff/RoundImageView;

    iput-object p1, p0, Lcom/byazt/un/a;->pu:Lcom/byazt/ff/RoundImageView;

    const p1, 0x7e06ffd6

    .line 52
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/byazt/un/a;->lt:Landroid/widget/TextView;

    const p1, 0x7e06ffa5

    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/byazt/un/a;->to:Landroid/widget/TextView;

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Landroid/content/Context;Landroid/view/View;Lcom/byazt/ete/ic;)V
    .locals 4

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 22
    invoke-virtual {p2, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 23
    :cond_0
    invoke-static {p3}, Lcom/byazt/ic/c;->tt(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    new-instance v0, Lcom/byazt/kft/TTLottieVideoContainer;

    iget-object v1, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/byazt/kft/TTLottieVideoContainer;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 25
    :cond_1
    invoke-static {p3}, Lcom/byazt/ic/c;->ve(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    new-instance v0, Lcom/byazt/kft/UpieVideoView;

    invoke-static {p3}, Lcom/byazt/ic/c;->i(Lcom/byazt/ete/ic;)Lcom/byazt/cph/c;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/byazt/kft/UpieVideoView;-><init>(Landroid/content/Context;Lcom/byazt/cph/c;)V

    goto :goto_0

    .line 27
    :cond_2
    new-instance v0, Lcom/byazt/jr/SSRenderTextureView;

    iget-object v1, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/byazt/jr/SSRenderTextureView;-><init>(Landroid/content/Context;)V

    .line 28
    :goto_0
    instance-of v1, p2, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_4

    .line 29
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 30
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 31
    move-object v2, p2

    check-cast v2, Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-direct {p0}, Lcom/byazt/un/a;->qp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 33
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_3
    const/high16 v1, -0x1000000

    .line 34
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    :goto_1
    const/16 v1, 0x8

    .line 35
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 36
    iput-object v0, p0, Lcom/byazt/un/a;->tt:Lcom/byazt/jr/tt;

    const v0, 0x7e06feaa

    .line 37
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/byazt/un/a;->ve:Landroid/widget/ImageView;

    const v0, 0x7e06fec5

    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/ff/TTProgressBar;

    iput-object v0, p0, Lcom/byazt/un/a;->z:Lcom/byazt/ff/TTProgressBar;

    const v0, 0x7e06ffbc    # 4.48611E37f

    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/un/a;->uj:Landroid/view/View;

    const v0, 0x7e06feaf

    .line 40
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/un/a;->n:Landroid/view/View;

    const v0, 0x7e06fec3

    .line 41
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/byazt/un/a;->a:Landroid/widget/ImageView;

    const v0, 0x7e06ff20

    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/lbn/TTViewStub;

    iput-object v0, p0, Lcom/byazt/un/a;->sp:Lcom/byazt/lbn/TTViewStub;

    const v0, 0x7e06fed2

    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/lbn/TTViewStub;

    iput-object v0, p0, Lcom/byazt/un/a;->lr:Lcom/byazt/lbn/TTViewStub;

    const v0, 0x7e06ff74

    .line 44
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/byazt/lbn/TTViewStub;

    iput-object v0, p0, Lcom/byazt/un/a;->m:Lcom/byazt/lbn/TTViewStub;

    .line 45
    invoke-static {p3}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/byazt/un/a;->tt(Landroid/content/Context;Landroid/view/View;)V

    .line 47
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method

.method public c(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const/4 p2, 0x1

    .line 155
    iput-boolean p2, p0, Lcom/byazt/un/a;->qy:Z

    .line 156
    invoke-virtual {p0}, Lcom/byazt/un/a;->rl()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 157
    iget-object p2, p0, Lcom/byazt/un/a;->md:Lcom/byazt/un/tt;

    invoke-interface {p2, p0, p1}, Lcom/byazt/dh/c;->c(Lcom/byazt/dh/tt;Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;Landroid/content/Context;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 54
    iget-object p2, p0, Lcom/byazt/un/a;->sp:Lcom/byazt/lbn/TTViewStub;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/byazt/un/a;->x:Landroid/view/View;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    iget-object p2, p0, Lcom/byazt/un/a;->sp:Lcom/byazt/lbn/TTViewStub;

    invoke-virtual {p2}, Lcom/byazt/lbn/TTViewStub;->c()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/byazt/un/a;->x:Landroid/view/View;

    .line 56
    iget-object p2, p0, Lcom/byazt/un/a;->sp:Lcom/byazt/lbn/TTViewStub;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/byazt/lbn/TTViewStub;->setVisibility(I)V

    const p2, 0x7e06ff5c

    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/byazt/un/a;->i:Landroid/widget/ImageView;

    const p2, 0x7e06fff9

    .line 58
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/byazt/un/a;->da:Landroid/view/View;

    const p2, 0x7e06fed0

    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/byazt/ff/RoundImageView;

    iput-object p2, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    const p2, 0x7e06fff5

    .line 60
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/byazt/un/a;->t:Landroid/widget/TextView;

    const p2, 0x7e06ff34

    .line 61
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/byazt/un/a;->u:Landroid/widget/TextView;

    const p2, 0x7e06fee6

    .line 62
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Landroid/view/View;Z)V
    .locals 0

    .line 3
    return-void
.end method

.method public c(Landroid/view/ViewGroup;)V
    .locals 0

    .line 4
    return-void
.end method

.method public c(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ic/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ic/c;->sp(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-static {p2}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object p2

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 78
    invoke-interface {p2, v0}, Lcom/byazt/yj/yp;->config(Landroid/graphics/Bitmap$Config;)Lcom/byazt/yj/yp;

    move-result-object p2

    const/4 v0, 0x2

    .line 79
    invoke-interface {p2, v0}, Lcom/byazt/yj/yp;->type(I)Lcom/byazt/yj/yp;

    move-result-object p2

    new-instance v0, Lcom/byazt/un/a$12;

    invoke-direct {v0, p0, p1}, Lcom/byazt/un/a$12;-><init>(Lcom/byazt/un/a;Landroid/widget/ImageView;)V

    const/4 p1, 0x4

    .line 80
    invoke-interface {p2, v0, p1}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;I)Lcom/byazt/yj/t;

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/dh/c;)V
    .locals 1

    .line 64
    instance-of v0, p1, Lcom/byazt/un/tt;

    if-eqz v0, :cond_0

    .line 65
    check-cast p1, Lcom/byazt/un/tt;

    iput-object p1, p0, Lcom/byazt/un/a;->md:Lcom/byazt/un/tt;

    .line 66
    invoke-virtual {p0}, Lcom/byazt/un/a;->my()V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;Ljava/lang/ref/WeakReference;Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/ete/ic;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_17

    .line 81
    invoke-direct {p0}, Lcom/byazt/un/a;->qp()Z

    move-result p2

    if-eqz p2, :cond_0

    goto/16 :goto_4

    .line 82
    :cond_0
    iget-boolean p2, p0, Lcom/byazt/un/a;->rl:Z

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p2}, Lcom/byazt/un/a;->c(ZZ)V

    .line 83
    invoke-static {p1}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 84
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/byazt/un/a;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 85
    invoke-virtual {p0}, Lcom/byazt/un/a;->rh()V

    return-void

    .line 86
    :cond_1
    iget-object p2, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/byazt/un/a;->c(Landroid/view/View;Landroid/content/Context;)V

    .line 87
    iget-object p2, p0, Lcom/byazt/un/a;->x:Landroid/view/View;

    if-eqz p2, :cond_2

    .line 88
    invoke-static {p2, p3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 89
    :cond_2
    iget-object p2, p0, Lcom/byazt/un/a;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    .line 90
    invoke-static {p2, p3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 91
    :cond_3
    iget-object p2, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/aas/nb;->ve(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 92
    iget-object p2, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/byazt/un/a;->tt(Landroid/view/View;Landroid/content/Context;)V

    .line 93
    iget-object p2, p0, Lcom/byazt/un/a;->da:Landroid/view/View;

    const/16 v0, 0x8

    invoke-static {p2, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 94
    iget-object p2, p0, Lcom/byazt/un/a;->i:Landroid/widget/ImageView;

    invoke-static {p2, p3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 95
    iget-object p2, p0, Lcom/byazt/un/a;->nb:Landroid/view/View;

    invoke-static {p2, p3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 96
    iget-object p2, p0, Lcom/byazt/un/a;->pf:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 97
    iget-object p2, p0, Lcom/byazt/un/a;->bx:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 98
    iget-object p2, p0, Lcom/byazt/un/a;->bx:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result p2

    if-nez p2, :cond_4

    .line 99
    iget-object p2, p0, Lcom/byazt/un/a;->bx:Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 100
    :cond_4
    iget-object p2, p0, Lcom/byazt/un/a;->x:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 101
    new-instance v0, Lcom/byazt/un/a$2;

    invoke-direct {v0, p0}, Lcom/byazt/un/a$2;-><init>(Lcom/byazt/un/a;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    :cond_5
    iget-object p2, p0, Lcom/byazt/un/a;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 103
    invoke-static {p1}, Lcom/byazt/ic/c;->tt(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 104
    iget-object p2, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/un/a;->i:Landroid/widget/ImageView;

    invoke-interface {p2, v0}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 105
    iget-object p2, p0, Lcom/byazt/un/a;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/byazt/un/a;->c(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_6
    iget-object p2, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/ete/xd;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/byazt/un/a$3;

    invoke-direct {v0, p0}, Lcom/byazt/un/a$3;-><init>(Lcom/byazt/un/a;)V

    const-wide/32 v1, 0x7fffffff

    invoke-static {v1, v2, p2, v0}, Lcom/byazt/vv/tt;->c(JLjava/lang/String;Lcom/byazt/vv/tt$tt;)V

    goto :goto_0

    .line 107
    :cond_7
    iget-object p2, p0, Lcom/byazt/un/a;->da:Landroid/view/View;

    invoke-static {p2, p3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 108
    iget-object p2, p0, Lcom/byazt/un/a;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    .line 109
    iget-object p2, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    invoke-static {p2}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    move-result-object p2

    iget-object v0, p0, Lcom/byazt/un/a;->i:Landroid/widget/ImageView;

    invoke-interface {p2, v0}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 110
    iget-object p2, p0, Lcom/byazt/un/a;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/byazt/un/a;->c(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 111
    :cond_8
    invoke-direct {p0}, Lcom/byazt/un/a;->bx()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 112
    iget-object p2, p0, Lcom/byazt/un/a;->da:Landroid/view/View;

    new-instance v0, Lcom/byazt/un/a$4;

    invoke-direct {v0, p0}, Lcom/byazt/un/a$4;-><init>(Lcom/byazt/un/a;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 113
    :cond_9
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->an()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 114
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->an()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 115
    :cond_a
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 116
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->v_()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 117
    :cond_b
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->op()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 118
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->op()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_c
    const-string p2, ""

    .line 119
    :goto_1
    iget-object v0, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    const/4 v1, 0x4

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/zb;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 120
    iget-object v0, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    invoke-static {v0, p3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 121
    iget-object v0, p0, Lcom/byazt/un/a;->t:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 122
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->te()Lcom/byazt/ete/zb;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Lcom/byazt/ete/zb;)Lcom/byazt/yj/yp;

    move-result-object v0

    iget-object v2, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    invoke-interface {v0, v2}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 123
    invoke-direct {p0}, Lcom/byazt/un/a;->eo()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 124
    iget-object v0, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    iget-object v2, p0, Lcom/byazt/un/a;->or:Lcom/byazt/hkv/c;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    iget-object v2, p0, Lcom/byazt/un/a;->or:Lcom/byazt/hkv/c;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 126
    :cond_d
    iget-object v0, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    iget-object v2, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    iget-object v2, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 128
    :cond_e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 129
    iget-object v0, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 130
    iget-object v0, p0, Lcom/byazt/un/a;->t:Landroid/widget/TextView;

    invoke-static {v0, p3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 131
    iget-object v0, p0, Lcom/byazt/un/a;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    const/4 v2, 0x1

    .line 132
    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-direct {p0}, Lcom/byazt/un/a;->eo()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 134
    iget-object v0, p0, Lcom/byazt/un/a;->t:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/byazt/un/a;->or:Lcom/byazt/hkv/c;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/byazt/un/a;->t:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/byazt/un/a;->or:Lcom/byazt/hkv/c;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_2

    .line 136
    :cond_f
    iget-object v0, p0, Lcom/byazt/un/a;->t:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/byazt/un/a;->t:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 138
    :cond_10
    :goto_2
    iget-object v0, p0, Lcom/byazt/un/a;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 139
    iget-object v0, p0, Lcom/byazt/un/a;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :cond_11
    iget-object p2, p0, Lcom/byazt/un/a;->u:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 141
    iget-object p2, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    invoke-static {p2, p3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 142
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->tj()Ljava/lang/String;

    move-result-object p2

    .line 143
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 144
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->i()I

    move-result p1

    if-eq p1, v1, :cond_13

    const/4 p2, 0x5

    if-eq p1, p2, :cond_12

    const-string p2, "\u67e5\u770b\u8be6\u60c5"

    goto :goto_3

    :cond_12
    const-string p2, "\u7acb\u5373\u62e8\u6253"

    goto :goto_3

    :cond_13
    const-string p2, "\u7acb\u5373\u4e0b\u8f7d"

    .line 145
    :cond_14
    :goto_3
    iget-object p1, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    if-eqz p1, :cond_15

    .line 146
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p1, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object p1, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    :cond_15
    iget-object p1, p0, Lcom/byazt/un/a;->pf:Landroid/widget/TextView;

    if-eqz p1, :cond_16

    .line 150
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p1, p0, Lcom/byazt/un/a;->pf:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object p1, p0, Lcom/byazt/un/a;->pf:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 153
    :cond_16
    iget-boolean p1, p0, Lcom/byazt/un/a;->qp:Z

    if-nez p1, :cond_17

    .line 154
    invoke-direct {p0, v1}, Lcom/byazt/un/a;->x(I)V

    :cond_17
    :goto_4
    return-void
.end method

.method public c(Lcom/byazt/nc/u;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    invoke-direct {p0, p1, v0}, Lcom/byazt/un/a;->c(Lcom/byazt/nc/u;Lcom/byazt/hkv/c;)V

    .line 15
    iget-object v0, p0, Lcom/byazt/un/a;->or:Lcom/byazt/hkv/c;

    invoke-direct {p0, p1, v0}, Lcom/byazt/un/a;->c(Lcom/byazt/nc/u;Lcom/byazt/hkv/c;)V

    return-void
.end method

.method public c(Lcom/byazt/ua/c$c;)V
    .locals 1

    .line 172
    iput-object p1, p0, Lcom/byazt/un/a;->kk:Lcom/byazt/ua/c$c;

    .line 173
    iget-object v0, p0, Lcom/byazt/un/a;->d:Lcom/byazt/pop/ve;

    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p1}, Lcom/byazt/pop/ve;->c(Lcom/byazt/ua/c$c;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/un/NativeVideoTsView$c;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/byazt/un/a;->sv:Lcom/byazt/un/NativeVideoTsView$c;

    return-void
.end method

.method public c(Lcom/byazt/uz/c;)V
    .locals 2

    .line 166
    iput-object p1, p0, Lcom/byazt/un/a;->cu:Lcom/byazt/uz/c;

    .line 167
    iget-object v0, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    if-eqz v0, :cond_0

    .line 168
    const-class v1, Lcom/byazt/nat/c;

    invoke-virtual {v0, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object v0

    check-cast v0, Lcom/byazt/nat/c;

    invoke-virtual {v0, p1}, Lcom/byazt/nat/c;->c(Lcom/byazt/uz/c;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic c(Ljava/lang/Object;Ljava/lang/ref/WeakReference;Z)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 7
    check-cast p1, Lcom/byazt/ete/ic;

    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/un/a;->c(Lcom/byazt/ete/ic;Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 5
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 75
    iput-boolean p1, p0, Lcom/byazt/un/a;->qp:Z

    return-void
.end method

.method public c(ZZ)V
    .locals 1

    .line 164
    iget-object p2, p0, Lcom/byazt/un/a;->z:Lcom/byazt/ff/TTProgressBar;

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-static {p2, p1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 165
    iget-object p1, p0, Lcom/byazt/un/a;->ve:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    return-void
.end method

.method public c(ZZZ)V
    .locals 1

    .line 161
    iget-object p2, p0, Lcom/byazt/un/a;->z:Lcom/byazt/ff/TTProgressBar;

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 162
    iget-object p2, p0, Lcom/byazt/un/a;->uj:Landroid/view/View;

    invoke-static {p2}, Lcom/byazt/aas/pf;->uj(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/byazt/un/a;->aw:Landroid/widget/RelativeLayout;

    invoke-static {p2}, Lcom/byazt/aas/pf;->uj(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 163
    :goto_0
    iget-object v0, p0, Lcom/byazt/un/a;->ve:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p3, 0x8

    :goto_1
    invoke-static {v0, p3}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    return-void
.end method

.method public c(ILcom/byazt/jzl/uj;Z)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/byazt/un/a;->p:Lcom/byazt/sgn/z;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Lcom/byazt/sgn/z;->c(ILcom/byazt/jzl/uj;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public c(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/byazt/un/a;->qy:Z

    .line 159
    invoke-virtual {p0}, Lcom/byazt/un/a;->rl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/byazt/un/a;->md:Lcom/byazt/un/tt;

    invoke-interface {v0, p0, p1}, Lcom/byazt/dh/c;->tt(Lcom/byazt/dh/tt;Landroid/graphics/SurfaceTexture;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public da()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public gr()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/un/a;->tt:Lcom/byazt/jr/tt;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/byazt/jr/tt;->getView()Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v2, 0x8

    .line 16
    .line 17
    invoke-static {v0, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public gt()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a;->p:Lcom/byazt/sgn/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/byazt/sgn/z;->c(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public gu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/byazt/un/a;->qy()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/a;->aw:Landroid/widget/RelativeLayout;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/un/a;->uj:Landroid/view/View;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/byazt/aas/pf;->a(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/un/a;->n:Landroid/view/View;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/byazt/aas/pf;->a(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/byazt/un/a;->ve:Landroid/widget/ImageView;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/un/a;->ve:Landroid/widget/ImageView;

    .line 41
    .line 42
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/un/a;->z:Lcom/byazt/ff/TTProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4
    iget-object v0, p0, Lcom/byazt/un/a;->z:Lcom/byazt/ff/TTProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_0
    const/16 v0, 0x8

    .line 5
    invoke-virtual {p0, v0}, Lcom/byazt/un/a;->uj(I)V

    .line 6
    invoke-virtual {p0}, Lcom/byazt/un/a;->md()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/byazt/un/a;->tt:Lcom/byazt/jr/tt;

    invoke-interface {v1, v0}, Lcom/byazt/jr/tt;->setVisibility(I)V

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/byazt/un/a;->a:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object v1, p0, Lcom/byazt/un/a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/byazt/un/a;->i:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object v1, p0, Lcom/byazt/un/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_3
    invoke-virtual {p0, v0}, Lcom/byazt/un/a;->uj(I)V

    .line 15
    iget-object v1, p0, Lcom/byazt/un/a;->x:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 16
    iget-object v1, p0, Lcom/byazt/un/a;->i:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 17
    iget-object v1, p0, Lcom/byazt/un/a;->da:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 18
    iget-object v1, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    invoke-static {v1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 19
    iget-object v1, p0, Lcom/byazt/un/a;->t:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 20
    iget-object v1, p0, Lcom/byazt/un/a;->u:Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 21
    iget-object v1, p0, Lcom/byazt/un/a;->l:Landroid/view/View;

    invoke-static {v1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 22
    iget-object v1, p0, Lcom/byazt/un/a;->lo:Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 23
    iget-object v0, p0, Lcom/byazt/un/a;->p:Lcom/byazt/sgn/z;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/sgn/z;->c(Z)V

    :cond_4
    return-void
.end method

.method public m()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/byazt/un/a;->h()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const-class v1, Lcom/byazt/nat/c$c;

    .line 11
    .line 12
    const-class v2, Lcom/byazt/nat/c;

    .line 13
    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/un/a;->q:Lcom/byazt/hkv/c;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iput-object v0, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/byazt/hkv/c;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 28
    .line 29
    iget-object v5, p0, Lcom/byazt/un/a;->tk:Ljava/lang/String;

    .line 30
    .line 31
    iget v6, p0, Lcom/byazt/un/a;->kp:I

    .line 32
    .line 33
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/byazt/hkv/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    .line 37
    .line 38
    :goto_0
    new-instance v0, Lcom/byazt/un/a$5;

    .line 39
    .line 40
    invoke-direct {v0, p0}, Lcom/byazt/un/a$5;-><init>(Lcom/byazt/un/a;)V

    .line 41
    .line 42
    .line 43
    iget-object v3, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    .line 44
    .line 45
    invoke-virtual {v3, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/byazt/nat/c;

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Lcom/byazt/nat/c;->c(Lcom/byazt/nat/c$c;)V

    .line 52
    .line 53
    .line 54
    iget-object v2, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 55
    .line 56
    if-eqz v2, :cond_1

    .line 57
    .line 58
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2, v0, v1}, Lcom/byazt/omf/rl;->tt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    iget-object v0, p0, Lcom/byazt/un/a;->q:Lcom/byazt/hkv/c;

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    iget-object v0, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget-object v1, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-object v0, p0, Lcom/byazt/un/a;->bm:Landroid/widget/RelativeLayout;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/byazt/aas/pf;->uj(Landroid/view/View;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    iget-object v0, p0, Lcom/byazt/un/a;->bm:Landroid/widget/RelativeLayout;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/byazt/un/a;->bm:Landroid/widget/RelativeLayout;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    .line 106
    .line 107
    :cond_3
    return-void

    .line 108
    :cond_4
    invoke-direct {p0}, Lcom/byazt/un/a;->zb()V

    .line 109
    .line 110
    .line 111
    new-instance v0, Lcom/byazt/hkv/c;

    .line 112
    .line 113
    iget-object v3, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    .line 114
    .line 115
    iget-object v4, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 116
    .line 117
    iget-object v5, p0, Lcom/byazt/un/a;->tk:Ljava/lang/String;

    .line 118
    .line 119
    iget v6, p0, Lcom/byazt/un/a;->kp:I

    .line 120
    .line 121
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/byazt/hkv/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 122
    .line 123
    .line 124
    iput-object v0, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Lcom/byazt/nat/c;

    .line 131
    .line 132
    const/4 v3, 0x1

    .line 133
    invoke-virtual {v0, v3}, Lcom/byazt/nat/c;->tt(Z)V

    .line 134
    .line 135
    .line 136
    new-instance v0, Lcom/byazt/un/a$6;

    .line 137
    .line 138
    invoke-direct {v0, p0}, Lcom/byazt/un/a$6;-><init>(Lcom/byazt/un/a;)V

    .line 139
    .line 140
    .line 141
    iget-object v4, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    .line 142
    .line 143
    invoke-virtual {v4, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    check-cast v4, Lcom/byazt/nat/c;

    .line 148
    .line 149
    invoke-virtual {v4, v0}, Lcom/byazt/nat/c;->c(Lcom/byazt/nat/c$c;)V

    .line 150
    .line 151
    .line 152
    iget-object v4, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 153
    .line 154
    if-eqz v4, :cond_5

    .line 155
    .line 156
    invoke-virtual {v4}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-static {v4, v0, v1}, Lcom/byazt/omf/rl;->tt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    iget-object v0, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    .line 164
    .line 165
    invoke-direct {p0, v0}, Lcom/byazt/un/a;->tt(Lcom/byazt/hkv/c;)V

    .line 166
    .line 167
    .line 168
    iget-boolean v0, p0, Lcom/byazt/un/a;->h:Z

    .line 169
    .line 170
    const/4 v4, 0x0

    .line 171
    if-eqz v0, :cond_6

    .line 172
    .line 173
    iget-object v0, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    .line 174
    .line 175
    invoke-virtual {v0, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Lcom/byazt/nat/c;

    .line 180
    .line 181
    invoke-virtual {v0, v3}, Lcom/byazt/nat/c;->ve(Z)V

    .line 182
    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_6
    iget-object v0, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    .line 186
    .line 187
    invoke-virtual {v0, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Lcom/byazt/nat/c;

    .line 192
    .line 193
    invoke-virtual {v0, v4}, Lcom/byazt/nat/c;->ve(Z)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    .line 197
    .line 198
    invoke-virtual {v0, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    check-cast v0, Lcom/byazt/nat/c;

    .line 203
    .line 204
    invoke-virtual {v0, v3}, Lcom/byazt/nat/c;->c(Z)V

    .line 205
    .line 206
    .line 207
    :goto_1
    invoke-direct {p0}, Lcom/byazt/un/a;->eo()Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-eqz v0, :cond_9

    .line 212
    .line 213
    new-instance v0, Lcom/byazt/hkv/c;

    .line 214
    .line 215
    iget-object v5, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    .line 216
    .line 217
    iget-object v6, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 218
    .line 219
    iget-object v7, p0, Lcom/byazt/un/a;->tk:Ljava/lang/String;

    .line 220
    .line 221
    iget v8, p0, Lcom/byazt/un/a;->kp:I

    .line 222
    .line 223
    invoke-direct {v0, v5, v6, v7, v8}, Lcom/byazt/hkv/c;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    iput-object v0, p0, Lcom/byazt/un/a;->or:Lcom/byazt/hkv/c;

    .line 227
    .line 228
    invoke-direct {p0, v0}, Lcom/byazt/un/a;->tt(Lcom/byazt/hkv/c;)V

    .line 229
    .line 230
    .line 231
    new-instance v0, Lcom/byazt/un/sp;

    .line 232
    .line 233
    invoke-direct {v0, p0}, Lcom/byazt/un/sp;-><init>(Lcom/byazt/un/a;)V

    .line 234
    .line 235
    .line 236
    iput-object v0, p0, Lcom/byazt/un/a;->tx:Lcom/byazt/un/sp;

    .line 237
    .line 238
    iget-object v0, p0, Lcom/byazt/un/a;->or:Lcom/byazt/hkv/c;

    .line 239
    .line 240
    invoke-virtual {v0, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    check-cast v0, Lcom/byazt/nat/c;

    .line 245
    .line 246
    invoke-virtual {v0, v3}, Lcom/byazt/nat/c;->tt(Z)V

    .line 247
    .line 248
    .line 249
    new-instance v0, Lcom/byazt/un/a$7;

    .line 250
    .line 251
    invoke-direct {v0, p0}, Lcom/byazt/un/a$7;-><init>(Lcom/byazt/un/a;)V

    .line 252
    .line 253
    .line 254
    iget-object v5, p0, Lcom/byazt/un/a;->or:Lcom/byazt/hkv/c;

    .line 255
    .line 256
    invoke-virtual {v5, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    check-cast v5, Lcom/byazt/nat/c;

    .line 261
    .line 262
    invoke-virtual {v5, v0}, Lcom/byazt/nat/c;->c(Lcom/byazt/nat/c$c;)V

    .line 263
    .line 264
    .line 265
    iget-object v5, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 266
    .line 267
    if-eqz v5, :cond_7

    .line 268
    .line 269
    invoke-virtual {v5}, Lcom/byazt/ete/ic;->lw()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    invoke-static {v5, v0, v1}, Lcom/byazt/omf/rl;->tt(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 274
    .line 275
    .line 276
    :cond_7
    iget-boolean v0, p0, Lcom/byazt/un/a;->h:Z

    .line 277
    .line 278
    if-eqz v0, :cond_8

    .line 279
    .line 280
    iget-object v0, p0, Lcom/byazt/un/a;->or:Lcom/byazt/hkv/c;

    .line 281
    .line 282
    invoke-virtual {v0, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    check-cast v0, Lcom/byazt/nat/c;

    .line 287
    .line 288
    invoke-virtual {v0, v3}, Lcom/byazt/nat/c;->ve(Z)V

    .line 289
    .line 290
    .line 291
    goto :goto_2

    .line 292
    :cond_8
    iget-object v0, p0, Lcom/byazt/un/a;->or:Lcom/byazt/hkv/c;

    .line 293
    .line 294
    invoke-virtual {v0, v2}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    .line 295
    .line 296
    .line 297
    move-result-object v0

    .line 298
    check-cast v0, Lcom/byazt/nat/c;

    .line 299
    .line 300
    invoke-virtual {v0, v4}, Lcom/byazt/nat/c;->ve(Z)V

    .line 301
    .line 302
    .line 303
    :goto_2
    iget-object v0, p0, Lcom/byazt/un/a;->or:Lcom/byazt/hkv/c;

    .line 304
    .line 305
    invoke-direct {p0, v0}, Lcom/byazt/un/a;->c(Lcom/byazt/hkv/c;)V

    .line 306
    .line 307
    .line 308
    iget-object v0, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    .line 309
    .line 310
    if-eqz v0, :cond_9

    .line 311
    .line 312
    iget-object v1, p0, Lcom/byazt/un/a;->or:Lcom/byazt/hkv/c;

    .line 313
    .line 314
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    .line 316
    .line 317
    iget-object v0, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    .line 318
    .line 319
    iget-object v1, p0, Lcom/byazt/un/a;->or:Lcom/byazt/hkv/c;

    .line 320
    .line 321
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 322
    .line 323
    .line 324
    :cond_9
    return-void
.end method

.method public md()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a;->gr:Ljava/util/EnumSet;

    .line 2
    .line 3
    sget-object v1, Lcom/byazt/dh/tt$c;->ve:Lcom/byazt/dh/tt$c;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/byazt/un/a;->rl:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    return v0
.end method

.method public my()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a;->md:Lcom/byazt/un/tt;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/un/a;->p:Lcom/byazt/sgn/z;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/byazt/sgn/z;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/byazt/sgn/z;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/un/a;->p:Lcom/byazt/sgn/z;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/byazt/sgn/z;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/un/a;->p:Lcom/byazt/sgn/z;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/byazt/un/a;->md:Lcom/byazt/un/tt;

    .line 29
    .line 30
    invoke-virtual {v0, v1, p0}, Lcom/byazt/sgn/z;->c(Lcom/byazt/un/tt;Lcom/byazt/sgn/z$tt;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public n()V
    .locals 0

    .line 1
    return-void
.end method

.method public n(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 4
    iget-object v0, p0, Lcom/byazt/un/a;->tt:Lcom/byazt/jr/tt;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lcom/byazt/jr/tt;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public n(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/byazt/un/a;->b:Z

    return-void
.end method

.method public nu()Lcom/byazt/jr/tt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a;->tt:Lcom/byazt/jr/tt;

    .line 2
    .line 3
    return-object v0
.end method

.method public p()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/un/a;->qp()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/byazt/un/a;->ve:Landroid/widget/ImageView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/un/a;->uj:Landroid/view/View;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/aas/pf;->n(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/un/a;->n:Landroid/view/View;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/byazt/aas/pf;->n(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/un/a;->a:Landroid/widget/ImageView;

    .line 25
    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-static {v0}, Lcom/byazt/aas/pf;->n(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public qy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a;->uj:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/un/a;->aw:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Lcom/byazt/un/a;->cu()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public rh()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/byazt/un/a;->b:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/un/a;->to:Landroid/widget/TextView;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_5

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/byazt/ete/bx;->i(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget-object v1, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 32
    .line 33
    invoke-static {v1}, Lcom/byazt/ete/bx;->ve(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 38
    .line 39
    invoke-static {v2}, Lcom/byazt/ete/bx;->x(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/byazt/un/a;->l:Landroid/view/View;

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/byazt/un/a;->lo:Landroid/widget/RelativeLayout;

    .line 50
    .line 51
    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_2

    .line 59
    .line 60
    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v3, p0, Lcom/byazt/un/a;->pu:Lcom/byazt/ff/RoundImageView;

    .line 65
    .line 66
    invoke-interface {v0, v3}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 67
    .line 68
    .line 69
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_3

    .line 74
    .line 75
    iget-object v0, p0, Lcom/byazt/un/a;->lt:Landroid/widget/TextView;

    .line 76
    .line 77
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    iget-object v0, p0, Lcom/byazt/un/a;->lo:Landroid/widget/RelativeLayout;

    .line 81
    .line 82
    if-nez v0, :cond_4

    .line 83
    .line 84
    return-void

    .line 85
    :cond_4
    invoke-static {v2}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    const/4 v1, 0x2

    .line 90
    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->type(I)Lcom/byazt/yj/yp;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    new-instance v1, Lcom/byazt/un/a$9;

    .line 95
    .line 96
    invoke-direct {v1, p0}, Lcom/byazt/un/a$9;-><init>(Lcom/byazt/un/a;)V

    .line 97
    .line 98
    .line 99
    const/4 v2, 0x4

    .line 100
    invoke-interface {v0, v1, v2}, Lcom/byazt/yj/yp;->to(Lcom/byazt/yj/gr;I)Lcom/byazt/yj/t;

    .line 101
    .line 102
    .line 103
    :cond_5
    return-void
.end method

.method public rl()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a;->md:Lcom/byazt/un/tt;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "NewLiveViewLayout"

    .line 6
    .line 7
    const-string v1, "callback is null"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public sl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/un/a;->rl:Z

    .line 2
    .line 3
    return v0
.end method

.method public sp()V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/byazt/un/a;->qy()V

    goto :goto_0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/byazt/un/a;->nb()V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/byazt/un/a;->ve:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/byazt/un/a;->ve:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/byazt/un/a;->c(ZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public tt()V
    .locals 2

    .line 40
    invoke-direct {p0}, Lcom/byazt/un/a;->qp()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/byazt/un/a;->uj:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 42
    iget-object v0, p0, Lcom/byazt/un/a;->n:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 43
    iget-object v0, p0, Lcom/byazt/un/a;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 44
    iget-object v0, p0, Lcom/byazt/un/a;->ve:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/a;->aw:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 46
    iget-object v0, p0, Lcom/byazt/un/a;->uj:Landroid/view/View;

    invoke-static {v0}, Lcom/byazt/aas/pf;->n(Landroid/view/View;)V

    .line 47
    iget-object v0, p0, Lcom/byazt/un/a;->n:Landroid/view/View;

    invoke-static {v0}, Lcom/byazt/aas/pf;->n(Landroid/view/View;)V

    .line 48
    iget-object v0, p0, Lcom/byazt/un/a;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 49
    invoke-static {v0}, Lcom/byazt/aas/pf;->n(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public tt(I)V
    .locals 2

    const-string v0, "setSeekProgress-percent="

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Progress"

    invoke-static {v1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/byazt/un/a;->z:Lcom/byazt/ff/TTProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 38
    iget-object v0, p0, Lcom/byazt/un/a;->z:Lcom/byazt/ff/TTProgressBar;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public tt(II)V
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x2

    const/4 v2, -0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_2

    if-lez p1, :cond_3

    .line 33
    :cond_2
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_3
    if-eq p2, v2, :cond_4

    if-eq p2, v1, :cond_4

    if-lez p2, :cond_5

    .line 34
    :cond_4
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    :cond_5
    iget-object p1, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public tt(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    return-void
.end method

.method public tt(Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public tt(ZZ)V
    .locals 2

    .line 28
    iget-object p2, p0, Lcom/byazt/un/a;->ve:Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    const/16 v0, 0x140

    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    const-string v1, "tt_new_play_video"

    invoke-static {p1, v1, p2, v0}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    return-void

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/byazt/un/a;->yv:Landroid/content/Context;

    const-string v1, "tt_new_pause_video"

    invoke-static {p1, v1, p2, v0}, Lcom/byazt/nr/z;->c(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;I)V

    :cond_1
    return-void
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/un/a;->qy:Z

    .line 2
    .line 3
    return v0
.end method

.method public uj()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/un/a;->tt:Lcom/byazt/jr/tt;

    invoke-interface {v0, p0}, Lcom/byazt/jr/tt;->c(Lcom/byazt/jr/c;)V

    .line 3
    iget-object v0, p0, Lcom/byazt/un/a;->ve:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/byazt/un/a$11;

    invoke-direct {v1, p0}, Lcom/byazt/un/a$11;-><init>(Lcom/byazt/un/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public uj(I)V
    .locals 1

    .line 17
    iput p1, p0, Lcom/byazt/un/a;->gu:I

    .line 18
    iget-object v0, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    return-void
.end method

.method public uj(Z)V
    .locals 2

    .line 5
    iput-boolean p1, p0, Lcom/byazt/un/a;->h:Z

    const/4 v0, 0x1

    .line 6
    const-class v1, Lcom/byazt/nat/c;

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/nat/c;

    invoke-virtual {p1, v0}, Lcom/byazt/nat/c;->ve(Z)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/byazt/un/a;->or:Lcom/byazt/hkv/c;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/nat/c;

    invoke-virtual {p1, v0}, Lcom/byazt/nat/c;->ve(Z)V

    return-void

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p1, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/nat/c;

    invoke-virtual {p1, v0}, Lcom/byazt/nat/c;->ve(Z)V

    .line 13
    iget-object p1, p0, Lcom/byazt/un/a;->zb:Lcom/byazt/hkv/c;

    invoke-virtual {p1, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/nat/c;

    invoke-virtual {p1, v0}, Lcom/byazt/nat/c;->c(Z)V

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/byazt/un/a;->or:Lcom/byazt/hkv/c;

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p1, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/nat/c;

    invoke-virtual {p1, v0}, Lcom/byazt/nat/c;->ve(Z)V

    .line 16
    iget-object p1, p0, Lcom/byazt/un/a;->or:Lcom/byazt/hkv/c;

    invoke-virtual {p1, v1}, Lcom/byazt/hkv/uj;->c(Ljava/lang/Class;)Lcom/byazt/zo/c;

    move-result-object p1

    check-cast p1, Lcom/byazt/nat/c;

    invoke-virtual {p1, v0}, Lcom/byazt/nat/c;->c(Z)V

    :cond_3
    return-void
.end method

.method public ve()Landroid/view/View;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    return-object v0
.end method

.method public ve(II)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/un/a;->my:I

    .line 5
    iput p2, p0, Lcom/byazt/un/a;->gt:I

    return-void
.end method

.method public ve(Landroid/view/ViewGroup;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Lcom/byazt/un/a;->uj(I)V

    return-void
.end method

.method public ve(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public ve(I)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public x()V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/ex/c;->c(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/un/a;->aw:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/un/a;->uj:Landroid/view/View;

    invoke-static {v0}, Lcom/byazt/aas/pf;->n(Landroid/view/View;)V

    return-void
.end method

.method public yp()V
    .locals 0

    return-void
.end method

.method public yv()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->wn()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/byazt/ete/kp;->nu(Lcom/byazt/ete/ic;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    iget-object v3, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->wn()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x5

    .line 32
    if-ne v3, v4, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move v1, v0

    .line 36
    :goto_1
    if-nez v1, :cond_3

    .line 37
    .line 38
    return-void

    .line 39
    :cond_3
    iget-boolean v0, p0, Lcom/byazt/un/a;->rl:Z

    .line 40
    .line 41
    invoke-virtual {p0, v2, v0}, Lcom/byazt/un/a;->c(ZZ)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/byazt/un/a;->c:Landroid/view/View;

    .line 45
    .line 46
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/byazt/un/a;->c(Landroid/view/View;Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/byazt/un/a;->i:Landroid/widget/ImageView;

    .line 54
    .line 55
    if-eqz v0, :cond_4

    .line 56
    .line 57
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    iget-object v0, p0, Lcom/byazt/un/a;->x:Landroid/view/View;

    .line 70
    .line 71
    invoke-static {v0, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/byazt/un/a;->i:Landroid/widget/ImageView;

    .line 75
    .line 76
    invoke-static {v0, v2}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/byazt/un/a;->da:Landroid/view/View;

    .line 80
    .line 81
    const/16 v1, 0x8

    .line 82
    .line 83
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/byazt/xky/tt;->c(Ljava/lang/String;)Lcom/byazt/yj/yp;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/byazt/un/a;->i:Landroid/widget/ImageView;

    .line 97
    .line 98
    invoke-interface {v0, v1}, Lcom/byazt/yj/yp;->to(Landroid/widget/ImageView;)Lcom/byazt/yj/t;

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/byazt/un/a;->i:Landroid/widget/ImageView;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/byazt/un/a;->zm:Lcom/byazt/ete/ic;

    .line 104
    .line 105
    invoke-static {v1}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p0, v0, v1}, Lcom/byazt/un/a;->c(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    return-void
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a;->p:Lcom/byazt/sgn/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/sgn/z;->c()Z

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

.method public zm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/un/a;->x:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/un/a;->i:Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/un/a;->da:Landroid/view/View;

    .line 14
    .line 15
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/un/a;->sl:Lcom/byazt/ff/RoundImageView;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/un/a;->t:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/un/a;->u:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/byazt/un/a;->yp:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/un/a;->l:Landroid/view/View;

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/un/a;->lo:Landroid/widget/RelativeLayout;

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/byazt/aas/pf;->c(Landroid/view/View;I)V

    .line 46
    .line 47
    .line 48
    return-void
.end method
