.class public Lcom/byazt/msx/c;
.super Lcom/byazt/iym/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x155,
        0x14
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/byazt/iym/tt;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;ZZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/ouz/NativeExpressView;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->c(Lcom/byazt/ete/ic;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/byazt/ouz/NativeExpressView;->getDynamicShowType()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iget-object v1, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Lcom/byazt/ouz/yv;->c(Ljava/util/Map;Lcom/byazt/ete/ic;Lcom/byazt/ouz/NativeExpressView;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ouz/NativeExpressView;->getDynamicShowType()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "dynamic_show_type"

    .line 30
    .line 31
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/byazt/ouz/NativeExpressView;->getShowDLFactorsEventParams()B

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v2, -0x1

    .line 39
    if-eq v1, v2, :cond_1

    .line 40
    .line 41
    const-string v2, "biz_type"

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->zo()Lcom/byazt/ete/h;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const/4 v2, 0x0

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/byazt/ete/h;->ve()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const-string v3, "refresh_num"

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    iget-boolean v1, p0, Lcom/byazt/msx/c;->a:Z

    .line 73
    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    iget-object v1, p0, Lcom/byazt/iym/tt;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->hd()Ljava/lang/Double;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/byazt/iym/tt;->ve:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v1, v3, v0, v2}, Lcom/byazt/ddx/uj;->c(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/byazt/ouz/NativeExpressView;->getAdShowTime()Lcom/byazt/ddx/n;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const/high16 v0, 0x3f800000    # 1.0f

    .line 94
    .line 95
    const/16 v1, 0xb

    .line 96
    .line 97
    invoke-virtual {p1, v0, v1}, Lcom/byazt/ddx/n;->c(FI)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/byazt/pf/c;->c()Lcom/byazt/pf/c;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/byazt/pf/c;->uj()V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->eo()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    invoke-static {p1}, Lcom/byazt/aas/cu;->c(I)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public da()Lcom/byazt/jzl/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Lcom/byazt/ete/xd;->c(ILcom/byazt/ete/ic;)Lcom/byazt/jzl/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v2, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setCid(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/16 v2, 0x64

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setWidth(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setHeight(I)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setLogExtra(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-boolean v2, p0, Lcom/byazt/iym/tt;->uj:Z

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Lcom/byazt/jzl/a;->setQuiet(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/byazt/iym/tt;->tt:Lcom/byazt/ete/ic;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/byazt/bzd/t;->c(Lcom/byazt/ete/ic;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/byazt/jzl/a;->setAudio(Z)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-object v0
.end method

.method public ve(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/msx/c;->a:Z

    .line 2
    .line 3
    return-void
.end method
