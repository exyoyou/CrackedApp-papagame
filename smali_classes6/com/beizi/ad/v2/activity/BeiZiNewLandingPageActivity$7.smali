.class Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->n()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/model/c$d;

.field final synthetic b:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;Lcom/beizi/ad/model/c$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$7;->b:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$7;->a:Lcom/beizi/ad/model/c$d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$7;->b:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->v(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$7;->b:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->v(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)Landroid/widget/RelativeLayout;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$7;->b:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$7;->a:Lcom/beizi/ad/model/c$d;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->j(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$7;->b:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->k(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$7;->b:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->l(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$7;->b:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->m(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)F

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$7;->b:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->j(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)F

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$7;->b:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->k(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)F

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$7;->b:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->l(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)F

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$7;->b:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->m(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)F

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    const/4 v10, 0x0

    .line 103
    invoke-static/range {v0 .. v10}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;Lcom/beizi/ad/model/c$d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    :goto_0
    return-void
.end method
