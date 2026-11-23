.class public Lcom/wufun/union/ad/AdStubActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private b:Lj8/a;

.field private c:Landroid/view/View;

.field private d:Landroid/os/Bundle;

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Lcom/wufun/union/ad/AdStubActivity;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wufun/union/ad/AdStubActivity;->d:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wufun/union/ad/AdStubActivity;->e:Landroid/content/ServiceConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method bindService()V
    .locals 3

    .line 1
    new-instance v0, Lcom/wufun/union/ad/AdStubActivity$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/wufun/union/ad/AdStubActivity$a;-><init>(Lcom/wufun/union/ad/AdStubActivity;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/wufun/union/ad/AdStubActivity;->e:Landroid/content/ServiceConnection;

    .line 7
    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v1, "com.wufun.union.ad.action.AdService"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/wufun/union/ad/AdStubActivity;->e:Landroid/content/ServiceConnection;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method c()V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/wufun/union/ad/AdStubActivity;->c:Landroid/view/View;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/core/view/z;->a(Landroid/view/View;)Landroid/view/WindowInsetsController;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Landroidx/core/view/h2;->a()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {}, Landroidx/core/view/i2;->a()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    or-int/2addr v1, v2

    .line 22
    invoke-static {v0, v1}, Landroidx/core/view/d0;->a(Landroid/view/WindowInsetsController;I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/wufun/union/ad/AdStubActivity;->c:Landroid/view/View;

    .line 27
    .line 28
    const/16 v1, 0x1307

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lj8/a;->inflate(Landroid/view/LayoutInflater;)Lj8/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/wufun/union/ad/AdStubActivity;->b:Lj8/a;

    .line 13
    .line 14
    invoke-virtual {p1}, Lj8/a;->a()Landroid/widget/FrameLayout;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/wufun/union/ad/AdStubActivity;->b:Lj8/a;

    .line 22
    .line 23
    iget-object p1, p1, Lj8/a;->c:Landroid/widget/TextView;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/wufun/union/ad/AdStubActivity;->c:Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/wufun/union/ad/AdStubActivity;->c()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/wufun/union/ad/AdStubActivity;->d:Landroid/os/Bundle;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/wufun/union/ad/AdStubActivity;->bindService()V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/wufun/union/ad/AdStubActivity;->b()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
