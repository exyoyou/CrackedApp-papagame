.class final Lcom/kwad/sdk/mobileid/a/a$2;
.super Lcom/kwad/sdk/core/network/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwad/sdk/mobileid/a/a;->d(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kwad/sdk/core/network/o<",
        "Lcom/kwad/sdk/mobileid/a/b;",
        "Lcom/kwad/sdk/mobileid/model/CMTokenResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic biW:Lcom/kwad/sdk/mobileid/a/a;

.field final synthetic biX:Z

.field final synthetic dK:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kwad/sdk/mobileid/a/a;Landroid/content/Context;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kwad/sdk/mobileid/a/a$2;->biW:Lcom/kwad/sdk/mobileid/a/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/kwad/sdk/mobileid/a/a$2;->dK:Landroid/content/Context;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/kwad/sdk/mobileid/a/a$2;->biX:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/kwad/sdk/core/network/o;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private B(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/sdk/mobileid/a/a$2;->dK:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/mobileid/c;->b(Landroid/content/Context;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private a(Lcom/kwad/sdk/mobileid/a/b;Lcom/kwad/sdk/mobileid/model/CMTokenResponse;)V
    .locals 3
    .param p1    # Lcom/kwad/sdk/mobileid/a/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/sdk/mobileid/model/CMTokenResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Lcom/kwad/sdk/core/network/o;->onSuccess(Lcom/kwad/sdk/core/network/f;Lcom/kwad/sdk/core/response/model/BaseResultData;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/kwad/sdk/mobileid/a/a$2;->dK:Landroid/content/Context;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/kwad/sdk/utils/ai;->do(Landroid/content/Context;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const/4 p2, 0x1

    .line 15
    xor-int/2addr p1, p2

    .line 16
    iget-object v0, p0, Lcom/kwad/sdk/mobileid/a/a$2;->biW:Lcom/kwad/sdk/mobileid/a/a;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/kwad/sdk/mobileid/a/a;->a(Lcom/kwad/sdk/mobileid/a/a;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lcom/kwad/sdk/mobileid/a/a$2;->biW:Lcom/kwad/sdk/mobileid/a/a;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/kwad/sdk/mobileid/a/a;->b(Lcom/kwad/sdk/mobileid/a/a;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-ge v0, v1, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v0, 0x0

    .line 34
    :goto_0
    if-eqz p1, :cond_2

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lcom/kwad/sdk/mobileid/a/a$2;->biW:Lcom/kwad/sdk/mobileid/a/a;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/kwad/sdk/mobileid/a/a;->c(Lcom/kwad/sdk/mobileid/a/a;)I

    .line 41
    .line 42
    .line 43
    iget-boolean p1, p0, Lcom/kwad/sdk/mobileid/a/a$2;->biX:Z

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    new-instance p1, Lcom/kwad/sdk/mobileid/d;

    .line 48
    .line 49
    const-string v0, "uaidTokenCanRequestByWifi"

    .line 50
    .line 51
    invoke-direct {p1, p2, v0}, Lcom/kwad/sdk/mobileid/d;-><init>(ZLjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    new-instance p1, Lcom/kwad/sdk/mobileid/d;

    .line 56
    .line 57
    const-string v0, "uaidTokenCanRequest"

    .line 58
    .line 59
    invoke-direct {p1, p2, v0}, Lcom/kwad/sdk/mobileid/d;-><init>(ZLjava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    iget-object p2, p0, Lcom/kwad/sdk/mobileid/a/a$2;->biW:Lcom/kwad/sdk/mobileid/a/a;

    .line 63
    .line 64
    iget-object v0, p0, Lcom/kwad/sdk/mobileid/a/a$2;->dK:Landroid/content/Context;

    .line 65
    .line 66
    invoke-static {p2, v0}, Lcom/kwad/sdk/mobileid/a/a;->a(Lcom/kwad/sdk/mobileid/a/a;Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    if-nez p1, :cond_3

    .line 71
    .line 72
    new-instance p1, Lcom/kwad/sdk/mobileid/d;

    .line 73
    .line 74
    const-string p2, "noRequestUaidTokenEmpty"

    .line 75
    .line 76
    invoke-direct {p1, v2, p2}, Lcom/kwad/sdk/mobileid/d;-><init>(ZLjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_3
    new-instance p1, Lcom/kwad/sdk/mobileid/d;

    .line 81
    .line 82
    const-string p2, "noRequestUaidRetry"

    .line 83
    .line 84
    invoke-direct {p1, v2, p2}, Lcom/kwad/sdk/mobileid/d;-><init>(ZLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_2
    iget-object p2, p0, Lcom/kwad/sdk/mobileid/a/a$2;->dK:Landroid/content/Context;

    .line 88
    .line 89
    invoke-static {p2, p1}, Lcom/kwad/sdk/mobileid/c;->c(Landroid/content/Context;Lcom/kwad/sdk/mobileid/d;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method


# virtual methods
.method public final synthetic onError(Lcom/kwad/sdk/core/network/f;ILjava/lang/String;)V
    .locals 0
    .param p1    # Lcom/kwad/sdk/core/network/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/kwad/sdk/mobileid/a/a$2;->B(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final synthetic onSuccess(Lcom/kwad/sdk/core/network/f;Lcom/kwad/sdk/core/response/model/BaseResultData;)V
    .locals 0
    .param p1    # Lcom/kwad/sdk/core/network/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/sdk/core/response/model/BaseResultData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/kwad/sdk/mobileid/a/b;

    .line 2
    .line 3
    check-cast p2, Lcom/kwad/sdk/mobileid/model/CMTokenResponse;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/mobileid/a/a$2;->a(Lcom/kwad/sdk/mobileid/a/b;Lcom/kwad/sdk/mobileid/model/CMTokenResponse;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
