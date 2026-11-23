.class public Lcom/byazt/nm/c;
.super Lcom/byazt/nm/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/nm/c$ve;,
        Lcom/byazt/nm/c$c;,
        Lcom/byazt/nm/c$tt;
    }
.end annotation


# instance fields
.field public tt:Lcom/byazt/ll/tt;

.field public ve:Lcom/byazt/dv/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/db/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/nm/tt;-><init>(Lcom/byazt/db/tt;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/byazt/nm/c;)Lcom/byazt/dv/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nm/c;->ve:Lcom/byazt/dv/tt;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 7

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/nm/tt;->getPluginCSJLoader(Landroid/content/Context;)Lcom/byazt/omf/h;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/byazt/nm/c;->tt:Lcom/byazt/ll/tt;

    iget-object v2, p0, Lcom/byazt/nm/c;->ve:Lcom/byazt/dv/tt;

    .line 4
    invoke-virtual {v2}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/nm/c;->ve:Lcom/byazt/dv/tt;

    .line 5
    invoke-virtual {v3}, Lcom/byazt/dv/tt;->m()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/nm/c;->ve:Lcom/byazt/dv/tt;

    .line 6
    invoke-virtual {v4}, Lcom/byazt/dv/tt;->nu()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/byazt/nm/c;->ve:Lcom/byazt/dv/tt;

    .line 7
    invoke-virtual {v5}, Lcom/byazt/dv/tt;->zm()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 8
    invoke-static/range {v1 .. v6}, Lcom/byazt/xf/tt;->c(Lcom/byazt/ll/tt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/byazt/dj/tt$c;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/nm/c;->tt:Lcom/byazt/ll/tt;

    .line 9
    invoke-virtual {v2}, Lcom/byazt/ll/tt;->qy()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/dj/tt$c;->c(I)Lcom/byazt/dj/tt$c;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/nm/c;->tt:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->gu()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/dj/tt$c;->tt(I)Lcom/byazt/dj/tt$c;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/byazt/nm/c;->tt:Lcom/byazt/ll/tt;

    invoke-virtual {v2}, Lcom/byazt/ll/tt;->u()F

    move-result v2

    .line 11
    iget-object v3, p0, Lcom/byazt/nm/c;->tt:Lcom/byazt/ll/tt;

    invoke-virtual {v3}, Lcom/byazt/ll/tt;->yp()F

    move-result v3

    .line 12
    iget-object v4, p0, Lcom/byazt/nm/c;->tt:Lcom/byazt/ll/tt;

    invoke-static {v4}, Lcom/byazt/xf/tt;->c(Lcom/byazt/ll/tt;)Z

    move-result v4

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pangle banner native express autoHeight:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "  height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TTMediationSDK"

    invoke-static {v6, v5}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    cmpl-float v6, v3, v5

    if-lez v6, :cond_1

    if-nez v4, :cond_1

    .line 14
    invoke-virtual {v1, v2}, Lcom/byazt/dj/tt$c;->c(F)Lcom/byazt/dj/tt$c;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/byazt/dj/tt$c;->tt(F)Lcom/byazt/dj/tt$c;

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v1, v2}, Lcom/byazt/dj/tt$c;->c(F)Lcom/byazt/dj/tt$c;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/byazt/dj/tt$c;->tt(F)Lcom/byazt/dj/tt$c;

    .line 16
    :goto_0
    invoke-virtual {v1}, Lcom/byazt/dj/tt$c;->c()Lcom/byazt/dj/tt;

    move-result-object v1

    new-instance v2, Lcom/byazt/nm/c$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Lcom/byazt/nm/c$1;-><init>(Lcom/byazt/nm/c;Ljava/util/function/Function;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/byazt/omf/h;->loadNativeExpressAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/a;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/nm/c;)Lcom/byazt/ll/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/nm/c;->tt:Lcom/byazt/ll/tt;

    return-object p0
.end method

