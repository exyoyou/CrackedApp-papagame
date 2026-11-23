.class final Lcom/kwad/components/ad/reward/presenter/p$1;
.super Lcom/kwad/components/ad/reward/e/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/reward/presenter/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic xe:Lcom/kwad/components/ad/reward/presenter/p;


# direct methods
.method constructor <init>(Lcom/kwad/components/ad/reward/presenter/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/components/ad/reward/e/k;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/kwad/components/core/playable/PlayableSource;Lcom/kwad/components/ad/reward/e/n;)V
    .locals 2
    .param p2    # Lcom/kwad/components/ad/reward/e/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/kwad/components/ad/reward/presenter/p;->a(Lcom/kwad/components/ad/reward/presenter/p;Lcom/kwad/components/core/playable/PlayableSource;)Lcom/kwad/components/core/playable/PlayableSource;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/p;->a(Lcom/kwad/components/ad/reward/presenter/p;)Lcom/kwad/components/core/playable/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/p;->a(Lcom/kwad/components/ad/reward/presenter/p;)Lcom/kwad/components/core/playable/a;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/kwad/components/core/playable/a;->vz()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object p2, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 33
    .line 34
    invoke-static {p2}, Lcom/kwad/components/ad/reward/presenter/p;->a(Lcom/kwad/components/ad/reward/presenter/p;)Lcom/kwad/components/core/playable/a;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2, p1}, Lcom/kwad/components/core/playable/a;->e(Lcom/kwad/components/core/playable/PlayableSource;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 42
    .line 43
    iget-object p2, p2, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 44
    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Lcom/kwad/components/ad/reward/g;->d(Lcom/kwad/components/core/playable/PlayableSource;)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 51
    .line 52
    iget-object p2, p2, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 53
    .line 54
    invoke-virtual {p2, v1}, Lcom/kwad/components/ad/reward/g;->C(Z)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 58
    .line 59
    iget-object p2, p2, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 60
    .line 61
    iget-object p2, p2, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/kwad/components/ad/reward/m/e;->ls()Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_1

    .line 68
    .line 69
    iget-object p2, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 70
    .line 71
    iget-object p2, p2, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 72
    .line 73
    iget-object p2, p2, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/kwad/components/ad/reward/m/e;->lt()Lcom/kwad/components/ad/reward/f/a;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    invoke-virtual {p2}, Lcom/kwad/components/ad/reward/f/a;->pause()V

    .line 80
    .line 81
    .line 82
    :cond_1
    invoke-static {}, Lcom/kwad/components/ad/reward/a;->gs()Lcom/kwad/components/ad/reward/a;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p2, p1}, Lcom/kwad/components/ad/reward/a;->b(Lcom/kwad/components/core/playable/PlayableSource;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/p;->a(Lcom/kwad/components/ad/reward/presenter/p;)Lcom/kwad/components/core/playable/a;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/kwad/components/ad/reward/presenter/p;->a(Lcom/kwad/components/ad/reward/presenter/p;)Lcom/kwad/components/core/playable/a;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/kwad/components/core/playable/a;->iW()V

    .line 105
    .line 106
    .line 107
    :cond_3
    if-eqz p2, :cond_4

    .line 108
    .line 109
    invoke-interface {p2}, Lcom/kwad/components/ad/reward/e/n;->ip()Z

    .line 110
    .line 111
    .line 112
    const-string p1, "RewardPlayablePresenter"

    .line 113
    .line 114
    const-string p2, "onEnterPlayable outer handled"

    .line 115
    .line 116
    invoke-static {p1, p2}, Lcom/kwad/sdk/core/d/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_4
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 123
    .line 124
    iget-object p1, p1, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 125
    .line 126
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/e;->eO(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1}, Lcom/kwad/sdk/core/response/helper/a;->aL(Lcom/kwad/sdk/core/response/model/AdInfo;)Z

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_5

    .line 135
    .line 136
    iget-object p1, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/kwad/sdk/mvp/Presenter;->getActivity()Landroid/app/Activity;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    iget-object p2, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 143
    .line 144
    iget-object p2, p2, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 145
    .line 146
    iget-object p2, p2, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 147
    .line 148
    invoke-static {p1, p2, v1}, Lcom/kwad/components/core/page/DownloadLandPageActivity;->launch(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;Z)V

    .line 149
    .line 150
    .line 151
    :cond_5
    return-void
.end method

.method public final dq()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/reward/presenter/p;->a(Lcom/kwad/components/ad/reward/presenter/p;)Lcom/kwad/components/core/playable/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/kwad/components/core/playable/a;->iW()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/kwad/components/ad/reward/g;->d(Lcom/kwad/components/core/playable/PlayableSource;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/m/e;->ls()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/kwad/components/ad/reward/presenter/p$1;->xe:Lcom/kwad/components/ad/reward/presenter/p;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/kwad/components/ad/reward/presenter/b;->uj:Lcom/kwad/components/ad/reward/g;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/kwad/components/ad/reward/g;->sz:Lcom/kwad/components/ad/reward/m/e;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/m/e;->lt()Lcom/kwad/components/ad/reward/f/a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/kwad/components/ad/reward/f/a;->resume()V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method
