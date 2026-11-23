.class public Lcn/fly/commons/c/o;
.super Lcn/fly/commons/c/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/fly/commons/c/h;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected a()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "035aYbibdbjdg5b_bddgbe[cQchbjXbcHbabhbibgbabjba+dEbbbg@adYbgbadgMd bhbbbg*ad"

    .line 2
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "051aMbibdbjdg;b)bddgbeXc8chbjObc6babhbibgbabjba6dCbbbg7ad$bgbadg>dBbhbbbgMadPbjdj@dDbbbg!ad+ccbacjQd!bhbbbg;ad"

    invoke-static {v2}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected a(Landroid/os/IBinder;)Lcn/fly/commons/c/h$b;
    .locals 8

    .line 3
    new-instance v0, Lcn/fly/commons/c/h$b;

    invoke-direct {v0}, Lcn/fly/commons/c/h$b;-><init>()V

    const-string v1, "0041bi[b4bgba"

    .line 4
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "052aFbibdbjdg;bHbddgbe?c8chbjYbcZbabhbibgbabjba<dGbbbg!adMbgbadgVdFbhbbbgVad;bjccdj$d*bbbg_ad,ccbacj6d6bhbbbgNad"

    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/String;

    move-object v2, p0

    move-object v4, p1

    invoke-virtual/range {v2 .. v7}, Lcn/fly/commons/c/h;->a(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcn/fly/commons/c/h$b;->a:Ljava/lang/String;

    return-object v0
.end method
