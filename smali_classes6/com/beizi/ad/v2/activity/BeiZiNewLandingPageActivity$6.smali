.class Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/ad/a/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->d(Lcom/beizi/ad/model/c$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/beizi/ad/model/c$d;

.field final synthetic c:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;ILcom/beizi/ad/model/c$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$6;->c:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 2
    .line 3
    iput p2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$6;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$6;->b:Lcom/beizi/ad/model/c$d;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    .line 1
    const-string v0, "BeiZisAd"

    .line 2
    .line 3
    const-string v1, "handleShakeViewContent click"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/ad/lance/a/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$6;->c:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->d(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)Lcom/beizi/ad/internal/c/a;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$6;->c:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->d(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)Lcom/beizi/ad/internal/c/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/c/a;->d(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$6;->a:I

    .line 27
    .line 28
    if-ne v0, v1, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$6;->c:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->t(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$6;->c:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->g(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)Landroid/widget/FrameLayout;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$6;->c:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->g(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)Landroid/widget/FrameLayout;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$6;->c:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 54
    .line 55
    invoke-static {v2}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->t(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$6;->c:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 63
    .line 64
    invoke-static {v0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;Landroid/view/View;)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    :cond_1
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$6;->c:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->u(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)Lcom/beizi/ad/a/a/e;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$6;->c:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->u(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)Lcom/beizi/ad/a/a/e;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/beizi/ad/a/a/e;->d()V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$6;->c:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 85
    .line 86
    invoke-static {v0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;Lcom/beizi/ad/a/a/e;)Lcom/beizi/ad/a/a/e;

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$6;->c:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$6;->b:Lcom/beizi/ad/model/c$d;

    .line 92
    .line 93
    const-string v3, ""

    .line 94
    .line 95
    const-string v4, ""

    .line 96
    .line 97
    const-string v5, ""

    .line 98
    .line 99
    const-string v6, ""

    .line 100
    .line 101
    const-string v7, ""

    .line 102
    .line 103
    const-string v8, ""

    .line 104
    .line 105
    const-string v9, ""

    .line 106
    .line 107
    const-string v10, ""

    .line 108
    .line 109
    const/4 v11, 0x2

    .line 110
    invoke-static/range {v1 .. v11}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;Lcom/beizi/ad/model/c$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    .line 117
    .line 118
    :goto_0
    return-void
.end method
