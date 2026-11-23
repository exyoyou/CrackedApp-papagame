.class final Lcom/kwad/components/ad/nativead/d$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/components/ad/nativead/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/components/ad/nativead/d;->k(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pE:Lcom/kwad/components/ad/nativead/d;

.field final synthetic pL:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/kwad/components/ad/nativead/d;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/components/ad/nativead/d$9;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/components/ad/nativead/d$9;->pL:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final u(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/d$9;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/d;->c(Lcom/kwad/components/ad/nativead/d;)Lcom/kwad/components/ad/nativead/c/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/d$9;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/d;->c(Lcom/kwad/components/ad/nativead/d;)Lcom/kwad/components/ad/nativead/c/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/kwad/components/ad/nativead/c/a;->fT()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/d$9;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/d;->c(Lcom/kwad/components/ad/nativead/d;)Lcom/kwad/components/ad/nativead/c/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/kwad/components/ad/nativead/c/a;->fR()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    return v1

    .line 35
    :cond_0
    invoke-static {}, Lcom/kwad/sdk/core/config/e;->Kd()F

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/high16 v2, 0x42c80000    # 100.0f

    .line 40
    .line 41
    mul-float v0, v0, v2

    .line 42
    .line 43
    float-to-int v0, v0

    .line 44
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/d$9;->pL:Landroid/view/View;

    .line 45
    .line 46
    invoke-static {v2, v0}, Lcom/kwad/sdk/utils/cb;->r(Landroid/view/View;I)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/d$9;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/d;->l(Lcom/kwad/components/ad/nativead/d;)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-static {}, Lcom/kwad/components/ad/nativead/b;->ce()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/d$9;->pL:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v2, Lcom/kwad/components/core/e/d/a$a;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/kwad/sdk/wrapper/m;->wrapContextIfNeed(Landroid/content/Context;)Landroid/content/Context;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-direct {v2, v0}, Lcom/kwad/components/core/e/d/a$a;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/d$9;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/kwad/components/ad/nativead/d;->b(Lcom/kwad/components/ad/nativead/d;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v2, v0}, Lcom/kwad/components/core/e/d/a$a;->aJ(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/components/core/e/d/a$a;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v2, p0, Lcom/kwad/components/ad/nativead/d$9;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 93
    .line 94
    invoke-static {v2}, Lcom/kwad/components/ad/nativead/d;->m(Lcom/kwad/components/ad/nativead/d;)Lcom/kwad/components/core/e/d/d;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v0, v2}, Lcom/kwad/components/core/e/d/a$a;->b(Lcom/kwad/components/core/e/d/d;)Lcom/kwad/components/core/e/d/a$a;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->az(Z)Lcom/kwad/components/core/e/d/a$a;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    new-instance v1, Lcom/kwad/components/ad/nativead/d$9$1;

    .line 107
    .line 108
    invoke-direct {v1, p0, p1}, Lcom/kwad/components/ad/nativead/d$9$1;-><init>(Lcom/kwad/components/ad/nativead/d$9;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v1}, Lcom/kwad/components/core/e/d/a$a;->a(Lcom/kwad/components/core/e/d/a$b;)Lcom/kwad/components/core/e/d/a$a;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Lcom/kwad/components/core/e/d/a;->a(Lcom/kwad/components/core/e/d/a$a;)I

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/kwad/components/ad/nativead/d$9;->pL:Landroid/view/View;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object v0, p0, Lcom/kwad/components/ad/nativead/d$9;->pE:Lcom/kwad/components/ad/nativead/d;

    .line 125
    .line 126
    iget-object v1, p0, Lcom/kwad/components/ad/nativead/d$9;->pL:Landroid/view/View;

    .line 127
    .line 128
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-static {v0, v1}, Lcom/kwad/components/ad/nativead/d;->a(Lcom/kwad/components/ad/nativead/d;Landroid/content/Context;)Landroid/os/Vibrator;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {p1, v0}, Lcom/kwad/sdk/utils/by;->a(Landroid/content/Context;Landroid/os/Vibrator;)V

    .line 137
    .line 138
    .line 139
    const/4 p1, 0x1

    .line 140
    return p1

    .line 141
    :cond_2
    :goto_0
    return v1
.end method
