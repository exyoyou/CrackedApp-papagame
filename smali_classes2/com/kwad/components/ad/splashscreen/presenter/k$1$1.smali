.class final Lcom/kwad/components/ad/splashscreen/presenter/k$1$1;
.super Lcom/kwad/sdk/utils/bi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/splashscreen/presenter/k$1;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Id:Lcom/kwad/components/ad/splashscreen/presenter/k$1;


# direct methods
.method constructor <init>(Lcom/kwad/components/ad/splashscreen/presenter/k$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/presenter/k$1$1;->Id:Lcom/kwad/components/ad/splashscreen/presenter/k$1;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kwad/sdk/utils/bi;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final doTask()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/k$1$1;->Id:Lcom/kwad/components/ad/splashscreen/presenter/k$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/k$1;->Ic:Lcom/kwad/components/ad/splashscreen/presenter/k;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/k;->b(Lcom/kwad/components/ad/splashscreen/presenter/k;)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_3

    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/k$1$1;->Id:Lcom/kwad/components/ad/splashscreen/presenter/k$1;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/k$1;->Ic:Lcom/kwad/components/ad/splashscreen/presenter/k;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 22
    .line 23
    iget-boolean v0, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mPvReported:Z

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/k$1$1;->Id:Lcom/kwad/components/ad/splashscreen/presenter/k$1;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/k$1;->Ic:Lcom/kwad/components/ad/splashscreen/presenter/k;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 35
    .line 36
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/monitor/b;->ar(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/k$1$1;->Id:Lcom/kwad/components/ad/splashscreen/presenter/k$1;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/k$1;->Ic:Lcom/kwad/components/ad/splashscreen/presenter/k;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/h;->GP:Lcom/kwad/sdk/core/j/a;

    .line 49
    .line 50
    invoke-interface {v0}, Lcom/kwad/sdk/core/j/a;->Ae()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/k$1$1;->Id:Lcom/kwad/components/ad/splashscreen/presenter/k$1;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/k$1;->Ic:Lcom/kwad/components/ad/splashscreen/presenter/k;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/presenter/k;->b(Lcom/kwad/components/ad/splashscreen/presenter/k;)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Lcom/kwad/components/ad/splashscreen/presenter/k;->a(Lcom/kwad/components/ad/splashscreen/presenter/k;Landroid/view/View;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/k$1$1;->Id:Lcom/kwad/components/ad/splashscreen/presenter/k$1;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/kwad/components/ad/splashscreen/presenter/k$1;->Ic:Lcom/kwad/components/ad/splashscreen/presenter/k;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/kwad/components/ad/splashscreen/presenter/k;->a(Lcom/kwad/components/ad/splashscreen/presenter/k;)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const/4 v2, 0x0

    .line 77
    if-eqz v1, :cond_1

    .line 78
    .line 79
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/k$1$1;->Id:Lcom/kwad/components/ad/splashscreen/presenter/k$1;

    .line 80
    .line 81
    iget-object v1, v1, Lcom/kwad/components/ad/splashscreen/presenter/k$1;->Ic:Lcom/kwad/components/ad/splashscreen/presenter/k;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/kwad/components/ad/splashscreen/presenter/k;->a(Lcom/kwad/components/ad/splashscreen/presenter/k;)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-nez v1, :cond_1

    .line 92
    .line 93
    const/4 v1, 0x1

    .line 94
    const/4 v2, 0x1

    .line 95
    :cond_1
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/presenter/k$1$1;->Id:Lcom/kwad/components/ad/splashscreen/presenter/k$1;

    .line 99
    .line 100
    iget-object v1, v1, Lcom/kwad/components/ad/splashscreen/presenter/k$1;->Ic:Lcom/kwad/components/ad/splashscreen/presenter/k;

    .line 101
    .line 102
    iget-object v3, v1, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 103
    .line 104
    iget-object v3, v3, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 105
    .line 106
    invoke-static {v1}, Lcom/kwad/components/ad/splashscreen/presenter/k;->d(Lcom/kwad/components/ad/splashscreen/presenter/k;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-static {v3, v0, v2, v1}, Lcom/kwad/components/ad/splashscreen/monitor/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;ZZZ)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :cond_2
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/k$1$1;->Id:Lcom/kwad/components/ad/splashscreen/presenter/k$1;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/k$1;->Ic:Lcom/kwad/components/ad/splashscreen/presenter/k;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/monitor/b;->as(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_3
    invoke-static {}, Lcom/kwad/components/ad/splashscreen/monitor/b;->mv()Lcom/kwad/components/ad/splashscreen/monitor/b;

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/presenter/k$1$1;->Id:Lcom/kwad/components/ad/splashscreen/presenter/k$1;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/k$1;->Ic:Lcom/kwad/components/ad/splashscreen/presenter/k;

    .line 135
    .line 136
    iget-object v0, v0, Lcom/kwad/components/ad/splashscreen/presenter/e;->HC:Lcom/kwad/components/ad/splashscreen/h;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/kwad/sdk/mvp/a;->mAdTemplate:Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 139
    .line 140
    invoke-static {v0}, Lcom/kwad/components/ad/splashscreen/monitor/b;->at(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method
