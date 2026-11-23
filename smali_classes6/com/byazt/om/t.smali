.class public Lcom/byazt/om/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/om/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x22a,
        0x42
    }
.end annotation


# instance fields
.field public final c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x1f4

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/byazt/om/t;->c:J

    .line 7
    .line 8
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/nbs/tt;
    .locals 2

    const/4 v0, -0x4

    .line 43
    invoke-static {p3, p2, v0, v0}, Lcom/byazt/oi/ve;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/byazt/nbs/da;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 44
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance p2, Lcom/byazt/nbs/tt;

    invoke-direct {p2}, Lcom/byazt/nbs/tt;-><init>()V

    .line 47
    invoke-virtual {p2, p1}, Lcom/byazt/nbs/tt;->uj(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 48
    invoke-virtual {p2, p1}, Lcom/byazt/nbs/tt;->m(I)V

    const-wide/16 v0, 0x190

    .line 49
    invoke-virtual {p2, v0, v1}, Lcom/byazt/nbs/tt;->n(J)V

    const-wide/16 v0, 0x7d0

    .line 50
    invoke-virtual {p2, v0, v1}, Lcom/byazt/nbs/tt;->a(J)V

    const-wide/16 v0, 0x1388

    .line 51
    invoke-virtual {p2, v0, v1}, Lcom/byazt/nbs/tt;->sp(J)V

    const-wide/16 v0, 0xbb8

    .line 52
    invoke-virtual {p2, v0, v1}, Lcom/byazt/nbs/tt;->x(J)V

    .line 53
    invoke-virtual {p2, p3}, Lcom/byazt/nbs/tt;->c(Ljava/util/List;)V

    return-object p2
.end method

.method private c(Lcom/byazt/iz/tt;I)V
    .locals 7

    .line 37
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->yv()Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    .line 38
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->pf()Lcom/byazt/nbs/i;

    move-result-object v0

    iget-object v4, v0, Lcom/byazt/nbs/i;->c:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v5, p2

    invoke-static/range {v1 .. v6}, Lcom/byazt/ng/a;->c(Lcom/byazt/ll/tt;Ljava/lang/String;ZLjava/lang/String;ILjava/util/Map;)V

    return-void
.end method

.method private c(Lcom/byazt/om/c$c;Lcom/byazt/iz/tt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-virtual {p2}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/byazt/om/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/nbs/tt;

    move-result-object p3

    .line 41
    invoke-virtual {p2, p3}, Lcom/byazt/iz/tt;->c(Lcom/byazt/nbs/tt;)V

    .line 42
    invoke-interface {p1, p2}, Lcom/byazt/om/c$c;->c(Lcom/byazt/iz/tt;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/om/t;Lcom/byazt/iz/tt;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/om/t;->c(Lcom/byazt/iz/tt;I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/om/t;Lcom/byazt/om/c$c;Lcom/byazt/iz/tt;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/om/t;->c(Lcom/byazt/om/c$c;Lcom/byazt/iz/tt;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/om/c$c;)V
    .locals 3

    .line 3
    invoke-interface {p1}, Lcom/byazt/om/c$c;->c()Lcom/byazt/iz/tt;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->m()Lcom/byazt/nbs/tt;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/ll/tt;->my()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/byazt/bp/tt;->tt()Lcom/byazt/qe/ve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/byazt/qe/ve;->pf()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->or()Lcom/byazt/yf/sl;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "TTMediationSDK"

    const-string v2, "\u6267\u884c\u5f00\u542f\u5f00\u5c4f\u515c\u5e95..............."

    .line 6
    invoke-static {v1, v2}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/byazt/iz/tt;->gu()Lcom/byazt/ll/tt;

    move-result-object v1

    invoke-virtual {v0}, Lcom/byazt/iz/tt;->or()Lcom/byazt/yf/sl;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/byazt/om/t;->c(Lcom/byazt/om/c$c;Lcom/byazt/iz/tt;Lcom/byazt/ll/tt;Lcom/byazt/yf/sl;)V

    return-void

    .line 8
    :cond_0
    invoke-interface {p1, v0}, Lcom/byazt/om/c$c;->c(Lcom/byazt/iz/tt;)V

    return-void
.end method

.method public c(Lcom/byazt/om/c$c;Lcom/byazt/iz/tt;Lcom/byazt/ll/tt;Lcom/byazt/yf/sl;)V
    .locals 7

    const-string v0, "TTMediationSDK"

    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/byazt/eu/uj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "settings config.......AdUnitId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/byazt/ll/tt;->gt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  \u5f00\u5c4f\u5e7f\u544a\u8d70\u4e86\u5f00\u53d1\u8005\u81ea\u5b9a\u4e49\u515c\u5e95\u65b9\u6848   adnName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p4}, Lcom/byazt/yf/sl;->c()I

    move-result v2

    invoke-static {v2}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v1, -0x4

    .line 12
    invoke-static {p3, v1}, Lcom/byazt/ng/a;->tt(Lcom/byazt/ll/tt;I)V

    .line 13
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u5c4f\u5e7f\u544a\u8d70\u4e86\u5f00\u53d1\u8005\u81ea\u5b9a\u4e49\u5f00\u5c4f\u515c\u5e95\uff0c\u6570\u636e\u4e3a: getAdNetworkFlatFromId = "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/byazt/yf/sl;->c()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " getAppId = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p4}, Lcom/byazt/yf/sl;->ve()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getAppKey = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p4}, Lcom/byazt/yf/sl;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " getAdNetworkSlotId = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p4}, Lcom/byazt/yf/sl;->tt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 17
    invoke-static {v0, p3}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p4}, Lcom/byazt/yf/sl;->tt()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const v0, 0xcd15b

    if-nez p3, :cond_9

    .line 19
    invoke-virtual {p4}, Lcom/byazt/yf/sl;->ve()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p4}, Lcom/byazt/yf/sl;->uj()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto/16 :goto_2

    .line 20
    :cond_1
    invoke-virtual {p4}, Lcom/byazt/yf/sl;->c()I

    move-result p3

    .line 21
    invoke-static {p3}, Lcom/byazt/yl/c;->c(I)Ljava/lang/String;

    move-result-object v5

    .line 22
    invoke-virtual {p4}, Lcom/byazt/yf/sl;->tt()Ljava/lang/String;

    move-result-object v6

    .line 23
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    invoke-direct {p0, p2, v0}, Lcom/byazt/om/t;->c(Lcom/byazt/iz/tt;I)V

    .line 25
    new-instance p1, Lcom/byazt/pp/c;

    invoke-static {v0}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, v0, p3}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/byazt/iz/tt;->c(Lcom/byazt/pp/c;)V

    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne p3, v1, :cond_4

    .line 26
    new-instance p3, Lcom/byazt/uu/c;

    invoke-direct {p3, p4}, Lcom/byazt/uu/c;-><init>(Lcom/byazt/yf/sl;)V

    invoke-virtual {p3, p4}, Lcom/byazt/uu/tt;->c(Lcom/byazt/yf/sl;)V

    .line 27
    invoke-static {}, Lcom/byazt/eu/n;->tt()Landroid/os/Looper;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 28
    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 29
    new-instance p3, Lcom/byazt/om/t$1;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/byazt/om/t$1;-><init>(Lcom/byazt/om/t;Lcom/byazt/om/c$c;Lcom/byazt/iz/tt;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p1, 0x1f4

    invoke-virtual {p4, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void

    :cond_4
    const/4 v1, 0x7

    if-eq p3, v1, :cond_8

    const/4 v1, 0x6

    if-eq p3, v1, :cond_8

    const/4 v1, 0x4

    if-eq p3, v1, :cond_8

    const/16 v1, 0x8

    if-ne p3, v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    if-eq p3, v1, :cond_7

    const/16 v1, 0x9

    if-ne p3, v1, :cond_6

    goto :goto_0

    .line 30
    :cond_6
    invoke-direct {p0, p2, v0}, Lcom/byazt/om/t;->c(Lcom/byazt/iz/tt;I)V

    .line 31
    new-instance p1, Lcom/byazt/pp/c;

    invoke-static {v0}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, v0, p3}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/byazt/iz/tt;->c(Lcom/byazt/pp/c;)V

    return-void

    .line 32
    :cond_7
    :goto_0
    new-instance p3, Lcom/byazt/uu/c;

    invoke-direct {p3, p4}, Lcom/byazt/uu/c;-><init>(Lcom/byazt/yf/sl;)V

    new-instance v0, Lcom/byazt/om/t$2;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/byazt/om/t$2;-><init>(Lcom/byazt/om/t;Lcom/byazt/om/c$c;Lcom/byazt/iz/tt;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p4, v0}, Lcom/byazt/uu/tt;->c(Lcom/byazt/yf/sl;Lcom/byazt/ly/ve;)V

    return-void

    .line 33
    :cond_8
    :goto_1
    new-instance p3, Lcom/byazt/uu/c;

    invoke-direct {p3, p4}, Lcom/byazt/uu/c;-><init>(Lcom/byazt/yf/sl;)V

    invoke-virtual {p3, p4}, Lcom/byazt/uu/tt;->c(Lcom/byazt/yf/sl;)V

    .line 34
    invoke-direct {p0, p1, p2, v5, v6}, Lcom/byazt/om/t;->c(Lcom/byazt/om/c$c;Lcom/byazt/iz/tt;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_9
    :goto_2
    invoke-direct {p0, p2, v0}, Lcom/byazt/om/t;->c(Lcom/byazt/iz/tt;I)V

    .line 36
    new-instance p1, Lcom/byazt/pp/c;

    invoke-static {v0}, Lcom/byazt/pp/c;->c(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, v0, p3}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/byazt/iz/tt;->c(Lcom/byazt/pp/c;)V

    return-void
.end method

.method public tt(Lcom/byazt/om/c$c;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lcom/byazt/om/c$c;->c(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
