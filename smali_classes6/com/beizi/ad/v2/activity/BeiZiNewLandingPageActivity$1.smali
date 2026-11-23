.class Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;


# direct methods
.method constructor <init>(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->b(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->a(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;I)I

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->c(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)Lcom/beizi/ad/model/q;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->c(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)Lcom/beizi/ad/model/q;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Lcom/beizi/ad/model/q;->b(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->d(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)Lcom/beizi/ad/internal/c/a;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->d(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)Lcom/beizi/ad/internal/c/a;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 56
    .line 57
    invoke-static {v1}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->c(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)Lcom/beizi/ad/model/q;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/beizi/ad/internal/c/a;->a(Lcom/beizi/ad/model/q;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    if-nez p1, :cond_2

    .line 65
    .line 66
    iget-object p1, p0, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity$1;->a:Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;->e(Lcom/beizi/ad/v2/activity/BeiZiNewLandingPageActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_1
    return-void
.end method
