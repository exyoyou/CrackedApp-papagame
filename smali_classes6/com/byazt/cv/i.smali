.class public Lcom/byazt/cv/i;
.super Lcom/byazt/dw/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x255,
        0x2a
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/yl/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/yl/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/dw/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 5
    .line 6
    return-void
.end method

.method private c(Landroid/app/Activity;Lcom/byazt/yl/ve;)Lcom/byazt/yf/tt;
    .locals 0

    .line 1
    invoke-virtual {p2, p1}, Lcom/byazt/yl/ve;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Lcom/byazt/cv/i$1;

    .line 6
    .line 7
    invoke-direct {p2, p0, p1}, Lcom/byazt/cv/i$1;-><init>(Lcom/byazt/cv/i;Lcom/byazt/nc/sp;)V

    .line 8
    .line 9
    .line 10
    return-object p2
.end method


# virtual methods
.method public getActionText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getActionText()Ljava/lang/String;

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

.method public getAdImageMode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getImageMode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdDescription()Ljava/lang/String;

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

.method public getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/dw/ve;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/byazt/xw/tt;

    invoke-direct {p0, p1, v0}, Lcom/byazt/cv/i;->c(Landroid/app/Activity;Lcom/byazt/yl/ve;)Lcom/byazt/yf/tt;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/byazt/xw/tt;-><init>(Lcom/byazt/yf/tt;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDislikeDialog(Landroid/app/Activity;Ljava/util/Map;)Lcom/byazt/dw/ve;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/byazt/dw/ve;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    if-eqz p2, :cond_0

    .line 4
    new-instance v0, Lcom/byazt/xw/tt;

    invoke-direct {p0, p1, p2}, Lcom/byazt/cv/i;->c(Landroid/app/Activity;Lcom/byazt/yl/ve;)Lcom/byazt/yf/tt;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/byazt/xw/tt;-><init>(Lcom/byazt/yf/tt;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)Lcom/byazt/nc/sp;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/byazt/yl/ve;->getDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)Lcom/byazt/nc/sp;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDislikeDialog2(Landroid/app/Activity;)Lcom/byazt/nc/sp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public getDislikeInfo()Lcom/byazt/nc/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getDislikeInfo()Lcom/byazt/nc/uj;

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

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getIconUrl()Ljava/lang/String;

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

.method public getImageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getImages()Ljava/util/List;

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

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getImageUrl()Ljava/lang/String;

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

.method public getInteractionType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getInteractionType()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public getNativeAdAppInfo()Lcom/byazt/dw/uj;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->hasAppInfo()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/byazt/me/c;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/byazt/me/c;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAppName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->uj(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAuthorName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->n(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getPackageSizeBytes()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/byazt/me/c;->c(J)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getPermissionsUrl()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->a(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getPrivacyAgreement()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->sp(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getVersionName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->x(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getPermissionsMap()Ljava/util/Map;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->c(Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAppInfoExtra()Ljava/util/Map;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->tt(Ljava/util/Map;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getFunctionDescUrl()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->ve(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getRegUrl()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->c(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getRegNumber()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->tt(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    new-instance v1, Lcom/byazt/xw/ve;

    .line 116
    .line 117
    invoke-direct {v1, v0}, Lcom/byazt/xw/ve;-><init>(Lcom/byazt/me/c;)V

    .line 118
    .line 119
    .line 120
    return-object v1

    .line 121
    :cond_0
    const/4 v0, 0x0

    .line 122
    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getSource()Ljava/lang/String;

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

.method public getStarRating()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getStarRating()D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdTitle()Ljava/lang/String;

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

.method public hasDislike()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->hasDislike()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public registerView(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/am/uj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/byazt/am/uj;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/byazt/yl/ve;->setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/cv/i;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/byazt/yl/ve;->setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
