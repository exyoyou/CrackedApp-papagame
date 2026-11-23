.class final Lcom/kwad/components/ad/interstitial/f/f$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/core/video/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/ad/interstitial/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nO:Lcom/kwad/components/ad/interstitial/f/f;


# direct methods
.method constructor <init>(Lcom/kwad/components/ad/interstitial/f/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/interstitial/f/f$4;->nO:Lcom/kwad/components/ad/interstitial/f/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILcom/kwad/sdk/utils/al$a;)V
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    if-eq p1, v1, :cond_2

    .line 5
    .line 6
    if-eq p1, v0, :cond_1

    .line 7
    .line 8
    const/4 v3, 0x3

    .line 9
    if-eq p1, v3, :cond_0

    .line 10
    .line 11
    const/16 p1, 0x6c

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 p1, 0x53

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const/16 p1, 0x52

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/16 p1, 0xd

    .line 23
    .line 24
    :goto_0
    const/4 v3, 0x2

    .line 25
    :goto_1
    iget-object v4, p0, Lcom/kwad/components/ad/interstitial/f/f$4;->nO:Lcom/kwad/components/ad/interstitial/f/f;

    .line 26
    .line 27
    invoke-static {v4}, Lcom/kwad/components/ad/interstitial/f/f;->d(Lcom/kwad/components/ad/interstitial/f/f;)Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/kwad/sdk/utils/as;->VM()Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_3

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_3
    const/4 v0, 0x1

    .line 38
    :goto_2
    invoke-static {}, Lcom/kwad/components/ad/interstitial/report/a;->eV()Lcom/kwad/components/ad/interstitial/report/a;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    iget-object v5, p0, Lcom/kwad/components/ad/interstitial/f/f$4;->nO:Lcom/kwad/components/ad/interstitial/f/f;

    .line 43
    .line 44
    invoke-static {v5}, Lcom/kwad/components/ad/interstitial/f/f;->a(Lcom/kwad/components/ad/interstitial/f/f;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const-wide/16 v6, 0x1

    .line 49
    .line 50
    int-to-long v8, p1

    .line 51
    invoke-virtual/range {v4 .. v9}, Lcom/kwad/components/ad/interstitial/report/a;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;JJ)V

    .line 52
    .line 53
    .line 54
    new-instance v4, Lcom/kwad/components/core/e/d/a$a;

    .line 55
    .line 56
    iget-object v5, p0, Lcom/kwad/components/ad/interstitial/f/f$4;->nO:Lcom/kwad/components/ad/interstitial/f/f;

    .line 57
    .line 58
    invoke-static {v5}, Lcom/kwad/components/ad/interstitial/f/f;->f(Lcom/kwad/components/ad/interstitial/f/f;)Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-direct {v4, v5}, Lcom/kwad/components/core/e/d/a$a;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    iget-object v5, p0, Lcom/kwad/components/ad/interstitial/f/f$4;->nO:Lcom/kwad/components/ad/interstitial/f/f;

    .line 66
    .line 67
    invoke-static {v5}, Lcom/kwad/components/ad/interstitial/f/f;->a(Lcom/kwad/components/ad/interstitial/f/f;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-virtual {v4, v5}, Lcom/kwad/components/core/e/d/a$a;->aJ(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/e/d/a$a;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    iget-object v5, p0, Lcom/kwad/components/ad/interstitial/f/f$4;->nO:Lcom/kwad/components/ad/interstitial/f/f;

    .line 76
    .line 77
    invoke-static {v5}, Lcom/kwad/components/ad/interstitial/f/f;->e(Lcom/kwad/components/ad/interstitial/f/f;)Lcom/kwad/components/core/e/d/d;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v4, v5}, Lcom/kwad/components/core/e/d/a$a;->b(Lcom/kwad/components/core/e/d/d;)Lcom/kwad/components/core/e/d/a$a;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4, v3}, Lcom/kwad/components/core/e/d/a$a;->aN(I)Lcom/kwad/components/core/e/d/a$a;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3, v2}, Lcom/kwad/components/core/e/d/a$a;->as(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2, v1}, Lcom/kwad/components/core/e/d/a$a;->au(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v1, p1}, Lcom/kwad/components/core/e/d/a$a;->aM(I)Lcom/kwad/components/core/e/d/a$a;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1, p2}, Lcom/kwad/components/core/e/d/a$a;->d(Lcom/kwad/sdk/utils/al$a;)Lcom/kwad/components/core/e/d/a$a;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-virtual {p2, v0}, Lcom/kwad/components/core/e/d/a$a;->aO(I)Lcom/kwad/components/core/e/d/a$a;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    new-instance v0, Lcom/kwad/components/ad/interstitial/f/f$4$1;

    .line 110
    .line 111
    invoke-direct {v0, p0, p1}, Lcom/kwad/components/ad/interstitial/f/f$4$1;-><init>(Lcom/kwad/components/ad/interstitial/f/f$4;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p2, v0}, Lcom/kwad/components/core/e/d/a$a;->a(Lcom/kwad/components/core/e/d/a$b;)Lcom/kwad/components/core/e/d/a$a;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-static {p1}, Lcom/kwad/components/core/e/d/a;->a(Lcom/kwad/components/core/e/d/a$a;)I

    .line 119
    .line 120
    .line 121
    return-void
.end method
