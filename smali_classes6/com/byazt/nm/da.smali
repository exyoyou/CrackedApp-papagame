.class public Lcom/byazt/nm/da;
.super Lcom/byazt/nm/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x48
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

.method private c(Lcom/byazt/omf/h;Lcom/byazt/dj/tt$c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/da;->tt:Lcom/byazt/ll/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->yp()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 9
    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/byazt/nm/da;->tt:Lcom/byazt/ll/tt;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->u()F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p2, v0}, Lcom/byazt/dj/tt$c;->c(F)Lcom/byazt/dj/tt$c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/byazt/nm/da;->tt:Lcom/byazt/ll/tt;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/byazt/ll/tt;->yp()F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/byazt/dj/tt$c;->tt(F)Lcom/byazt/dj/tt$c;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/byazt/nm/da;->tt:Lcom/byazt/ll/tt;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->u()F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p2, v0}, Lcom/byazt/dj/tt$c;->c(F)Lcom/byazt/dj/tt$c;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v1}, Lcom/byazt/dj/tt$c;->tt(F)Lcom/byazt/dj/tt$c;

    .line 43
    .line 44
    .line 45
    :goto_0
    new-instance v0, Lcom/byazt/nm/i;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/byazt/nm/i;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/byazt/nm/da;->ve:Lcom/byazt/dv/tt;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->c()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-virtual {p2}, Lcom/byazt/dj/tt$c;->c()Lcom/byazt/dj/tt;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    invoke-virtual {v0, v1, p1, p2, p0}, Lcom/byazt/nm/i;->c(ZLcom/byazt/omf/h;Lcom/byazt/dj/tt;Lcom/byazt/sp/tt;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private tt(Lcom/byazt/omf/h;Lcom/byazt/dj/tt$c;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PangleNativeLoader_loadNativeAd_renderControl:"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/byazt/nm/da;->tt:Lcom/byazt/ll/tt;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/byazt/ll/tt;->z()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "TTMediationSDK"

    .line 22
    .line 23
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/byazt/nm/da;->tt:Lcom/byazt/ll/tt;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->z()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p2, v0}, Lcom/byazt/dj/tt$c;->ve(Z)Lcom/byazt/dj/tt$c;

    .line 33
    .line 34
    .line 35
    new-instance v0, Lcom/byazt/nm/x;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/byazt/nm/x;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/byazt/nm/da;->ve:Lcom/byazt/dv/tt;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/byazt/dv/tt;->c()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {p2}, Lcom/byazt/dj/tt$c;->c()Lcom/byazt/dj/tt;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {v0, v1, p1, p2, p0}, Lcom/byazt/nm/x;->c(ZLcom/byazt/omf/h;Lcom/byazt/dj/tt;Lcom/byazt/sp/tt;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public startLoad(Landroid/content/Context;Lcom/byazt/dv/tt;Lcom/byazt/ll/tt;Ljava/util/Map;)V
    .locals 1
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
    iput-object p3, p0, Lcom/byazt/nm/da;->tt:Lcom/byazt/ll/tt;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/nm/da;->ve:Lcom/byazt/dv/tt;

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
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p0, p1}, Lcom/byazt/nm/tt;->getPluginCSJLoader(Landroid/content/Context;)Lcom/byazt/omf/h;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object p2, p0, Lcom/byazt/nm/da;->tt:Lcom/byazt/ll/tt;

    .line 32
    .line 33
    iget-object p3, p0, Lcom/byazt/nm/da;->ve:Lcom/byazt/dv/tt;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-static {p2, p3, v0}, Lcom/byazt/xf/tt;->c(Lcom/byazt/ll/tt;Lcom/byazt/dv/tt;Z)Lcom/byazt/dj/tt$c;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iget-object p3, p0, Lcom/byazt/nm/da;->tt:Lcom/byazt/ll/tt;

    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/byazt/ll/tt;->qy()I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    iget-object v0, p0, Lcom/byazt/nm/da;->tt:Lcom/byazt/ll/tt;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/byazt/ll/tt;->gu()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-lez p3, :cond_2

    .line 53
    .line 54
    if-lez v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {p2, p3}, Lcom/byazt/dj/tt$c;->c(I)Lcom/byazt/dj/tt$c;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p3, v0}, Lcom/byazt/dj/tt$c;->tt(I)Lcom/byazt/dj/tt$c;

    .line 61
    .line 62
    .line 63
    :cond_2
    const-string p3, "tt_ad_origin_type"

    .line 64
    .line 65
    invoke-interface {p4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    if-eqz p3, :cond_5

    .line 70
    .line 71
    check-cast p3, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    const/4 p4, 0x1

    .line 78
    if-ne p3, p4, :cond_3

    .line 79
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/byazt/nm/da;->c(Lcom/byazt/omf/h;Lcom/byazt/dj/tt$c;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    const/4 p4, 0x2

    .line 85
    if-ne p3, p4, :cond_4

    .line 86
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/byazt/nm/da;->tt(Lcom/byazt/omf/h;Lcom/byazt/dj/tt$c;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_4
    const/4 p1, 0x3

    .line 92
    if-ne p3, p1, :cond_5

    .line 93
    .line 94
    new-instance p1, Lcom/byazt/pp/c;

    .line 95
    .line 96
    const-string p2, "\u6e32\u67d3\u7c7b\u578b\u9519\u8bef"

    .line 97
    .line 98
    invoke-direct {p1, p2}, Lcom/byazt/pp/c;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Lcom/byazt/sp/tt;->notifyLoadFail(Lcom/byazt/pp/c;)V

    .line 102
    .line 103
    .line 104
    :cond_5
    return-void
.end method