.method private tt(Landroid/content/Context;)V
    .locals 7

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/nm/tt;->getPluginCSJLoader(Landroid/content/Context;)Lcom/byazt/omf/h;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/byazt/nm/c;->tt:Lcom/byazt/ll/tt;

    iget-object v2, p0, Lcom/byazt/nm/c;->ve:Lcom/byazt/dv/tt;

    .line 4
    invoke-virtual {v2}, Lcom/byazt/dv/tt;->t()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/nm/c;->ve:Lcom/byazt/dv/tt;

    .line 5
    invoke-virtual {v3}, Lcom/byazt/dv/tt;->m()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/byazt/nm/c;->ve:Lcom/byazt/dv/tt;

    .line 6
    invoke-virtual {v4}, Lcom/byazt/dv/tt;->nu()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/byazt/nm/c;->ve:Lcom/byazt/dv/tt;

    .line 7
    invoke-virtual {v5}, Lcom/byazt/dv/tt;->zm()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 8
    invoke-static/range {v1 .. v6}, Lcom/byazt/xf/tt;->c(Lcom/byazt/ll/tt;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/byazt/dj/tt$c;

    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/byazt/nm/c;->tt:Lcom/byazt/ll/tt;

    .line 10
    invoke-virtual {v2}, Lcom/byazt/ll/tt;->qy()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/byazt/dj/tt$c;->c(I)Lcom/byazt/dj/tt$c;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/nm/c;->tt:Lcom/byazt/ll/tt;

    invoke-virtual {v3}, Lcom/byazt/ll/tt;->gu()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/byazt/dj/tt$c;->tt(I)Lcom/byazt/dj/tt$c;

    .line 11
    invoke-virtual {v1}, Lcom/byazt/dj/tt$c;->c()Lcom/byazt/dj/tt;

    move-result-object v1

    new-instance v2, Lcom/byazt/nm/c$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1}, Lcom/byazt/nm/c$2;-><init>(Lcom/byazt/nm/c;Ljava/util/function/Function;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/byazt/omf/h;->loadFeedAd(Lcom/byazt/dj/tt;Lcom/byazt/nh/ve;)V

    return-void
.end method


# virtual methods
.method public getAdNetWorkName()Ljava/lang/String;
    .locals 1

    const-string v0, "pangle"

    return-object v0
.end method

.method public startLoad(Landroid/content/Context;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/byazt/dv/tt;",
            "Lcom/byazt/ll/tt;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p3, p0, Lcom/byazt/nm/c;->tt:Lcom/byazt/ll/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/nm/c;->ve:Lcom/byazt/dv/tt;

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/byazt/pp/c;

    .line 8
    .line 9
    const-string p2, "load ad fail adSlot is null"

    .line 10
    .line 11
    invoke-direct {p1, p2}, Lcom/byazt/pp/c;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    if-eqz p4, :cond_5

    .line 19
    .line 20
    const-string p2, "tt_ad_sub_type"

    .line 21
    .line 22
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-eqz p2, :cond_4

    .line 27
    .line 28
    check-cast p2, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    const/4 p3, 0x4

    .line 35
    if-ne p2, p3, :cond_4

    .line 36
    .line 37
    const-string p2, "tt_ad_origin_type"

    .line 38
    .line 39
    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-eqz p2, :cond_3

    .line 44
    .line 45
    check-cast p2, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    const/4 p3, 0x1

    .line 52
    if-ne p2, p3, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p0, p1}, Lcom/byazt/nm/c;->c(Landroid/content/Context;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_1
    const/4 p3, 0x2

    .line 63
    if-ne p2, p3, :cond_2

    .line 64
    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-direct {p0, p1}, Lcom/byazt/nm/c;->tt(Landroid/content/Context;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    new-instance p1, Lcom/byazt/pp/c;

    .line 74
    .line 75
    const p2, 0x13881

    .line 76
    .line 77
    .line 78
    const-string p3, "originType is mismatch"

    .line 79
    .line 80
    invoke-direct {p1, p2, p3}, Lcom/byazt/pp/c;-><init>(ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    return-void

    .line 87
    :cond_4
    new-instance p2, Lcom/byazt/nm/c$ve;

    .line 88
    .line 89
    invoke-direct {p2, p0}, Lcom/byazt/nm/c$ve;-><init>(Lcom/byazt/nm/c;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p2, p1}, Lcom/byazt/nm/c$ve;->loadAd(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    :cond_5
    return-void
.end method
