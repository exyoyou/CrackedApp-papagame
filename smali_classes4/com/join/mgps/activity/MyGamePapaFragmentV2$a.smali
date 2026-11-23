.class Lcom/join/mgps/activity/MyGamePapaFragmentV2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyGamePapaFragmentV2;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$a;->a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/MyGamePapaFragmentV2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2$a;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$a;->a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->R(Lcom/google/android/material/tabs/TabLayout$g;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$a;->a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v0, v1}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->a0(Lcom/join/mgps/activity/MyGamePapaFragmentV2;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const/4 v0, 0x2

    .line 24
    if-ne p1, v0, :cond_2

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$a;->a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->b0(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$a;->a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->b0(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    :cond_1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$a;->a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->b0(Lcom/join/mgps/activity/MyGamePapaFragmentV2;)Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/join/mgps/activity/MyGamePapaFragmentV2$a;->a:Lcom/join/mgps/activity/MyGamePapaFragmentV2;

    .line 82
    .line 83
    iget-object p1, p1, Lcom/join/mgps/activity/MyGamePapaFragmentV2;->q:Lcom/google/android/material/tabs/TabLayout;

    .line 84
    .line 85
    new-instance v0, Lcom/join/mgps/activity/c8;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/c8;-><init>(Lcom/join/mgps/activity/MyGamePapaFragmentV2$a;)V

    .line 88
    .line 89
    .line 90
    const-wide/16 v1, 0x1f4

    .line 91
    .line 92
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    return-void
.end method
