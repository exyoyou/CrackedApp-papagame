.class public Lcom/join/mgps/Util/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/g0$n0;,
        Lcom/join/mgps/Util/g0$o0;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EBean;
    scope = .enum Lorg/androidannotations/annotations/EBean$Scope;->Singleton:Lorg/androidannotations/annotations/EBean$Scope;
.end annotation


# static fields
.field private static final j:Ljava/lang/String; = "customer_alert"


# instance fields
.field a:Landroid/app/Dialog;

.field b:Landroidx/appcompat/app/AlertDialog$Builder;

.field c:Lcom/join/mgps/dialog/o1;

.field d:Lcom/join/mgps/dialog/s1;

.field e:Lcom/join/mgps/dialog/r1;

.field f:Lcom/join/mgps/activity/c6;

.field private g:Lcom/join/mgps/dialog/w1;

.field private h:Lcom/join/android/app/common/dialog/c;

.field private i:Lcom/join/mgps/dialog/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/Util/g0;->b:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 6
    .line 7
    return-void
.end method

.method private synthetic G(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/Util/g0;->U(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/Util/g0;Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/Util/g0;->G(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/DomainInfoBean;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/Util/g0;Lcom/join/mgps/dialog/w1;)Lcom/join/mgps/dialog/w1;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/g0;->g:Lcom/join/mgps/dialog/w1;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic c(Lcom/join/mgps/Util/g0;)Lcom/join/android/app/common/dialog/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/Util/g0;->h:Lcom/join/android/app/common/dialog/c;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public A(Landroid/content/Context;Z)Lcom/join/mgps/dialog/f1;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "cancleAble"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    const v1, 0x7f1301b2

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1, p2}, Lcom/join/mgps/dialog/f1;-><init>(Landroid/content/Context;IZ)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public B(Landroid/content/Context;Lcom/join/mgps/Util/g0$o0;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "lienster"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    const v1, 0x7f1301b0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const p1, 0x7f0d0806

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    const p1, 0x7f0a1762

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    const v1, 0x7f0a04bb

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/widget/TextView;

    .line 32
    .line 33
    const v2, 0x7f0a04b8

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/widget/Button;

    .line 41
    .line 42
    const v3, 0x7f0a04b2

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Landroid/widget/Button;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 56
    .line 57
    const/16 v5, 0x14

    .line 58
    .line 59
    const/4 v6, 0x0

    .line 60
    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    .line 65
    .line 66
    const-string v4, "\u63d0\u793a"

    .line 67
    .line 68
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    const/16 p1, 0x11

    .line 72
    .line 73
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 74
    .line 75
    .line 76
    const-string p1, "\u4e3a\u4fdd\u8bc1\u70b9\u8bc4\u771f\u5b9e\u6027\uff0c\n\u8bf7\u5b89\u88c5\u6e38\u620f\u540e\u518d\u521b\u5efa\u70b9\u8bc4\u3002"

    .line 77
    .line 78
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    .line 80
    .line 81
    const/16 p1, 0x8

    .line 82
    .line 83
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    const-string p1, "\u6211\u77e5\u9053\u4e86"

    .line 87
    .line 88
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    new-instance p1, Lcom/join/mgps/Util/g0$j;

    .line 92
    .line 93
    invoke-direct {p1, p0, v0, p2}, Lcom/join/mgps/Util/g0$j;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/customview/t;Lcom/join/mgps/Util/g0$o0;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public C(Landroid/content/Context;)Lcom/join/mgps/dialog/v1;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/v1;

    .line 2
    .line 3
    const v1, 0x7f1301b0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/v1;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public D(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/b;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const-string v1, "\u53d6\u6d88"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "\u786e\u5b9a\u8981\u9000\u51fa\u7f16\u8f91\u5417\uff1f"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "\u786e\u5b9a"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "\u63d0\u793a"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/join/mgps/Util/g0$h;

    .line 34
    .line 35
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/Util/g0$h;-><init>(Lcom/join/mgps/Util/g0;Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public E(Landroid/content/Context;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "coin"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/b;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const-string v1, "\u7a0d\u540e"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->e(I)Lcom/join/mgps/dialog/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v1, 0x3

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    aput-object v3, v1, v2

    .line 34
    .line 35
    mul-int/lit8 v2, p2, 0x2

    .line 36
    .line 37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v3, 0x1

    .line 42
    aput-object v2, v1, v3

    .line 43
    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const/4 v2, 0x2

    .line 49
    aput-object p2, v1, v2

    .line 50
    .line 51
    const p2, 0x7f120391

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string p2, "\u77e5\u9053\u4e86"

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string p2, "\u63d0\u793a"

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance p2, Lcom/join/mgps/Util/g0$g;

    .line 75
    .line 76
    invoke-direct {p2, p0}, Lcom/join/mgps/Util/g0$g;-><init>(Lcom/join/mgps/Util/g0;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public F(Landroid/content/Context;)Lcom/join/mgps/dialog/g1;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/g1;

    .line 2
    .line 3
    const v1, 0x7f1301b2

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/g1;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public H(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->g(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "_game_id"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-class v2, Lcom/join/mgps/activity/AppDownFinishDialogActivity;

    .line 43
    .line 44
    invoke-virtual {p1, v1, v2, v0}, Lcom/join/mgps/Util/IntentUtil;->startActivity(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public I(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ZLjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "downloadTask",
            "isCheck",
            "from"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    if-nez v0, :cond_2

    .line 17
    .line 18
    move-object v2, p1

    .line 19
    goto :goto_1

    .line 20
    :cond_2
    move-object v2, v0

    .line 21
    :goto_1
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->isNoShowAddShortcut()Lorg/androidannotations/api/sharedpreferences/p;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    const/4 v4, 0x1

    .line 41
    const/4 v5, 0x0

    .line 42
    if-nez v3, :cond_3

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    const/4 v3, 0x1

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    const/4 v3, 0x0

    .line 57
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    .line 64
    .line 65
    .line 66
    invoke-static {v2, p2, v5, p4}, Lcom/join/mgps/Util/UtilsMy;->m4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    if-eqz v3, :cond_5

    .line 74
    .line 75
    if-eqz p3, :cond_5

    .line 76
    .line 77
    invoke-virtual {p2, v4}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    .line 78
    .line 79
    .line 80
    invoke-static {v2, p2, v5, p4}, Lcom/join/mgps/Util/UtilsMy;->m4(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setNotCheckAddShortcut(Z)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_5
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isOpen()Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-nez p3, :cond_6

    .line 92
    .line 93
    return-void

    .line 94
    :cond_6
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPortraitURL()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p3

    .line 102
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_7

    .line 111
    .line 112
    return-void

    .line 113
    :cond_7
    iget-object v1, p0, Lcom/join/mgps/Util/g0;->h:Lcom/join/android/app/common/dialog/c;

    .line 114
    .line 115
    if-eqz v1, :cond_8

    .line 116
    .line 117
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_8

    .line 122
    .line 123
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/Util/g0;->h:Lcom/join/android/app/common/dialog/c;

    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .line 127
    .line 128
    :catch_0
    :cond_8
    new-instance v8, Lcom/join/android/app/common/dialog/c;

    .line 129
    .line 130
    move-object v1, v8

    .line 131
    move-object v3, v7

    .line 132
    move-object v4, p3

    .line 133
    move-object v6, p2

    .line 134
    invoke-direct/range {v1 .. v6}, Lcom/join/android/app/common/dialog/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 135
    .line 136
    .line 137
    iput-object v8, p0, Lcom/join/mgps/Util/g0;->h:Lcom/join/android/app/common/dialog/c;

    .line 138
    .line 139
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/join/mgps/Util/g0;->h:Lcom/join/android/app/common/dialog/c;

    .line 143
    .line 144
    new-instance v2, Lcom/join/mgps/Util/g0$d0;

    .line 145
    .line 146
    invoke-direct {v2, p0, p1, p3, v7}, Lcom/join/mgps/Util/g0$d0;-><init>(Lcom/join/mgps/Util/g0;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/dialog/c;->h(Landroid/view/View$OnClickListener;)V

    .line 150
    .line 151
    .line 152
    iget-object p3, p0, Lcom/join/mgps/Util/g0;->h:Lcom/join/android/app/common/dialog/c;

    .line 153
    .line 154
    new-instance v1, Lcom/join/mgps/Util/g0$e0;

    .line 155
    .line 156
    move-object v3, v1

    .line 157
    move-object v4, p0

    .line 158
    move-object v5, v0

    .line 159
    move-object v7, p1

    .line 160
    move-object v8, p4

    .line 161
    invoke-direct/range {v3 .. v8}, Lcom/join/mgps/Util/g0$e0;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/pref/PrefDef_;Lcom/github/snowdream/android/app/downloader/DownloadTask;Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3, v1}, Lcom/join/android/app/common/dialog/c;->g(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    return-void
.end method

.method public J(Landroid/content/Context;Lcom/join/mgps/dto/DomainInfoBean;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "pd_info",
            "message"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastShowBespeakTipTime()Lorg/androidannotations/api/sharedpreferences/k;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Long;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    invoke-static {v0, v1}, Lcom/join/mgps/Util/e0;->z(J)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/Util/g0;->i:Lcom/join/mgps/dialog/q;

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/Util/g0;->i:Lcom/join/mgps/dialog/q;

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 39
    .line 40
    .line 41
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/q;

    .line 42
    .line 43
    invoke-direct {v0, p1}, Lcom/join/mgps/dialog/q;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/join/mgps/Util/g0;->i:Lcom/join/mgps/dialog/q;

    .line 47
    .line 48
    invoke-virtual {v0, p2, p3}, Lcom/join/mgps/dialog/q;->a(Lcom/join/mgps/dto/DomainInfoBean;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method public K(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "commonGameInfoBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    const v1, 0x7f1301b0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0d0887

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0a04b1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/TextView;

    .line 23
    .line 24
    const v2, 0x7f0a04b8

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/widget/TextView;

    .line 32
    .line 33
    const v3, 0x7f0a1762

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/widget/TextView;

    .line 41
    .line 42
    const v4, 0x7f0a04bb

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/widget/TextView;

    .line 50
    .line 51
    const-string v5, "\u66f4\u65b0\u63d0\u793a"

    .line 52
    .line 53
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v5, "\u3010"

    .line 62
    .line 63
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v5, "\u3011\u53ef\u66f4\u65b0\u7248\u672c"

    .line 74
    .line 75
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    const-string v3, "\u7acb\u5373\u66f4\u65b0"

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    const-string v3, "\u76f4\u63a5\u542f\u52a8"

    .line 91
    .line 92
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lcom/join/mgps/Util/g0$c;

    .line 96
    .line 97
    invoke-direct {v3, p0, p1, p2, v0}, Lcom/join/mgps/Util/g0$c;-><init>(Lcom/join/mgps/Util/g0;Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/customview/t;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    new-instance v2, Lcom/join/mgps/Util/g0$d;

    .line 104
    .line 105
    invoke-direct {v2, p0, p1, p2, v0}, Lcom/join/mgps/Util/g0$d;-><init>(Lcom/join/mgps/Util/g0;Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/customview/t;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public L(Landroid/content/Context;)Lcom/join/mgps/customview/t;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    const v1, 0x7f1301b0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0d00fc

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0a04b1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/Button;

    .line 23
    .line 24
    const v2, 0x7f0a04b8

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/widget/Button;

    .line 32
    .line 33
    const v3, 0x7f0a1762

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/widget/TextView;

    .line 41
    .line 42
    const v4, 0x7f0a04bb

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/widget/TextView;

    .line 50
    .line 51
    const v5, 0x7f0a04bd

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Landroid/widget/TextView;

    .line 59
    .line 60
    const-string v6, "\u5b8c\u5584\u8d44\u6599"

    .line 61
    .line 62
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    const v3, 0x7f1204ee

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    const/16 p1, 0x8

    .line 76
    .line 77
    invoke-virtual {v5, p1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    const-string p1, "\u53bb\u5b8c\u5584"

    .line 81
    .line 82
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    const-string p1, "\u4e0b\u6b21\u518d\u8bf4"

    .line 86
    .line 87
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Lcom/join/mgps/Util/g0$l;

    .line 91
    .line 92
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/Util/g0$l;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/customview/t;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    new-instance p1, Lcom/join/mgps/Util/g0$m;

    .line 99
    .line 100
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/Util/g0$m;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/customview/t;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    return-object v0
.end method

.method public M(Landroid/content/Context;)Lcom/join/mgps/customview/t;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    const v1, 0x7f1301b0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0d00fc

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0a04b1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/Button;

    .line 23
    .line 24
    const v2, 0x7f0a04b8

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/widget/Button;

    .line 32
    .line 33
    const v3, 0x7f0a1762

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/widget/TextView;

    .line 41
    .line 42
    const v4, 0x7f0a04bb

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/widget/TextView;

    .line 50
    .line 51
    const v5, 0x7f0a04bd

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Landroid/widget/TextView;

    .line 59
    .line 60
    const-string v6, "\u63d0\u793a"

    .line 61
    .line 62
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    const-string v3, "\u94dc\u677f\u4e0d\u8db3\uff0c\u6210\u4e3a\u609f\u996d\u4f1a\u5458\u6bcf\u5929\u5373\u53ef\u9886\u53d6300\u94dc\u677f\u54e6~"

    .line 66
    .line 67
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    const/16 v3, 0x8

    .line 71
    .line 72
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    const-string v3, "\u6211\u8981VIP\u7279\u6743"

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const v4, 0x7f060393

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    const-string v3, "\u53d6\u6d88"

    .line 95
    .line 96
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    .line 98
    .line 99
    new-instance v3, Lcom/join/mgps/Util/g0$n;

    .line 100
    .line 101
    invoke-direct {v3, p0, p1, v0}, Lcom/join/mgps/Util/g0$n;-><init>(Lcom/join/mgps/Util/g0;Landroid/content/Context;Lcom/join/mgps/customview/t;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    new-instance p1, Lcom/join/mgps/Util/g0$o;

    .line 108
    .line 109
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/Util/g0$o;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/customview/t;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    return-object v0
.end method

.method public N(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "manager",
            "title",
            "hint",
            "cancelStr",
            "okStr"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "customer_alert"

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {p2, p3, p4, p5}, Lcom/join/mgps/dialog/CustomerAlertDialog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dialog/CustomerAlertDialog;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p2, p1, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public O(Landroid/content/Context;ILcom/join/mgps/callbacks/d;)Lcom/join/mgps/customview/t;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "context",
            "type",
            "callBack"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    const v1, 0x7f1301b0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const p1, 0x7f0d00fc

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    const p1, 0x7f0a04b1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/Button;

    .line 23
    .line 24
    const v1, 0x7f0a04b8

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Landroid/widget/Button;

    .line 32
    .line 33
    const v2, 0x7f0a1762

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/widget/TextView;

    .line 41
    .line 42
    const v3, 0x7f0a04bb

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Landroid/widget/TextView;

    .line 50
    .line 51
    const v4, 0x7f0a04bd

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    check-cast v4, Landroid/widget/TextView;

    .line 59
    .line 60
    const v5, 0x7f0a1153

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Landroid/widget/ImageView;

    .line 68
    .line 69
    const/4 v6, 0x1

    .line 70
    const-string v7, "\u6211\u77e5\u9053\u4e86"

    .line 71
    .line 72
    const-string v8, "\u6e38\u620f\u65b0\u52a8\u6001\u63d0\u9192\u7559\u610f\u901a\u77e5\u680f\u548c\u6d88\u606f\u4e2d\u5fc3"

    .line 73
    .line 74
    const/4 v9, 0x0

    .line 75
    const/16 v10, 0x8

    .line 76
    .line 77
    if-eq p2, v6, :cond_2

    .line 78
    .line 79
    const/4 v6, 0x2

    .line 80
    if-eq p2, v6, :cond_1

    .line 81
    .line 82
    const/4 v5, 0x3

    .line 83
    if-eq p2, v5, :cond_0

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    const-string p2, "\u53d6\u6d88\u5173\u6ce8"

    .line 87
    .line 88
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    .line 90
    .line 91
    const-string p2, "\u53d6\u6d88\u540e\u4f60\u5c06\u65e0\u6cd5\u53ca\u65f6\u6536\u5230\u793c\u5305\u3001\u5f00\u6d4b\u7b49\u52a8\u6001\u7684\u63d0\u9192\u54e6~\u786e\u5b9a\u8981\u53d6\u6d88\u5417\uff1f"

    .line 92
    .line 93
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v10}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    const-string p2, "\u786e\u5b9a"

    .line 100
    .line 101
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    const-string p2, "\u5173\u95ed"

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    const-string p2, "\u6536\u85cf\u6210\u529f"

    .line 111
    .line 112
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    const-string p2, "\u6e38\u620f\u65b0\u52a8\u6001\u5305\u62ec\uff1a\u6e38\u620f\u5f00\u653e\u4e0b\u8f7d\u3001\u5f00\u6d4b\u3001\u793c\u5305\u3001\u6d3b\u52a8\u7b49"

    .line 122
    .line 123
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    const-string p2, "\u9884\u7ea6\u6210\u529f"

    .line 137
    .line 138
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    .line 143
    .line 144
    const-string p2, "\u6e38\u620f\u4e0a\u7ebf\u540e\u5c06\u4e3a\u4f60\u53d1\u653e\u793c\u5305\u7b49\u798f\u5229"

    .line 145
    .line 146
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    :goto_0
    new-instance p2, Lcom/join/mgps/Util/g0$t;

    .line 156
    .line 157
    invoke-direct {p2, p0, p3, v0}, Lcom/join/mgps/Util/g0$t;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/callbacks/d;Lcom/join/mgps/customview/t;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    new-instance p2, Lcom/join/mgps/Util/g0$u;

    .line 164
    .line 165
    invoke-direct {p2, p0, p3, v0}, Lcom/join/mgps/Util/g0$u;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/callbacks/d;Lcom/join/mgps/customview/t;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    return-object v0
.end method

.method public P(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setType(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setGameId(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "\u8be5\u6e38\u620f\u4e0e\u5b89\u5353"

    .line 19
    .line 20
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, "\u7cfb\u7edf\u7248\u672c\u4e0d\u517c\u5bb9"

    .line 29
    .line 30
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {v0, p2}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setTitle(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "\u8be5\u6e38\u620f\u5728\u5b89\u5353"

    .line 46
    .line 47
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "\u7248\u672c\u4e2d\u53ef\u80fd\u5b58\u5728\u95ea\u9000\u3001\u663e\u793a\u6548\u679c\u4e0d\u4f73\u3001\u8fd0\u884c\u4e0d\u6d41\u7545\u7b49\u73b0\u8c61"

    .line 54
    .line 55
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {v0, p2}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setContent(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string p2, "\u4ecd\u8981\u4e0b\u8f7d"

    .line 66
    .line 67
    invoke-virtual {v0, p2}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setPositive(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance p2, Landroid/content/Intent;

    .line 71
    .line 72
    const-class v1, Lcom/join/mgps/activity/WarningDialogActivity;

    .line 73
    .line 74
    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .line 76
    .line 77
    const/high16 v1, 0x10000000

    .line 78
    .line 79
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    const-string v1, "_param"

    .line 83
    .line 84
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public Q(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "gameId",
            "cpuType"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setType(I)V

    .line 8
    .line 9
    .line 10
    const-string v2, "\u6b64\u8bbe\u5907\u8fd0\u884c\u8be5\u6e38\u620f\u7a33\u5b9a\u6027\u6b20\u4f73!"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setTitle(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x60

    .line 16
    .line 17
    if-ne p3, v2, :cond_0

    .line 18
    .line 19
    const-string p3, "32\u300164"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string p3, ""

    .line 31
    .line 32
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v3, "\u6b64\u8bbe\u5907\u6700\u4f4e\u517c\u5bb9ARM "

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p3, "\u4f4d\u6e38\u620f\uff0c\u7ee7\u7eed\u4e0b\u8f7d\n\u53ef\u80fd\u51fa\u73b0\u65e0\u6cd5\u5b89\u88c5\u3001\u95ea\u9000\u3001\u5361\u987f\u3001\u5ef6\u8fdf\u7b49\u95ee\u9898~"

    .line 53
    .line 54
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-virtual {v0, p3}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setContent(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string p3, "\u4ecd\u8981\u4e0b\u8f7d"

    .line 65
    .line 66
    invoke-virtual {v0, p3}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setPositive(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setEvent(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p2}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setGameId(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance p3, Landroid/content/Intent;

    .line 76
    .line 77
    const-class v1, Lcom/join/mgps/activity/WarningDialogActivity;

    .line 78
    .line 79
    invoke-direct {p3, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    .line 81
    .line 82
    const/high16 v1, 0x10000000

    .line 83
    .line 84
    invoke-virtual {p3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    const-string v1, "_param"

    .line 88
    .line 89
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 93
    .line 94
    .line 95
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    sget-object p3, Lcom/papa/sim/statistic/Event;->gameDownloadNoCpuTips:Lcom/papa/sim/statistic/Event;

    .line 100
    .line 101
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 102
    .line 103
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-virtual {p1, p3, p2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public R(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dialog/p0$c;)Landroid/app/Dialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x10
        }
        names = {
            "context",
            "title",
            "url",
            "clickListener"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/p0;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/p0;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p3}, Lcom/join/mgps/dialog/p0;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/p0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/p0;->e(Ljava/lang/String;)Lcom/join/mgps/dialog/p0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/p0;->b(Z)Lcom/join/mgps/dialog/p0;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1, p4}, Lcom/join/mgps/dialog/p0;->c(Lcom/join/mgps/dialog/p0$c;)Lcom/join/mgps/dialog/p0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1
.end method

.method public S(Landroid/content/Context;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "showType",
            "tasks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/github/snowdream/android/app/downloader/DownloadTask;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_7

    .line 2
    .line 3
    if-eqz p3, :cond_7

    .line 4
    .line 5
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 27
    .line 28
    const-string v2, "3875871586"

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    const-string v2, "2057111073"

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 51
    .line 52
    :cond_2
    invoke-interface {p3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_4

    .line 60
    .line 61
    return-void

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/Util/g0;->f:Lcom/join/mgps/activity/c6;

    .line 63
    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/Util/g0;->f:Lcom/join/mgps/activity/c6;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 75
    .line 76
    .line 77
    :cond_5
    new-instance v0, Lcom/join/mgps/activity/c6;

    .line 78
    .line 79
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/activity/c6;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/join/mgps/Util/g0;->f:Lcom/join/mgps/activity/c6;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_6

    .line 89
    .line 90
    iget-object p1, p0, Lcom/join/mgps/Util/g0;->f:Lcom/join/mgps/activity/c6;

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 93
    .line 94
    .line 95
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/Util/g0;->f:Lcom/join/mgps/activity/c6;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/join/mgps/activity/c6;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    .line 104
    .line 105
    nop

    .line 106
    :cond_7
    :goto_0
    return-void
.end method

.method public T(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "args",
            "gameId",
            "cpuType"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setType(I)V

    .line 16
    .line 17
    .line 18
    const-string v3, ""

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    move-object p2, v3

    .line 23
    :cond_0
    invoke-virtual {v0, p2}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setArgs(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setGameId(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance p2, Landroid/content/Intent;

    .line 30
    .line 31
    const-class p3, Lcom/join/mgps/activity/WarningDialogActivity;

    .line 32
    .line 33
    invoke-direct {p2, p1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .line 35
    .line 36
    const/high16 v4, 0x10000000

    .line 37
    .line 38
    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const-string v5, "_param"

    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    const/16 v6, 0x20

    .line 46
    .line 47
    const/16 v7, 0x40

    .line 48
    .line 49
    if-ne p4, v7, :cond_2

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCpu_type()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-ne v8, v6, :cond_2

    .line 56
    .line 57
    const-string p4, "\u8bf7\u6ce8\u610f"

    .line 58
    .line 59
    invoke-virtual {v0, p4}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setTitle(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p4, "\u6b64\u6e38\u620f\u5728\u60a8\u7684\u8bbe\u5907\u4e0a\u5b58\u5728\u7a33\u5b9a\u6027\u95ee\u9898\uff0c\u8bf7\u5148\u5b89\u88c5\u7a33\u5b9a\u6027\u4f18\u5316\u63d2\u4ef6\uff0c\u518d\u8fd0\u884c\u6e38\u620f"

    .line 63
    .line 64
    invoke-virtual {v0, p4}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setContent(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string p4, "\u7acb\u5373\u5b89\u88c5"

    .line 68
    .line 69
    invoke-virtual {v0, p4}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setPositive(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v3, "\u53d6\u6d88"

    .line 73
    .line 74
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setNegative(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->isCloudGame()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    const/4 v6, 0x3

    .line 82
    if-eqz v4, :cond_1

    .line 83
    .line 84
    invoke-static {}, Lcom/join/mgps/Util/w0;->j()Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_1

    .line 89
    .line 90
    invoke-virtual {v0, v6}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setType(I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, p4}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setPositive(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setNegative(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setType(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p4}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setPositive(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setNegative(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_0
    invoke-virtual {v0, v6}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setEvent(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 116
    .line 117
    .line 118
    move-result-object p4

    .line 119
    new-instance v0, Lcom/join/mgps/Util/g0$f0;

    .line 120
    .line 121
    invoke-direct {v0, p0, p1, v1}, Lcom/join/mgps/Util/g0$f0;-><init>(Lcom/join/mgps/Util/g0;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p4, p1, p3, p2, v0}, Lcom/join/mgps/Util/IntentUtil;->startActivityWithCallback(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_2
    if-ne p4, v6, :cond_3

    .line 129
    .line 130
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCpu_type()I

    .line 131
    .line 132
    .line 133
    move-result p3

    .line 134
    if-ne p3, v7, :cond_3

    .line 135
    .line 136
    const-string p3, "\u6b64\u6e38\u620f\u4ec5\u652f\u630164\u4f4d\u624b\u673a\uff0c\u60a8\u7684\u8bbe\u5907\u65e0\u6cd5\u6b63\u5e38\u8fd0\u884c\u6b64\u6e38\u620f"

    .line 137
    .line 138
    invoke-virtual {v0, p3}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setContent(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string p3, "\u6211\u77e5\u9053\u4e86"

    .line 142
    .line 143
    invoke-virtual {v0, p3}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setConfirm(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const/4 p3, 0x1

    .line 147
    invoke-virtual {v0, p3}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setEvent(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 157
    .line 158
    .line 159
    return-void

    .line 160
    :cond_3
    const-string p3, "\u6b64\u8bbe\u5907\u8fd0\u884c\u8be5\u6e38\u620f\u7a33\u5b9a\u6027\u6b20\u4f73!"

    .line 161
    .line 162
    invoke-virtual {v0, p3}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setTitle(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const/16 p3, 0x60

    .line 166
    .line 167
    if-ne p4, p3, :cond_4

    .line 168
    .line 169
    const-string p3, "32\u300164"

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v1, "\u6b64\u8bbe\u5907\u6700\u4f4e\u517c\u5bb9ARM "

    .line 193
    .line 194
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string p3, "\u4f4d\u6e38\u620f\uff0c\u7ee7\u7eed\u542f\u52a8\n\u6e38\u620f\u53ef\u80fd\u51fa\u73b0\u95ea\u9000\u3001\u9ed1\u5c4f\u3001\u5361\u987f\u3001\u5ef6\u8fdf\u7b49\u95ee\u9898~"

    .line 201
    .line 202
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p3

    .line 209
    invoke-virtual {v0, p3}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setContent(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    const-string p3, "\u542f\u52a8"

    .line 213
    .line 214
    invoke-virtual {v0, p3}, Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;->setPositive(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 221
    .line 222
    .line 223
    return-void
.end method

.method public U(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "gameId",
            "bean"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/g0;->c:Lcom/join/mgps/dialog/o1;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/Util/g0;->c:Lcom/join/mgps/dialog/o1;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 23
    .line 24
    .line 25
    :cond_1
    new-instance v0, Lcom/join/mgps/dialog/o1;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lcom/join/mgps/dialog/o1;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/Util/g0;->c:Lcom/join/mgps/dialog/o1;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/Util/g0;->c:Lcom/join/mgps/dialog/o1;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 41
    .line 42
    .line 43
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/Util/g0;->c:Lcom/join/mgps/dialog/o1;

    .line 44
    .line 45
    invoke-virtual {p1, p2, p3}, Lcom/join/mgps/dialog/o1;->a(Ljava/lang/String;Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_3
    :goto_0
    const/4 p1, 0x2

    .line 50
    new-array p1, p1, [Ljava/lang/String;

    .line 51
    .line 52
    const-string p3, "WF"

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    aput-object p3, p1, v0

    .line 56
    .line 57
    new-instance p3, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v0, "mod questionnaire "

    .line 63
    .line 64
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    const/4 p3, 0x1

    .line 75
    aput-object p2, p1, p3

    .line 76
    .line 77
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void
.end method

.method public V(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ModFeedbackBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "gameId",
            "stdGameId",
            "data"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/g0;->e:Lcom/join/mgps/dialog/r1;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/Util/g0;->e:Lcom/join/mgps/dialog/r1;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 23
    .line 24
    .line 25
    :cond_1
    new-instance v0, Lcom/join/mgps/dialog/r1;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lcom/join/mgps/dialog/r1;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/Util/g0;->e:Lcom/join/mgps/dialog/r1;

    .line 31
    .line 32
    invoke-virtual {v0, p2, p3, p4}, Lcom/join/mgps/dialog/r1;->f(Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ModFeedbackBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method public W(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "gameId",
            "stdGameId"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/Util/g0;->d:Lcom/join/mgps/dialog/s1;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/Util/g0;->d:Lcom/join/mgps/dialog/s1;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 23
    .line 24
    .line 25
    :cond_1
    new-instance v0, Lcom/join/mgps/dialog/s1;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lcom/join/mgps/dialog/s1;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/Util/g0;->d:Lcom/join/mgps/dialog/s1;

    .line 31
    .line 32
    invoke-virtual {v0, p2, p3}, Lcom/join/mgps/dialog/s1;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method public X(Landroid/content/Context;Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "data",
            "localType"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/join/mgps/Util/g0;->Y(Landroid/content/Context;Lcom/join/mgps/dto/OnlineCouponConfigBean;ILcom/join/mgps/Util/g0$n0;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public Y(Landroid/content/Context;Lcom/join/mgps/dto/OnlineCouponConfigBean;ILcom/join/mgps/Util/g0$n0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "data",
            "localType",
            "callback"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/dialog/w1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/join/mgps/dialog/w1;-><init>(Landroid/content/Context;Lcom/join/mgps/dto/OnlineCouponConfigBean;I)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/Util/g0;->g:Lcom/join/mgps/dialog/w1;

    .line 7
    .line 8
    new-instance p2, Lcom/join/mgps/Util/g0$c0;

    .line 9
    .line 10
    invoke-direct {p2, p0, p4}, Lcom/join/mgps/Util/g0$c0;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/Util/g0$n0;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/Util/g0;->g:Lcom/join/mgps/dialog/w1;

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    if-eqz p2, :cond_1

    .line 30
    .line 31
    const/4 p4, 0x3

    .line 32
    if-ne p3, p4, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/wufan/user/service/protobuf/UserInfo;->getAccountType()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    new-instance p3, Lcom/join/mgps/pref/PrefDef_;

    .line 39
    .line 40
    invoke-direct {p3, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    if-ne p2, p1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p3}, Lcom/join/mgps/pref/PrefDef_;->lastQuitShowOnlineCouponTime()Lorg/androidannotations/api/sharedpreferences/k;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide p2

    .line 54
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p3}, Lcom/join/mgps/pref/PrefDef_;->lastQuitShowOnlineCouponTimeGuset()Lorg/androidannotations/api/sharedpreferences/k;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 67
    .line 68
    .line 69
    move-result-wide p2

    .line 70
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    return-void
.end method

.method public Z(Landroid/content/Context;Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "permission"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/g0;->a:Landroid/app/Dialog;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/Util/g0;->a:Landroid/app/Dialog;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/Util/g0;->a:Landroid/app/Dialog;

    .line 18
    .line 19
    :cond_1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 20
    .line 21
    const v1, 0x7f13000d

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/Util/g0;->b:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 28
    .line 29
    iget-object v0, p2, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 30
    .line 31
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/Util/g0;->b:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 41
    .line 42
    const-string v1, "\u63d0\u793a"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 45
    .line 46
    .line 47
    iget-object v0, p2, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 48
    .line 49
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    iget-object v0, p2, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 58
    .line 59
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/Util/g0;->b:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    .line 76
    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object p2, p2, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/join/mgps/Util/g0;->b:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 94
    .line 95
    const-string v0, "\u9700\u8981\u6253\u5f00\u8bfb\u5199\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    .line 96
    .line 97
    invoke-virtual {p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 98
    .line 99
    .line 100
    :goto_1
    iget-object p2, p0, Lcom/join/mgps/Util/g0;->b:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 101
    .line 102
    new-instance v0, Lcom/join/mgps/Util/g0$k;

    .line 103
    .line 104
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/Util/g0$k;-><init>(Lcom/join/mgps/Util/g0;Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    const-string p1, "\u53bb\u6253\u5f00"

    .line 108
    .line 109
    invoke-virtual {p2, p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/join/mgps/Util/g0;->b:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 113
    .line 114
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iput-object p1, p0, Lcom/join/mgps/Util/g0;->a:Landroid/app/Dialog;

    .line 119
    .line 120
    return-void
.end method

.method public a0(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/db/tables/EMUApkTable;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "gameId",
            "emuApkTable",
            "from"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/dialog/PlugUpdateDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugUpdateDialog_$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p4}, Lcom/join/mgps/dialog/PlugUpdateDialog_$a;->a(Ljava/lang/String;)Lcom/join/mgps/dialog/PlugUpdateDialog_$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2}, Lcom/join/mgps/dialog/PlugUpdateDialog_$a;->b(Ljava/lang/String;)Lcom/join/mgps/dialog/PlugUpdateDialog_$a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p3}, Lcom/join/mgps/dialog/PlugUpdateDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugUpdateDialog_$a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/high16 p2, 0x20000000

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/join/mgps/dialog/PlugUpdateDialog_$a;

    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public b0(Landroid/content/Context;Lcom/join/mgps/dto/WxProgram;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "wxProgram"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/join/mgps/activity/PrivateDomainDefaultActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PrivateDomainDefaultActivity_$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/PrivateDomainDefaultActivity_$a;->a(Lcom/join/mgps/dto/WxProgram;)Lcom/join/mgps/activity/PrivateDomainDefaultActivity_$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public c0(Landroid/content/Context;Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "domainInfoBean"
        }
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity_;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v0, v0, Lcom/join/mgps/activity/EndGameActivity_;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    instance-of v0, v0, Lcom/join/mgps/activity/EndGameLaunchActivity_;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/MApplication;->getActivity()Landroid/app/Activity;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    instance-of v0, v0, Lcom/join/mgps/activity/EndGameDetailActivity_;

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    invoke-static {p1}, Lcom/join/mgps/activity/PrivateDomainDownloadActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/PrivateDomainDownloadActivity_$a;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/PrivateDomainDownloadActivity_$a;->a(Lcom/join/mgps/dto/DomainInfoBean;)Lcom/join/mgps/activity/PrivateDomainDownloadActivity_$a;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/high16 p2, 0x30400000

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lorg/androidannotations/api/builder/e;->flags(I)Lorg/androidannotations/api/builder/e;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/join/mgps/activity/PrivateDomainDownloadActivity_$a;

    .line 56
    .line 57
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    .line 64
    .line 65
    :cond_0
    :goto_0
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/callbacks/e;)Landroid/app/Dialog;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "context",
            "title",
            "content",
            "cancleText",
            "okText",
            "callback"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    const v1, 0x7f1301b0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const p1, 0x7f0d01cd

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 20
    .line 21
    .line 22
    const p1, 0x7f0a04b2

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Landroid/widget/Button;

    .line 30
    .line 31
    const v1, 0x7f0a04b8

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/widget/Button;

    .line 39
    .line 40
    const v2, 0x7f0a04bb

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Landroid/widget/TextView;

    .line 48
    .line 49
    const v3, 0x7f0a1762

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Landroid/widget/TextView;

    .line 57
    .line 58
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    new-instance p2, Lcom/join/mgps/Util/g0$w;

    .line 71
    .line 72
    invoke-direct {p2, p0, p6, v0}, Lcom/join/mgps/Util/g0$w;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/callbacks/e;Landroid/app/Dialog;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    new-instance p2, Lcom/join/mgps/Util/g0$x;

    .line 79
    .line 80
    invoke-direct {p2, p0, p6, v0}, Lcom/join/mgps/Util/g0$x;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/callbacks/e;Landroid/app/Dialog;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    return-object v0
.end method

.method public d0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "context",
            "qqkey",
            "imageUrl",
            "qqqunS"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    const v0, 0x7f1301b0

    .line 4
    .line 5
    .line 6
    invoke-direct {v6, p1, v0}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const v0, 0x7f0d0801

    .line 10
    .line 11
    .line 12
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    const v0, 0x7f0a03b8

    .line 16
    .line 17
    .line 18
    invoke-virtual {v6, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 23
    .line 24
    const v1, 0x7f0a08cd

    .line 25
    .line 26
    .line 27
    invoke-virtual {v6, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    const v2, 0x7f08018d

    .line 34
    .line 35
    .line 36
    invoke-static {v1, v2, p3}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const p3, 0x7f0a04b8

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, p3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    check-cast p3, Landroid/widget/Button;

    .line 47
    .line 48
    new-instance v1, Lcom/join/mgps/Util/g0$y;

    .line 49
    .line 50
    invoke-direct {v1, p0, v6}, Lcom/join/mgps/Util/g0$y;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/customview/t;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    .line 55
    .line 56
    new-instance v7, Lcom/join/mgps/Util/g0$z;

    .line 57
    .line 58
    move-object v0, v7

    .line 59
    move-object v1, p0

    .line 60
    move-object v2, v6

    .line 61
    move-object v3, p1

    .line 62
    move-object v4, p2

    .line 63
    move-object v5, p4

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/Util/g0$z;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/customview/t;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    invoke-virtual {v6, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public e(Landroid/content/Context;)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/MApplication;->p()Lcom/join/mgps/pref/PrefDef_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastLaunchModGameId()Lorg/androidannotations/api/sharedpreferences/p;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_run_state()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x3

    .line 39
    if-eq v3, v4, :cond_0

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getGame_run_state()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_3

    .line 46
    .line 47
    :cond_0
    sget-object v3, Lcom/MApplication;->z:Lcom/MApplication;

    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/MApplication;->p()Lcom/join/mgps/pref/PrefDef_;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lcom/join/mgps/pref/PrefDef_;->privateDomainFeedbackInfo()Lorg/androidannotations/api/sharedpreferences/p;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v3}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    const-wide/16 v5, 0x4e20

    .line 68
    .line 69
    if-eqz v4, :cond_2

    .line 70
    .line 71
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const-class v7, Lcom/join/mgps/dto/DomainInfoBean;

    .line 76
    .line 77
    invoke-virtual {v4, v3, v7}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Lcom/join/mgps/dto/DomainInfoBean;

    .line 82
    .line 83
    if-eqz v3, :cond_3

    .line 84
    .line 85
    sget-object v4, Lcom/MApplication;->z:Lcom/MApplication;

    .line 86
    .line 87
    invoke-virtual {v4}, Lcom/MApplication;->p()Lcom/join/mgps/pref/PrefDef_;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Lcom/join/mgps/pref/PrefDef_;->pd_ad_config()Lorg/androidannotations/api/sharedpreferences/p;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {v4}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    check-cast v4, Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v4}, Lcom/join/mgps/dto/PdAdCfgBean;->convertStr2Bean(Ljava/lang/String;)Lcom/join/mgps/dto/PdAdCfgBean;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    const/4 v7, 0x1

    .line 106
    if-eqz v4, :cond_1

    .line 107
    .line 108
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFeed_back_show_times()I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    invoke-virtual {v4, v8}, Lcom/join/mgps/dto/PdAdCfgBean;->canShowStartUp(I)Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_1

    .line 117
    .line 118
    const/4 v4, 0x1

    .line 119
    goto :goto_0

    .line 120
    :cond_1
    const/4 v4, 0x0

    .line 121
    :goto_0
    invoke-virtual {v3}, Lcom/join/mgps/dto/DomainInfoBean;->getGameId()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v8

    .line 129
    if-eqz v8, :cond_3

    .line 130
    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 132
    .line 133
    .line 134
    move-result-wide v8

    .line 135
    invoke-virtual {v3}, Lcom/join/mgps/dto/DomainInfoBean;->getLaunchTime()J

    .line 136
    .line 137
    .line 138
    move-result-wide v10

    .line 139
    sub-long/2addr v8, v10

    .line 140
    cmp-long v10, v8, v5

    .line 141
    .line 142
    if-gez v10, :cond_3

    .line 143
    .line 144
    if-eqz v4, :cond_3

    .line 145
    .line 146
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getFeed_back_show_times()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    add-int/2addr v2, v7

    .line 151
    invoke-virtual {v1, v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setFeed_back_show_times(I)V

    .line 152
    .line 153
    .line 154
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v2, v1}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    new-instance v1, Landroid/os/Handler;

    .line 162
    .line 163
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 164
    .line 165
    .line 166
    new-instance v2, Lcom/join/mgps/Util/f0;

    .line 167
    .line 168
    invoke-direct {v2, p0, p1, v0, v3}, Lcom/join/mgps/Util/f0;-><init>(Lcom/join/mgps/Util/g0;Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/dto/DomainInfoBean;)V

    .line 169
    .line 170
    .line 171
    const-wide/16 v3, 0xc8

    .line 172
    .line 173
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 174
    .line 175
    .line 176
    return v7

    .line 177
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 178
    .line 179
    .line 180
    move-result-wide v3

    .line 181
    invoke-virtual {v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getOpenTime()J

    .line 182
    .line 183
    .line 184
    move-result-wide v7

    .line 185
    sub-long/2addr v3, v7

    .line 186
    cmp-long v1, v3, v5

    .line 187
    .line 188
    if-gez v1, :cond_3

    .line 189
    .line 190
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    sget-object v1, Lcom/papa/sim/statistic/Event;->VMGameStartFailError:Lcom/papa/sim/statistic/Event;

    .line 195
    .line 196
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 197
    .line 198
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, v0}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {p1, v1, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 206
    .line 207
    .line 208
    :cond_3
    return v2
.end method

.method public e0(Landroid/content/Context;)Lcom/join/mgps/customview/t;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    const v1, 0x7f1301b0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0d00fc

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0a04b1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/Button;

    .line 23
    .line 24
    const v2, 0x7f0a04b8

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/widget/Button;

    .line 32
    .line 33
    const v3, 0x7f0a1762

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/widget/TextView;

    .line 41
    .line 42
    const v4, 0x7f0a04bb

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/widget/TextView;

    .line 50
    .line 51
    const v5, 0x7f0a04bd

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Landroid/widget/TextView;

    .line 59
    .line 60
    const-string v6, "\u63d0\u793a"

    .line 61
    .line 62
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    const v3, 0x7f12031c

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    const/16 p1, 0x8

    .line 76
    .line 77
    invoke-virtual {v5, p1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    const-string p1, "\u4e86\u89e3SVIP"

    .line 81
    .line 82
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    const-string p1, "\u4e0b\u6b21\u518d\u8bf4"

    .line 86
    .line 87
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Lcom/join/mgps/Util/g0$p;

    .line 91
    .line 92
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/Util/g0$p;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/customview/t;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    new-instance p1, Lcom/join/mgps/Util/g0$q;

    .line 99
    .line 100
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/Util/g0$q;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/customview/t;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    return-object v0
.end method

.method public f(Landroid/content/Context;Ljava/util/List;Lv6/c;IZ)Landroid/app/Dialog;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "couponsDatas",
            "cardIDNumber",
            "money",
            "isMixPay"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CouponsData;",
            ">;",
            "Lv6/c;",
            "IZ)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/dialog/d0;

    .line 2
    .line 3
    const v2, 0x7f130162

    .line 4
    .line 5
    .line 6
    move-object v0, v7

    .line 7
    move-object v1, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move v5, p4

    .line 11
    move v6, p5

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/dialog/d0;-><init>(Landroid/content/Context;ILjava/util/List;Lv6/c;IZ)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const/4 p3, 0x0

    .line 24
    invoke-virtual {p2, p3, p3, p3, p3}, Landroid/view/View;->setPadding(IIII)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const/4 p3, -0x1

    .line 32
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 33
    .line 34
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 37
    .line 38
    .line 39
    return-object v7
.end method

.method public f0(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "downloadTask"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    const v1, 0x7f1301b0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0d0887

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0a04b1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/TextView;

    .line 23
    .line 24
    const v2, 0x7f0a04b8

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/widget/TextView;

    .line 32
    .line 33
    const v3, 0x7f0a1762

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/widget/TextView;

    .line 41
    .line 42
    const v4, 0x7f0a04bb

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/widget/TextView;

    .line 50
    .line 51
    const-string v5, "\u66f4\u65b0\u63d0\u793a"

    .line 52
    .line 53
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v5, "\u3010"

    .line 62
    .line 63
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v5, "\u3011\u53ef\u66f4\u65b0\u7248\u672c"

    .line 74
    .line 75
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    const-string v3, "\u7acb\u5373\u66f4\u65b0"

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    const-string v3, "\u76f4\u63a5\u542f\u52a8"

    .line 91
    .line 92
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lcom/join/mgps/Util/g0$e;

    .line 96
    .line 97
    invoke-direct {v3, p0, p1, p2, v0}, Lcom/join/mgps/Util/g0$e;-><init>(Lcom/join/mgps/Util/g0;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/customview/t;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    new-instance v2, Lcom/join/mgps/Util/g0$f;

    .line 104
    .line 105
    invoke-direct {v2, p0, p1, p2, v0}, Lcom/join/mgps/Util/g0$f;-><init>(Lcom/join/mgps/Util/g0;Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/customview/t;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public g(Landroid/content/Context;Lcom/join/mgps/Util/g0$n0;)Landroid/app/Dialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "callback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/b;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const-string v1, "\u73b0\u5728\u4e0d"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "\u767b\u9646\u540e\uff0c\u5f00\u59cb\u609f\u996d\u6e38\u620f\u7684\u7cbe\u5f69\u65c5\u6e38"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "\u767b\u5f55"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "\u63d0\u793a"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/join/mgps/Util/g0$v;

    .line 34
    .line 35
    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/Util/g0$v;-><init>(Lcom/join/mgps/Util/g0;Landroid/content/Context;Lcom/join/mgps/Util/g0$n0;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Lcom/join/mgps/Util/g0$g0;

    .line 43
    .line 44
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/Util/g0$g0;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/Util/g0$n0;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/join/mgps/Util/g0$h0;

    .line 51
    .line 52
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/Util/g0$h0;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/Util/g0$n0;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 59
    .line 60
    .line 61
    return-object p1
.end method

.method public g0(Landroid/content/Context;)Lcom/join/mgps/customview/t;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    const v1, 0x7f1301b0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0d00fc

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0a04b1

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroid/widget/Button;

    .line 23
    .line 24
    const v2, 0x7f0a04b8

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Landroid/widget/Button;

    .line 32
    .line 33
    const v3, 0x7f0a1762

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Landroid/widget/TextView;

    .line 41
    .line 42
    const v4, 0x7f0a04bb

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    check-cast v4, Landroid/widget/TextView;

    .line 50
    .line 51
    const v5, 0x7f0a04bd

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    check-cast v5, Landroid/widget/TextView;

    .line 59
    .line 60
    const-string v6, "\u63d0\u793a"

    .line 61
    .line 62
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    const v3, 0x7f12031d

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    const/16 p1, 0x8

    .line 76
    .line 77
    invoke-virtual {v5, p1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    const-string p1, "\u6211\u8981\u6210\u4e3aVIP"

    .line 81
    .line 82
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    const-string p1, "\u4e0b\u6b21\u518d\u8bf4"

    .line 86
    .line 87
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    new-instance p1, Lcom/join/mgps/Util/g0$r;

    .line 91
    .line 92
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/Util/g0$r;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/customview/t;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    .line 97
    .line 98
    new-instance p1, Lcom/join/mgps/Util/g0$s;

    .line 99
    .line 100
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/Util/g0$s;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/customview/t;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    return-object v0
.end method

.method public h(Landroid/content/Context;)Lcom/join/mgps/dialog/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/b;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public i(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/b;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const-string v1, "\u73b0\u5728\u4e0d"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "\u767b\u9646\u540e\uff0c\u609f\u996d\u53ef\u4ee5\u4e3a\u4f60\u6c38\u4e45\u514d\u8d39\u8bb0\u5f55\u6210\u5c31"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "\u767b\u5f55"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "\u63d0\u793a"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/join/mgps/Util/g0$b;

    .line 34
    .line 35
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/Util/g0$b;-><init>(Lcom/join/mgps/Util/g0;Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public j(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public k(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/Util/g0;->g(Landroid/content/Context;Lcom/join/mgps/Util/g0$n0;)Landroid/app/Dialog;

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/Util/g0$o0;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "context",
            "content",
            "okStr",
            "cancelStr",
            "lienster"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/b;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    const-string p2, "\u8bf7\u767b\u5f55\u540e\u4f7f\u7528\u8be5\u529f\u80fd"

    .line 16
    .line 17
    :cond_0
    invoke-virtual {v0, p2}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string p3, "\u767b\u5f55"

    .line 28
    .line 29
    :cond_1
    invoke-virtual {p2, p3}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-eqz p3, :cond_2

    .line 38
    .line 39
    const-string p4, "\u53d6\u6d88"

    .line 40
    .line 41
    :cond_2
    invoke-virtual {p2, p4}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    const-string p3, "\u63d0\u793a"

    .line 46
    .line 47
    invoke-virtual {p2, p3}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    new-instance p3, Lcom/join/mgps/Util/g0$i;

    .line 52
    .line 53
    invoke-direct {p3, p0, p1, p5}, Lcom/join/mgps/Util/g0$i;-><init>(Lcom/join/mgps/Util/g0;Landroid/content/Context;Lcom/join/mgps/Util/g0$o0;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, p3}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public m(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public n(Landroid/content/Context;Ljava/lang/String;ILcom/join/mgps/Util/g0$n0;)Landroid/app/Dialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "name",
            "coin",
            "callback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/b;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const-string v1, "\u53d6\u6d88"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x2

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object p2, v1, v2

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    aput-object p3, v1, p2

    .line 27
    .line 28
    const-string p2, "\u628a\u201c%s\u201d\u8e22\u51fa\u623f\u95f4\n\u9700\u8981\u6d88\u8017%d\u94dc\u677f\n\u60a8\u786e\u5b9a\u8981\u8e22\u51fa\uff1f"

    .line 29
    .line 30
    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {v0, p2}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const-string p3, "\u786e\u5b9a"

    .line 39
    .line 40
    invoke-virtual {p2, p3}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const-string p3, "\u63d0\u793a"

    .line 45
    .line 46
    invoke-virtual {p2, p3}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    new-instance p3, Lcom/join/mgps/Util/g0$i0;

    .line 51
    .line 52
    invoke-direct {p3, p0, p1, p4}, Lcom/join/mgps/Util/g0$i0;-><init>(Lcom/join/mgps/Util/g0;Landroid/content/Context;Lcom/join/mgps/Util/g0$n0;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2, p3}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance p2, Lcom/join/mgps/Util/g0$j0;

    .line 60
    .line 61
    invoke-direct {p2, p0, p4}, Lcom/join/mgps/Util/g0$j0;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/Util/g0$n0;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 65
    .line 66
    .line 67
    new-instance p2, Lcom/join/mgps/Util/g0$k0;

    .line 68
    .line 69
    invoke-direct {p2, p0, p4}, Lcom/join/mgps/Util/g0$k0;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/Util/g0$n0;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 76
    .line 77
    .line 78
    return-object p1
.end method

.method public o(Landroid/content/Context;Lcom/join/mgps/Util/g0$n0;)Landroid/app/Dialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "callback"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/b;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const-string v1, "\u53d6\u6d88"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "\u4f60\u5df2\u88ab\u8e22\u51fa\u6e38\u620f\n\u5f00\u901aVIP\u4f1a\u5458\uff0c\u7acb\u5373\u4eab\u53d7\u9632\u8e22\u7279\u6743"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "\u5f00\u901a\u4f1a\u5458"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "\u63d0\u793a"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v1, Lcom/join/mgps/Util/g0$l0;

    .line 34
    .line 35
    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/Util/g0$l0;-><init>(Lcom/join/mgps/Util/g0;Landroid/content/Context;Lcom/join/mgps/Util/g0$n0;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Lcom/join/mgps/Util/g0$m0;

    .line 43
    .line 44
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/Util/g0$m0;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/Util/g0$n0;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/join/mgps/Util/g0$a;

    .line 51
    .line 52
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/Util/g0$a;-><init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/Util/g0$n0;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 59
    .line 60
    .line 61
    return-object p1
.end method

.method public p(Landroid/content/Context;I)Lcom/join/mgps/dialog/o;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "backupNumber"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/o;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1, p2}, Lcom/join/mgps/dialog/o;-><init>(Landroid/content/Context;II)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public q(Landroid/content/Context;)Lcom/join/mgps/dialog/r;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/r;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/r;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public r(Landroid/content/Context;)Lcom/join/mgps/dialog/s;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/s;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/s;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public s(Landroid/content/Context;)Lcom/join/mgps/dialog/t;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/t;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/t;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public t(Landroid/content/Context;)Lcom/join/mgps/dialog/l0;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/l0;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/l0;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public u(Landroid/content/Context;)Lcom/join/mgps/dialog/t0;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/t0;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/t0;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public v(Landroid/content/Context;)Lcom/join/mgps/dialog/z0;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/z0;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/z0;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public w(Landroid/content/Context;)Lcom/join/mgps/dialog/a1;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/a1;

    .line 2
    .line 3
    const v1, 0x7f13017f

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/a1;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    const v1, 0x7f1301b2

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/f1;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public y(Landroid/content/Context;Ljava/lang/String;)Lcom/join/mgps/dialog/f1;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "string"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    const v1, 0x7f1301b2

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1, p2}, Lcom/join/mgps/dialog/f1;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public z(Landroid/content/Context;Ljava/lang/String;Z)Lcom/join/mgps/dialog/f1;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "string",
            "cancleAble"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    const v1, 0x7f1301b2

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1, p2, p3}, Lcom/join/mgps/dialog/f1;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 p2, 0x1c

    .line 12
    .line 13
    if-lt p1, p2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-static {p1, p2}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-object v0
.end method
