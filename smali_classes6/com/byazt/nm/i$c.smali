.class public Lcom/byazt/nm/i$c;
.super Lcom/byazt/yl/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x40
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field public da:Lcom/byazt/ft/ve;

.field public i:Lcom/byazt/ft/tt;

.field public final synthetic sl:Lcom/byazt/nm/i;

.field public volatile t:Z

.field public x:Lcom/byazt/nc/yp;


# direct methods
.method public constructor <init>(Lcom/byazt/nm/i;Lcom/byazt/nc/yp;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/byazt/nm/i$c;->sl:Lcom/byazt/nm/i;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/yl/ve;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/byazt/nm/i$c;->t:Z

    .line 8
    .line 9
    new-instance v0, Lcom/byazt/nm/i$c$2;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, p0, v1}, Lcom/byazt/nm/i$c$2;-><init>(Lcom/byazt/nm/i$c;Ljava/util/function/Function;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/byazt/nm/i$c;->i:Lcom/byazt/ft/tt;

    .line 16
    .line 17
    new-instance v0, Lcom/byazt/nm/i$c$3;

    .line 18
    .line 19
    invoke-direct {v0, p0, v1}, Lcom/byazt/nm/i$c$3;-><init>(Lcom/byazt/nm/i$c;Ljava/util/function/Function;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/byazt/nm/i$c;->da:Lcom/byazt/ft/ve;

    .line 23
    .line 24
    iput-object p2, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/byazt/nc/yp;->getImageMode()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setImageMode(I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->getInteractionType()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setInteractionType(I)V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setExpressAd(Z)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lcom/byazt/nm/i;->c(Lcom/byazt/nm/i;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/byazt/nc/yp;->getMediaExtraInfo()Ljava/util/Map;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    const-string p2, "price"

    .line 59
    .line 60
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {p1}, Lcom/byazt/xf/tt;->c(Ljava/lang/Object;)D

    .line 65
    .line 66
    .line 67
    move-result-wide p1

    .line 68
    const-string v0, "pangle \u6a21\u677fnative \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    .line 69
    .line 70
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v1, "TTMediationSDK_ECMP"

    .line 79
    .line 80
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    const-wide/16 v0, 0x0

    .line 84
    .line 85
    cmpl-double v2, p1, v0

    .line 86
    .line 87
    if-lez v2, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    move-wide p1, v0

    .line 91
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/byazt/yl/ve;->setCpm(D)V

    .line 92
    .line 93
    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/byazt/nm/i$c;->getAdId()J

    .line 95
    .line 96
    .line 97
    move-result-wide p1

    .line 98
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string p2, "ad_id"

    .line 103
    .line 104
    invoke-virtual {p0, p2, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/byazt/nm/i$c;->getCreativeId()J

    .line 108
    .line 109
    .line 110
    move-result-wide p1

    .line 111
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string p2, "c_id"

    .line 116
    .line 117
    invoke-virtual {p0, p2, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/byazt/nc/yp;->getMediaExtraInfo()Ljava/util/Map;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-eqz p1, :cond_2

    .line 127
    .line 128
    invoke-virtual {p0, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/util/Map;)V

    .line 129
    .line 130
    .line 131
    const-string p2, "log_extra"

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p0, p2, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :cond_2
    iget-object p1, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 141
    .line 142
    iget-object p2, p0, Lcom/byazt/nm/i$c;->i:Lcom/byazt/ft/tt;

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Lcom/byazt/nc/yp;->setExpressInteractionListener(Lcom/byazt/ft/tt;)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 148
    .line 149
    iget-object p2, p0, Lcom/byazt/nm/i$c;->da:Lcom/byazt/ft/ve;

    .line 150
    .line 151
    invoke-virtual {p1, p2}, Lcom/byazt/nc/yp;->setVideoAdListener(Lcom/byazt/ft/ve;)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method public static synthetic a(Lcom/byazt/nm/i$c;)Lcom/byazt/me/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->c:Lcom/byazt/me/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/nm/i$c;)Lcom/byazt/me/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->c:Lcom/byazt/me/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic da(Lcom/byazt/nm/i$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gt(Lcom/byazt/nm/i$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/nm/i$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/byazt/nm/i$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic my(Lcom/byazt/nm/i$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/nm/i$c;)Lcom/byazt/me/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->c:Lcom/byazt/me/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic nu(Lcom/byazt/nm/i$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic qy(Lcom/byazt/nm/i$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rh(Lcom/byazt/nm/i$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rl(Lcom/byazt/nm/i$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/nm/i$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/nm/i$c;)Lcom/byazt/me/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->c:Lcom/byazt/me/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/nm/i$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/nm/i$c;)Lcom/byazt/me/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->c:Lcom/byazt/me/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic u(Lcom/byazt/nm/i$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/nm/i$c;)Lcom/byazt/me/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->c:Lcom/byazt/me/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/nm/i$c;)Lcom/byazt/me/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->c:Lcom/byazt/me/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/nm/i$c;)Lcom/byazt/me/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->c:Lcom/byazt/me/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic yp(Lcom/byazt/nm/i$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/nm/i$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public getAdId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/byazt/xf/tt;->tt(Ljava/util/Map;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    return-wide v0
.end method

.method public getAdView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->getExpressAdView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getCreativeId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/byazt/xf/tt;->c(Ljava/util/Map;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    return-wide v0
.end method

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/nc/yp;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    invoke-super {p0, p1}, Lcom/byazt/yl/ve;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public getDislikeInfo()Lcom/byazt/nc/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->getDislikeInfo()Lcom/byazt/nc/uj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/byazt/yl/ve;->getDislikeInfo()Lcom/byazt/nc/uj;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public getMediaExtraInfo()Ljava/util/Map;
    .locals 4
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
    iget-object v0, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "coupon"

    .line 17
    .line 18
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string v2, "live_room"

    .line 26
    .line 27
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v2, "product"

    .line 35
    .line 36
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lcom/byazt/yl/ve;->setMediaExtraInfo(Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    invoke-super {p0}, Lcom/byazt/yl/ve;->getMediaExtraInfo()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->getMediaExtraInfo()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/byazt/xf/tt;->ve(Ljava/util/Map;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method public hasDestroyed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/nm/i$c;->t:Z

    .line 2
    .line 3
    return v0
.end method

.method public hasDislike()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/nm/i$c;->t:Z

    .line 3
    .line 4
    new-instance v0, Lcom/byazt/nm/i$c$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/byazt/nm/i$c$1;-><init>(Lcom/byazt/nm/i$c;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/byazt/eu/n;->ve(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public render()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->render()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setAdInteractionListener(Lcom/byazt/ocd/tt;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/nc/x;->setAdInteractionListener(Lcom/byazt/ocd/tt;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "pangle native express:  activity = "

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " pluginDislikeInteractionCallback:"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "TTMediationSDK"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 33
    .line 34
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nc/yp;->setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "pangle native express:  ttDislikeDialogAbstract = "

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "TTMediationSDK"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nc/yp;->setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public uploadDislikeEvent(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "pangle native express: uploadDislikeEvent event = "

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "TTMediationSDK"

    .line 16
    .line 17
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/nm/i$c;->x:Lcom/byazt/nc/yp;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/byazt/nc/yp;->uploadDislikeEvent(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
