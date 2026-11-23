.class public Lcom/byazt/hz/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/oc/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2bd,
        0x188
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/hz/a;->ve(Lcom/byazt/yl/ve;)Lcom/byazt/oc/ve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/yl/ve;

.field public final synthetic tt:Lcom/byazt/hz/a;


# direct methods
.method public constructor <init>(Lcom/byazt/hz/a;Lcom/byazt/yl/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/hz/a$3;->tt:Lcom/byazt/hz/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getImages()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c(Landroid/app/Activity;)Lcom/byazt/yf/tt;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/byazt/hz/a$3;->c(Landroid/app/Activity;Ljava/util/Map;)Lcom/byazt/yf/tt;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/app/Activity;Ljava/util/Map;)Lcom/byazt/yf/tt;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/byazt/yf/tt;"
        }
    .end annotation

    .line 4
    iget-object p2, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    invoke-virtual {p2, p1}, Lcom/byazt/yl/ve;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/byazt/hz/a$3$1;

    invoke-direct {p2, p0, p1}, Lcom/byazt/hz/a$3$1;-><init>(Lcom/byazt/hz/a$3;Lcom/byazt/nc/sp;)V

    return-object p2
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getAdTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/me/da;)V
    .locals 8
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
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
            "Lcom/byazt/me/da;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/byazt/yl/ve;->registerViewForInteraction(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/byazt/me/da;Ljava/util/List;)V

    return-void
.end method

.method public c(Landroid/app/Activity;Lcom/byazt/dhf/c;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/byazt/yl/ve;->setDislikeCallback(Landroid/app/Activity;Lcom/byazt/dhf/c;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/app/Dialog;[Ljava/lang/Integer;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/byazt/yl/ve;->setDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public da()Lcom/byazt/me/c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->hasAppInfo()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/byazt/me/c;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/byazt/me/c;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAppName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->uj(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAuthorName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->n(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getPackageSizeBytes()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/byazt/me/c;->c(J)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getPermissionsUrl()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->a(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getPrivacyAgreement()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->sp(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getVersionName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->x(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 69
    .line 70
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getPermissionsMap()Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->c(Ljava/util/Map;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getAppInfoExtra()Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->tt(Ljava/util/Map;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getFunctionDescUrl()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->ve(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getRegUrl()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->c(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 105
    .line 106
    invoke-virtual {v1}, Lcom/byazt/yl/ve;->getRegNumber()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/byazt/me/c;->tt(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-object v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    .line 115
    return-object v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getInteractionType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public n()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getStarRating()D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public sl()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->hasDislike()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public sp()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getSource()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public t()Lcom/byazt/nc/uj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

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

.method public tt(Landroid/app/Activity;)Lcom/byazt/nc/sp;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/byazt/yl/ve;->getDislikeDialog(Landroid/app/Activity;)Lcom/byazt/nc/sp;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public tt(Landroid/app/Dialog;[Ljava/lang/Integer;)Lcom/byazt/nc/sp;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/byazt/yl/ve;->getDislikeDialog(Landroid/app/Dialog;[Ljava/lang/Integer;)Lcom/byazt/nc/sp;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public tt()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uj()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getActionText()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public ve()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getImageUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/hz/a$3;->c:Lcom/byazt/yl/ve;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/yl/ve;->getImageMode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
