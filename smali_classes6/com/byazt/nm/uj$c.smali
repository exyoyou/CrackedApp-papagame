.class public Lcom/byazt/nm/uj$c;
.super Lcom/byazt/yl/ve;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x249,
        0x7b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/nm/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public da:Lcom/byazt/nc/yp;

.field public i:Lcom/byazt/ft/ve;

.field public x:Lcom/byazt/ft/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/nc/yp;Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/byazt/yl/ve;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/byazt/nm/uj$c$1;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Lcom/byazt/nm/uj$c$1;-><init>(Lcom/byazt/nm/uj$c;Ljava/util/function/Function;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/nm/uj$c;->x:Lcom/byazt/ft/tt;

    .line 11
    .line 12
    new-instance v0, Lcom/byazt/nm/uj$c$2;

    .line 13
    .line 14
    invoke-direct {v0, p0, v1}, Lcom/byazt/nm/uj$c$2;-><init>(Lcom/byazt/nm/uj$c;Ljava/util/function/Function;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/byazt/nm/uj$c;->i:Lcom/byazt/ft/ve;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/byazt/nc/yp;->getImageMode()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setImageMode(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->getInteractionType()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setInteractionType(I)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setExpressAd(Z)V

    .line 39
    .line 40
    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/byazt/nc/yp;->getMediaExtraInfo()Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    const-string p2, "price"

    .line 50
    .line 51
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {p1}, Lcom/byazt/xf/tt;->c(Ljava/lang/Object;)D

    .line 56
    .line 57
    .line 58
    move-result-wide p1

    .line 59
    const-string v0, "pangle \u6a21\u677fdraw \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    .line 60
    .line 61
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "TTMediationSDK_ECMP"

    .line 70
    .line 71
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-wide/16 v0, 0x0

    .line 75
    .line 76
    cmpl-double v2, p1, v0

    .line 77
    .line 78
    if-lez v2, :cond_0

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    move-wide p1, v0

    .line 82
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/byazt/yl/ve;->setCpm(D)V

    .line 83
    .line 84
    .line 85
    :cond_1
    iget-object p1, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

    .line 86
    .line 87
    iget-object p2, p0, Lcom/byazt/nm/uj$c;->x:Lcom/byazt/ft/tt;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Lcom/byazt/nc/yp;->setExpressInteractionListener(Lcom/byazt/ft/tt;)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

    .line 93
    .line 94
    iget-object p2, p0, Lcom/byazt/nm/uj$c;->i:Lcom/byazt/ft/ve;

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Lcom/byazt/nc/yp;->setVideoAdListener(Lcom/byazt/ft/ve;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/byazt/nm/uj$c;->getAdId()J

    .line 100
    .line 101
    .line 102
    move-result-wide p1

    .line 103
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    const-string p2, "ad_id"

    .line 108
    .line 109
    invoke-virtual {p0, p2, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/byazt/nm/uj$c;->getCreativeId()J

    .line 113
    .line 114
    .line 115
    move-result-wide p1

    .line 116
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-string p2, "c_id"

    .line 121
    .line 122
    invoke-virtual {p0, p2, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/byazt/nc/yp;->getMediaExtraInfo()Ljava/util/Map;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_2

    .line 132
    .line 133
    invoke-virtual {p0, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/util/Map;)V

    .line 134
    .line 135
    .line 136
    const-string p2, "log_extra"

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p0, p2, p1}, Lcom/byazt/yl/ve;->putExtraMsg(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/byazt/nm/uj$c;)Lcom/byazt/fy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->a:Lcom/byazt/fy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/nm/uj$c;)Lcom/byazt/fy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->a:Lcom/byazt/fy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic da(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gt(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic my(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/nm/uj$c;)Lcom/byazt/fy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->a:Lcom/byazt/fy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic nu(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic qy(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rh(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rl(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/nm/uj$c;)Lcom/byazt/fy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->a:Lcom/byazt/fy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/nm/uj$c;)Lcom/byazt/fy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->a:Lcom/byazt/fy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic u(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/nm/uj$c;)Lcom/byazt/fy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->a:Lcom/byazt/fy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/nm/uj$c;)Lcom/byazt/fy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->a:Lcom/byazt/fy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/nm/uj$c;)Lcom/byazt/fy/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->a:Lcom/byazt/fy/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic yp(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yl/ve;->tt:Lcom/byazt/me/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/nm/uj$c;)Lcom/byazt/me/x;
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
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

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
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

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
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

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
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

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
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

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
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

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
    invoke-virtual {p0, v0}, Lcom/byazt/yl/ve;->setMediaExtraInfo(Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    invoke-super {p0}, Lcom/byazt/yl/ve;->getMediaExtraInfo()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method

.method public getReqId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

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
    const-string v0, ""

    .line 15
    .line 16
    return-object v0
.end method

.method public hasDestroyed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
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
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/nc/yp;->destroy()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public render()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

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
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pangle draw express: setAdInteractionListener pluginTTAdInteractionListener = "

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "TTMediationSDK"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/byazt/nc/x;->setAdInteractionListener(Lcom/byazt/ocd/tt;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setCanInterruptVideoPlay(Z)V
    .locals 2

    .line 1
    const-string v0, "pangle draw express : setCanInterruptVideoPlay b = "

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "TTMediationSDK"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/byazt/nc/yp;->setCanInterruptVideoPlay(Z)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v1, "pangle draw express:  activity = "

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
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

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
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

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
    const-string v1, "pangle draw express:  ttDislikeDialogAbstract = "

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
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

    .line 21
    .line 22
    invoke-virtual {v0, p1, p2}, Lcom/byazt/nc/yp;->setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public setDownloadListener(Lcom/byazt/ocd/ve;)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "pangle draw express: setDownloadListener pluginTTAppDownloadListener = "

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "TTMediationSDK"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/byazt/nc/yp;->setDownloadListener(Lcom/byazt/ocd/ve;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public uploadDislikeEvent(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

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
    const-string v1, "pangle draw express: uploadDislikeEvent event = "

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
    iget-object v0, p0, Lcom/byazt/nm/uj$c;->da:Lcom/byazt/nc/yp;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/byazt/nc/yp;->uploadDislikeEvent(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
