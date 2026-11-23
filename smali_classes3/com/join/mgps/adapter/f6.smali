.class public Lcom/join/mgps/adapter/f6;
.super Lcom/join/mgps/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/f6$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/a<",
        "Lcom/join/mgps/dto/CommonMultiItemBean;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:I = 0xb

.field public static final B:I = 0xc

.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:I = 0x3

.field public static final t:I = 0x4

.field public static final u:I = 0x5

.field public static final v:I = 0x6

.field public static final w:I = 0x7

.field public static final x:I = 0x8

.field public static final y:I = 0x9

.field public static final z:I = 0xa


# instance fields
.field private h:Landroid/content/Context;

.field private i:Lcom/join/mgps/adapter/f6$g;

.field j:Lcom/join/mgps/pref/PrefDef_;

.field private k:Lcom/join/mgps/adapter/z2;

.field private l:Lcom/join/mgps/dto/HomeCloudActiveBean;

.field private m:Landroid/graphics/Typeface;

.field n:I

.field o:Landroid/view/View;

.field p:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/adapter/f6$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "clickProxy"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/join/mgps/base/a;-><init>(Ljava/util/List;)V

    .line 3
    .line 4
    .line 5
    iput-object v0, p0, Lcom/join/mgps/adapter/f6;->k:Lcom/join/mgps/adapter/z2;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/join/mgps/adapter/f6;->n:I

    .line 9
    .line 10
    iput-object p1, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/join/mgps/adapter/f6;->i:Lcom/join/mgps/adapter/f6$g;

    .line 13
    .line 14
    new-instance p2, Lcom/join/mgps/pref/PrefDef_;

    .line 15
    .line 16
    invoke-direct {p2, p1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/join/mgps/adapter/f6;->j:Lcom/join/mgps/pref/PrefDef_;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 22
    .line 23
    const/high16 p2, 0x7f090000

    .line 24
    .line 25
    invoke-static {p1, p2}, Landroidx/core/content/res/ResourcesCompat;->getFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/join/mgps/adapter/f6;->m:Landroid/graphics/Typeface;

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    const p2, 0x7f0d05f4

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x2

    .line 39
    const p2, 0x7f0d05f7

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x3

    .line 46
    const p2, 0x7f0d05f5

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x4

    .line 53
    const p2, 0x7f0d05fc

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x5

    .line 60
    const p2, 0x7f0d05f8

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 64
    .line 65
    .line 66
    const/4 p1, 0x6

    .line 67
    const p2, 0x7f0d05fd

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x7

    .line 74
    const p2, 0x7f0d07c4

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 78
    .line 79
    .line 80
    const/16 p1, 0x8

    .line 81
    .line 82
    const p2, 0x7f0d05fa

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 86
    .line 87
    .line 88
    const/16 p1, 0x9

    .line 89
    .line 90
    const p2, 0x7f0d05fb

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 94
    .line 95
    .line 96
    const/16 p1, 0xa

    .line 97
    .line 98
    const p2, 0x7f0d012e

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 102
    .line 103
    .line 104
    const/16 p1, 0xb

    .line 105
    .line 106
    const p2, 0x7f0d05f9

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 110
    .line 111
    .line 112
    const/16 p1, 0xc

    .line 113
    .line 114
    const p2, 0x7f0d07bd

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public static synthetic A(Lcom/join/mgps/adapter/f6;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->u0(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic A0(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 6
    .line 7
    const-class v2, Lcom/join/kotlin/EverdayNewGameActivity;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "3-3"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/f6;->G0(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static synthetic B(Lcom/join/mgps/adapter/f6;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/f6;->s0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic B0(Lcom/join/mgps/dto/HomeTopChannelBean;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeTopChannelBean;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeTopChannelBean;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "3-4"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {p1, v1, p2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/f6;->G0(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/join/mgps/Util/IntentDateBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, v0, p2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static synthetic C(Lcom/join/mgps/adapter/f6;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/f6;->q0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic C0(Lcom/join/mgps/dto/HomeTopChannelBean;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeTopChannelBean;->getBroadcast()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 16
    .line 17
    .line 18
    const-string p2, "3-2"

    .line 19
    .line 20
    invoke-direct {p0, p2}, Lcom/join/mgps/adapter/f6;->G0(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeTopChannelBean;->getBroadcast()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static synthetic D(Lcom/join/mgps/adapter/f6;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->y0(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic D0(Lcom/join/mgps/dto/HomeTopChannelBean;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeTopChannelBean;->getTheNew()Lcom/join/mgps/dto/HomeDailyNewBean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeDailyNewBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const-string v0, "3-3"

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 12
    .line 13
    .line 14
    new-instance p2, Landroid/content/Intent;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 17
    .line 18
    const-class v2, Lcom/join/kotlin/EverdayNewGameActivity;

    .line 19
    .line 20
    invoke-direct {p2, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeTopChannelBean;->getTheNew()Lcom/join/mgps/dto/HomeDailyNewBean;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/HomeDailyNewBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "extBean"

    .line 32
    .line 33
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/f6;->G0(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 45
    .line 46
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeTopChannelBean;->getTheNew()Lcom/join/mgps/dto/HomeDailyNewBean;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/join/mgps/dto/HomeDailyNewBean;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public static synthetic E(Lcom/join/mgps/adapter/f6;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->o0(Ljava/util/List;I)V

    return-void
.end method

.method private E0()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 2
    .line 3
    const v1, 0x7f081120

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method public static synthetic F(Lcom/join/mgps/adapter/f6;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->p0(Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method private static F0(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bgColorV2"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "#2F2F2F"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string v0, "#"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return p0

    .line 46
    :catch_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    return p0
.end method

.method public static synthetic G(Lcom/join/mgps/adapter/f6;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/f6;->t0(Landroid/view/View;)V

    return-void
.end method

.method private G0(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointName"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/papa/sim/statistic/ExtFrom;->home:Lcom/papa/sim/statistic/ExtFrom;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v3, "22-"

    .line 19
    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v2, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v1, p1, v2}, Lcom/papa/sim/statistic/t;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public static synthetic H(Lcom/join/mgps/adapter/f6;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/f6;->r0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic I(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/adapter/f6;->x0(Landroid/view/View;)V

    return-void
.end method

.method private static I0(Landroid/view/View;III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "frame",
            "widthPx",
            "heightPx",
            "marginEndPx"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4
    .line 5
    .line 6
    const p1, 0x800055

    .line 7
    .line 8
    .line 9
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    .line 11
    invoke-virtual {v0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic J(Lcom/join/mgps/adapter/f6;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/f6;->v0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic K(Lcom/join/mgps/adapter/f6;Lcom/join/mgps/dto/HomeTopChannelBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->D0(Lcom/join/mgps/dto/HomeTopChannelBean;Landroid/view/View;)V

    return-void
.end method

.method private static K0(Lcom/youth/banner/Banner;Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "banner",
            "list",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/youth/banner/Banner;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    if-ltz p2, :cond_a

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lt p2, v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/adapter/f6;->k0(Lcom/youth/banner/Banner;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const v0, 0x7f0a1985

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/TextView;

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_3

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getMain_title()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getMain_title()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getShowName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_5

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getSub_title()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    if-nez p2, :cond_6

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getSub_title()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    goto :goto_0

    .line 94
    :cond_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getDescription()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-nez p2, :cond_7

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getDescription()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    goto :goto_0

    .line 109
    :cond_7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getLabel()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-nez p2, :cond_8

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getLabel()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    goto :goto_0

    .line 124
    :cond_8
    const-string p2, ""

    .line 125
    .line 126
    :goto_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color_v2()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    invoke-static {p2}, Lcom/join/mgps/adapter/f6;->F0(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    instance-of v0, p0, Landroidx/cardview/widget/CardView;

    .line 138
    .line 139
    if-eqz v0, :cond_9

    .line 140
    .line 141
    move-object v0, p0

    .line 142
    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 143
    .line 144
    invoke-virtual {v0, p2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 145
    .line 146
    .line 147
    goto :goto_1

    .line 148
    :cond_9
    invoke-virtual {p0, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 149
    .line 150
    .line 151
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color_v2()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p0, p1}, Lcom/join/mgps/adapter/f6;->U(Landroid/view/View;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    :cond_a
    :goto_2
    return-void
.end method

.method public static synthetic L(Lcom/join/mgps/adapter/f6;Lcom/join/mgps/dto/HomeTopChannelBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->C0(Lcom/join/mgps/dto/HomeTopChannelBean;Landroid/view/View;)V

    return-void
.end method

.method private L0(Landroid/view/View;Lcom/join/mgps/dto/HomeCloudActiveBean;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holderView",
            "activeBean",
            "uiState"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a1a3b

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    const v1, 0x7f0a1a3c

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/widget/TextView;

    .line 18
    .line 19
    const v2, 0x7f0a1a3d

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/widget/TextView;

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    if-ne p3, v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->getNgH()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {p2, v3}, Lcom/join/mgps/dto/HomeCloudActiveBean;->format(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->getFpH()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {p2, v3}, Lcom/join/mgps/dto/HomeCloudActiveBean;->format(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    if-eqz v1, :cond_3

    .line 57
    .line 58
    if-ne p3, v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->getNgM()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/HomeCloudActiveBean;->format(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_2
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->getFpM()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/HomeCloudActiveBean;->format(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    .line 84
    .line 85
    if-ne p3, v2, :cond_4

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->getNgS()I

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/HomeCloudActiveBean;->format(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->getFpS()I

    .line 100
    .line 101
    .line 102
    move-result p3

    .line 103
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/HomeCloudActiveBean;->format(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    :goto_2
    return-void
.end method

.method public static synthetic M(Lcom/join/mgps/adapter/f6;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->w0(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcom/join/mgps/adapter/f6;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/f6;->A0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic O(Lcom/join/mgps/adapter/f6;)Lcom/join/mgps/adapter/f6$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/f6;->i:Lcom/join/mgps/adapter/f6$g;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic P(Lcom/youth/banner/Banner;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->K0(Lcom/youth/banner/Banner;Ljava/util/List;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q(Lcom/join/mgps/adapter/f6;)Lcom/join/mgps/adapter/z2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/f6;->k:Lcom/join/mgps/adapter/z2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic R(Lcom/join/mgps/adapter/f6;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic S(Lcom/join/mgps/adapter/f6;Lcom/google/android/material/tabs/TabLayout;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->V(Lcom/google/android/material/tabs/TabLayout;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private T(ILandroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "l1",
            "l2",
            "l3"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f0715b5

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    float-to-int v1, v1

    .line 15
    const v2, 0x7f0716a9

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    float-to-int v2, v2

    .line 23
    const v3, 0x7f071294

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    float-to-int v3, v3

    .line 31
    const v4, 0x7f071310

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    float-to-int v4, v4

    .line 39
    const v5, 0x7f07155c

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    float-to-int v5, v5

    .line 47
    const v6, 0x7f0712f8

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    float-to-int v0, v0

    .line 55
    const/16 v6, 0x8

    .line 56
    .line 57
    if-gtz p1, :cond_0

    .line 58
    .line 59
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    const/4 v7, 0x1

    .line 70
    const/4 v8, 0x0

    .line 71
    if-ne p1, v7, :cond_1

    .line 72
    .line 73
    invoke-virtual {p4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    invoke-static {p2, v3, v3, v4}, Lcom/join/mgps/adapter/f6;->I0(Landroid/view/View;III)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_1
    const/4 v7, 0x2

    .line 87
    if-ne p1, v7, :cond_2

    .line 88
    .line 89
    invoke-virtual {p4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .line 97
    .line 98
    sub-int/2addr v0, v5

    .line 99
    add-int/2addr v0, v4

    .line 100
    invoke-static {p3, v2, v2, v4}, Lcom/join/mgps/adapter/f6;->I0(Landroid/view/View;III)V

    .line 101
    .line 102
    .line 103
    invoke-static {p2, v3, v3, v0}, Lcom/join/mgps/adapter/f6;->I0(Landroid/view/View;III)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_2
    invoke-virtual {p4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 114
    .line 115
    .line 116
    invoke-static {p4, v1, v1, v4}, Lcom/join/mgps/adapter/f6;->I0(Landroid/view/View;III)V

    .line 117
    .line 118
    .line 119
    invoke-static {p3, v2, v2, v5}, Lcom/join/mgps/adapter/f6;->I0(Landroid/view/View;III)V

    .line 120
    .line 121
    .line 122
    invoke-static {p2, v3, v3, v0}, Lcom/join/mgps/adapter/f6;->I0(Landroid/view/View;III)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method private static U(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "root",
            "bgColorV2"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const v0, 0x7f0a1b8f

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    invoke-static {p1}, Lcom/join/mgps/adapter/f6;->F0(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/16 v3, 0xff

    .line 36
    .line 37
    invoke-static {v3, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 42
    .line 43
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 44
    .line 45
    filled-new-array {v2, p1, p1}, [I

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    const/high16 v1, 0x3f400000    # 0.75f

    .line 54
    .line 55
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private V(Lcom/google/android/material/tabs/TabLayout;I)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tablayout",
            "selectedPos"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    const-string v1, "#333333"

    .line 12
    .line 13
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v2, "#999999"

    .line 18
    .line 19
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const v4, 0x7f0713c2

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    iget-object v4, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 37
    .line 38
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const v5, 0x7f07137f

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    iget-object v5, p0, Lcom/join/mgps/adapter/f6;->m:Landroid/graphics/Typeface;

    .line 50
    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x0

    .line 53
    :goto_0
    if-ge v7, v0, :cond_a

    .line 54
    .line 55
    invoke-virtual {p1, v7}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 56
    .line 57
    .line 58
    move-result-object v8

    .line 59
    if-eqz v8, :cond_9

    .line 60
    .line 61
    invoke-virtual {v8}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    if-nez v9, :cond_2

    .line 66
    .line 67
    goto :goto_5

    .line 68
    :cond_2
    invoke-virtual {v8}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    const v9, 0x7f0a1664

    .line 73
    .line 74
    .line 75
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    check-cast v8, Landroid/widget/TextView;

    .line 80
    .line 81
    if-nez v8, :cond_3

    .line 82
    .line 83
    goto :goto_5

    .line 84
    :cond_3
    if-ne v7, p2, :cond_4

    .line 85
    .line 86
    const/4 v9, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    const/4 v9, 0x0

    .line 89
    :goto_1
    if-eqz v9, :cond_5

    .line 90
    .line 91
    move v10, v3

    .line 92
    goto :goto_2

    .line 93
    :cond_5
    move v10, v4

    .line 94
    :goto_2
    invoke-virtual {v8, v6, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 95
    .line 96
    .line 97
    if-eqz v9, :cond_6

    .line 98
    .line 99
    move v10, v1

    .line 100
    goto :goto_3

    .line 101
    :cond_6
    move v10, v2

    .line 102
    :goto_3
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    if-eqz v9, :cond_8

    .line 106
    .line 107
    if-eqz v5, :cond_7

    .line 108
    .line 109
    move-object v9, v5

    .line 110
    goto :goto_4

    .line 111
    :cond_7
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 112
    .line 113
    :goto_4
    invoke-virtual {v8, v9, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 114
    .line 115
    .line 116
    goto :goto_5

    .line 117
    :cond_8
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 118
    .line 119
    invoke-virtual {v8, v9, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 120
    .line 121
    .line 122
    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_a
    return-void
.end method

.method private W(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "bean"
        }
    .end annotation

    .line 1
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    const v0, 0x7f0a1b25

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f071489

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    float-to-int v0, v0

    .line 27
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const v2, 0x7f071374

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBg_color_v2()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 p2, 0x0

    .line 48
    :goto_0
    invoke-static {p2}, Lcom/join/mgps/adapter/f6;->F0(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    new-instance v2, Lu6/a;

    .line 53
    .line 54
    invoke-direct {v2, p2, v0, v1}, Lu6/a;-><init>(IIF)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private X(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Ljava/util/List;

    .line 14
    .line 15
    const v0, 0x7f0a0156

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/youth/banner/Banner;

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Ljava/lang/CharSequence;

    .line 58
    .line 59
    sget-object v2, Lcom/join/mgps/base/BaseQuickAdapter;->TAG:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/youth/banner/Banner;->z(Ljava/util/List;)Lcom/youth/banner/Banner;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Lcom/papa91/arc/view/GlideImageLoader;

    .line 72
    .line 73
    invoke-direct {v1}, Lcom/papa91/arc/view/GlideImageLoader;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->y(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, Lcom/join/mgps/adapter/x5;

    .line 81
    .line 82
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/x5;-><init>(Lcom/join/mgps/adapter/f6;Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->D(Lya/b;)Lcom/youth/banner/Banner;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-instance v1, Lcom/join/mgps/adapter/f6$a;

    .line 90
    .line 91
    invoke-direct {v1, p0, p2, p1}, Lcom/join/mgps/adapter/f6$a;-><init>(Lcom/join/mgps/adapter/f6;Ljava/util/List;Lcom/youth/banner/Banner;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/youth/banner/Banner;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/youth/banner/Banner;->I()Lcom/youth/banner/Banner;

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->i:Lcom/join/mgps/adapter/f6$g;

    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    .line 108
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 113
    .line 114
    invoke-interface {v0, v2}, Lcom/join/mgps/adapter/f6$g;->z(Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    invoke-static {p1, p2, v1}, Lcom/join/mgps/adapter/f6;->K0(Lcom/youth/banner/Banner;Ljava/util/List;I)V

    .line 118
    .line 119
    .line 120
    invoke-static {p1}, Lcom/join/mgps/adapter/f6;->k0(Lcom/youth/banner/Banner;)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    if-eqz p1, :cond_2

    .line 125
    .line 126
    new-instance v0, Lcom/join/mgps/adapter/y5;

    .line 127
    .line 128
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/y5;-><init>(Lcom/join/mgps/adapter/f6;Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    :cond_2
    :goto_1
    return-void
.end method

.method private Z(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f0a0915

    .line 20
    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getIco()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getIco()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    const v0, 0x7f0a14a0

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 73
    .line 74
    const-string v1, "res:///2131820545"

    .line 75
    .line 76
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->n(Lcom/facebook/drawee/view/SimpleDraweeView;Landroid/net/Uri;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const v1, 0x7f0a1767

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 91
    .line 92
    .line 93
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 94
    .line 95
    new-instance v1, Lcom/join/mgps/adapter/q5;

    .line 96
    .line 97
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/q5;-><init>(Lcom/join/mgps/adapter/f6;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExposure()Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    const/4 v1, 0x1

    .line 108
    if-nez v0, :cond_1

    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 111
    .line 112
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    const-string v4, "home"

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    const-string v4, "choiceness"

    .line 129
    .line 130
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    const-string v4, "10003"

    .line 135
    .line 136
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-virtual {v4}, Lcom/join/mgps/dto/JpInfoBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    const-string v4, "AD"

    .line 161
    .line 162
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v3}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v0, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2, v1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->setExposure(Z)V

    .line 178
    .line 179
    .line 180
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getDescription()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    const/4 v2, 0x0

    .line 189
    const v3, 0x7f0a0f21

    .line 190
    .line 191
    .line 192
    if-eqz v0, :cond_2

    .line 193
    .line 194
    invoke-virtual {p1, v3, v1}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 195
    .line 196
    .line 197
    const v0, 0x7f0a0f1c

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    check-cast v0, Landroid/widget/LinearLayout;

    .line 205
    .line 206
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getDescription()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    array-length v1, p2

    .line 218
    :goto_1
    if-ge v2, v1, :cond_3

    .line 219
    .line 220
    aget-char v3, p2, v2

    .line 221
    .line 222
    iget-object v4, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 223
    .line 224
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 225
    .line 226
    .line 227
    move-result-object v4

    .line 228
    const v5, 0x7f0d0448

    .line 229
    .line 230
    .line 231
    const/4 v6, 0x0

    .line 232
    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    const v5, 0x7f0a1a3b

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    check-cast v5, Landroid/widget/TextView;

    .line 244
    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string v3, ""

    .line 254
    .line 255
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    .line 264
    .line 265
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 266
    .line 267
    const/4 v5, -0x2

    .line 268
    const/4 v6, -0x1

    .line 269
    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 270
    .line 271
    .line 272
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 273
    .line 274
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 275
    .line 276
    .line 277
    move-result-object v5

    .line 278
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    const v6, 0x7f071310

    .line 283
    .line 284
    .line 285
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 286
    .line 287
    .line 288
    move-result v5

    .line 289
    float-to-int v5, v5

    .line 290
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 291
    .line 292
    iget-object v5, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 293
    .line 294
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 299
    .line 300
    .line 301
    move-result-object v5

    .line 302
    const v6, 0x7f071489

    .line 303
    .line 304
    .line 305
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    float-to-int v5, v5

    .line 310
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 311
    .line 312
    invoke-virtual {v0, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    .line 314
    .line 315
    add-int/lit8 v2, v2, 0x1

    .line 316
    .line 317
    goto :goto_1

    .line 318
    :cond_2
    invoke-virtual {p1, v3, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 319
    .line 320
    .line 321
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/adapter/f6;->l:Lcom/join/mgps/dto/HomeCloudActiveBean;

    .line 322
    .line 323
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->Y(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/HomeCloudActiveBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .line 325
    .line 326
    goto :goto_2

    .line 327
    :catch_0
    move-exception p1

    .line 328
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 329
    .line 330
    .line 331
    :goto_2
    return-void
.end method

.method private a0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "items"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a145c

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    const v1, 0x7f0a0947

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/widget/indicator/UIndicator;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->k:Lcom/join/mgps/adapter/z2;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    new-instance v1, Lcom/join/mgps/adapter/z2;

    .line 24
    .line 25
    invoke-direct {v1}, Lcom/join/mgps/adapter/z2;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/join/mgps/adapter/f6;->k:Lcom/join/mgps/adapter/z2;

    .line 29
    .line 30
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->k:Lcom/join/mgps/adapter/z2;

    .line 31
    .line 32
    new-instance v2, Lcom/join/mgps/adapter/d6;

    .line 33
    .line 34
    invoke-direct {v2, p0}, Lcom/join/mgps/adapter/d6;-><init>(Lcom/join/mgps/adapter/f6;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/BaseQuickAdapter$d;)Lcom/chad/library/adapter/base/BaseQuickAdapter;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->k:Lcom/join/mgps/adapter/z2;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    const/4 v3, 0x5

    .line 49
    const/4 v4, 0x0

    .line 50
    invoke-direct {v1, v2, v3, v4}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;-><init>(III)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->k:Lcom/join/mgps/adapter/z2;

    .line 57
    .line 58
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Ljava/util/List;

    .line 63
    .line 64
    invoke-virtual {v0, p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 65
    .line 66
    .line 67
    new-instance p2, Lcom/join/mgps/adapter/f6$b;

    .line 68
    .line 69
    invoke-direct {p2, p0, p1}, Lcom/join/mgps/adapter/f6$b;-><init>(Lcom/join/mgps/adapter/f6;Lcom/join/mgps/widget/indicator/UIndicator;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->c0(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager$d;)V

    .line 73
    .line 74
    .line 75
    iget-object p2, p0, Lcom/join/mgps/adapter/f6;->k:Lcom/join/mgps/adapter/z2;

    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItemCount()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    int-to-float p2, p2

    .line 82
    const/high16 v0, 0x3f800000    # 1.0f

    .line 83
    .line 84
    mul-float p2, p2, v0

    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->j()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    int-to-float v0, v0

    .line 91
    div-float/2addr p2, v0

    .line 92
    float-to-double v0, p2

    .line 93
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 94
    .line 95
    .line 96
    move-result-wide v0

    .line 97
    double-to-int p2, v0

    .line 98
    invoke-virtual {p1, p2}, Lcom/join/mgps/widget/indicator/UIndicator;->setItemCount(I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v4}, Lcom/join/mgps/widget/indicator/UIndicator;->setSelection(I)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method private b0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 6
    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getGif_ico()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getIco()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getGif_ico()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :goto_0
    const v3, 0x7f0a14a2

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 53
    .line 54
    invoke-static {v3, v2}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 58
    .line 59
    new-instance v3, Lcom/join/mgps/adapter/r5;

    .line 60
    .line 61
    invoke-direct {v3, p0, v0}, Lcom/join/mgps/adapter/r5;-><init>(Lcom/join/mgps/adapter/f6;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    const v2, 0x7f0a1a3f

    .line 68
    .line 69
    .line 70
    const v3, 0x7f0a1a3d

    .line 71
    .line 72
    .line 73
    const v4, 0x7f0a1a3c

    .line 74
    .line 75
    .line 76
    const v5, 0x7f0a1a3b

    .line 77
    .line 78
    .line 79
    const v6, 0x7f0a1a3e

    .line 80
    .line 81
    .line 82
    const-string v7, ""

    .line 83
    .line 84
    if-eqz v1, :cond_6

    .line 85
    .line 86
    :try_start_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    invoke-virtual {p1, v5, v8}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    if-nez v5, :cond_2

    .line 98
    .line 99
    move-object v5, v7

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    :goto_1
    invoke-virtual {p1, v4, v5}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    const-string v8, " | "

    .line 121
    .line 122
    invoke-static {v4, v5, v8}, Lcom/join/mgps/Util/UtilsMy;->R1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {p1, v3, v4}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-nez v3, :cond_4

    .line 138
    .line 139
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 144
    .line 145
    .line 146
    move-result-wide v3

    .line 147
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 148
    .line 149
    mul-double v3, v3, v8

    .line 150
    .line 151
    mul-double v3, v3, v8

    .line 152
    .line 153
    double-to-long v3, v3

    .line 154
    const-wide/16 v8, 0x0

    .line 155
    .line 156
    cmp-long v5, v3, v8

    .line 157
    .line 158
    if-lez v5, :cond_3

    .line 159
    .line 160
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {p1, v6, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_3
    invoke-virtual {p1, v6, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_4
    invoke-virtual {p1, v6, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 173
    .line 174
    .line 175
    :goto_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_5

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_5
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    :goto_3
    invoke-virtual {p1, v2, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {p1, v5, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p1, v4, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v3, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v6, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v2, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 211
    .line 212
    .line 213
    :goto_4
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->giftSwitch()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    const v1, 0x7f0a09fe

    .line 218
    .line 219
    .line 220
    if-eqz v0, :cond_7

    .line 221
    .line 222
    const/4 v0, 0x1

    .line 223
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 224
    .line 225
    .line 226
    goto :goto_5

    .line 227
    :cond_7
    const/4 v0, 0x0

    .line 228
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 229
    .line 230
    .line 231
    :goto_5
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->J0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 232
    .line 233
    .line 234
    goto :goto_6

    .line 235
    :catch_0
    move-exception p1

    .line 236
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 237
    .line 238
    .line 239
    :cond_8
    :goto_6
    return-void
.end method

.method private c0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Ljava/util/List;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Ljava/util/List;

    .line 14
    .line 15
    const v0, 0x7f0a1344

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    .line 24
    new-instance v1, Lcom/join/mgps/adapter/a3;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 27
    .line 28
    invoke-direct {v1, v2, p2}, Lcom/join/mgps/adapter/a3;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-direct {v2, v3, v4, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-gtz v2, :cond_0

    .line 47
    .line 48
    new-instance v2, Lcom/join/mgps/adapter/f6$e;

    .line 49
    .line 50
    invoke-direct {v2, p0, p1}, Lcom/join/mgps/adapter/f6$e;-><init>(Lcom/join/mgps/adapter/f6;Lcom/join/mgps/base/b;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Lcom/join/mgps/adapter/f6$f;

    .line 60
    .line 61
    invoke-direct {p1, p0, v0, p2}, Lcom/join/mgps/adapter/f6$f;-><init>(Lcom/join/mgps/adapter/f6;Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    return-void
.end method

.method private d0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/join/mgps/dto/HomeRankingListBean;

    .line 6
    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lcom/join/mgps/dto/HomeRankingListBean;

    .line 14
    .line 15
    const v0, 0x7f0a1b9f

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 23
    .line 24
    const v1, 0x7f0a1666

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeRankingListBean;->getTxt()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-nez v3, :cond_2

    .line 42
    .line 43
    const-string v3, ","

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-instance v3, Lcom/join/mgps/adapter/a5;

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeRankingListBean;->getList()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    iget-object v5, p0, Lcom/join/mgps/adapter/f6;->i:Lcom/join/mgps/adapter/f6$g;

    .line 56
    .line 57
    invoke-direct {v3, v4, v5}, Lcom/join/mgps/adapter/a5;-><init>(Ljava/util/List;Lcom/join/mgps/adapter/f6$g;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->L()V

    .line 64
    .line 65
    .line 66
    array-length v3, v2

    .line 67
    const/4 v4, 0x0

    .line 68
    const/4 v5, 0x0

    .line 69
    :goto_0
    if-ge v5, v3, :cond_1

    .line 70
    .line 71
    aget-object v6, v2, v5

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->I()Lcom/google/android/material/tabs/TabLayout$g;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    const v8, 0x7f0d05a2

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, v8}, Lcom/google/android/material/tabs/TabLayout$g;->u(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v7}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v8

    .line 88
    if-eqz v8, :cond_0

    .line 89
    .line 90
    invoke-virtual {v7}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    const v9, 0x7f0a1664

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    check-cast v8, Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v7}, Lcom/google/android/material/tabs/TabLayout;->i(Lcom/google/android/material/tabs/TabLayout$g;)V

    .line 107
    .line 108
    .line 109
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    invoke-static {v1}, Lcom/join/mgps/Util/w2;->a(Lcom/google/android/material/tabs/TabLayout;)V

    .line 113
    .line 114
    .line 115
    new-instance v2, Lcom/join/mgps/adapter/f6$c;

    .line 116
    .line 117
    invoke-direct {v2, p0, v1, p2}, Lcom/join/mgps/adapter/f6$c;-><init>(Lcom/join/mgps/adapter/f6;Lcom/google/android/material/tabs/TabLayout;Lcom/join/mgps/dto/HomeRankingListBean;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 121
    .line 122
    .line 123
    new-instance p2, Lcom/join/mgps/adapter/f6$d;

    .line 124
    .line 125
    invoke-direct {p2, p0, v0, v1}, Lcom/join/mgps/adapter/f6$d;-><init>(Lcom/join/mgps/adapter/f6;Landroidx/viewpager2/widget/ViewPager2;Lcom/google/android/material/tabs/TabLayout;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, p2}, Lcom/google/android/material/tabs/TabLayout;->h(Lcom/google/android/material/tabs/TabLayout$d;)V

    .line 129
    .line 130
    .line 131
    const p2, 0x7f0a1304

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    new-instance p2, Lcom/join/mgps/adapter/e6;

    .line 139
    .line 140
    invoke-direct {p2}, Lcom/join/mgps/adapter/e6;-><init>()V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1, v4}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v1, p1}, Lcom/google/android/material/tabs/TabLayout;->R(Lcom/google/android/material/tabs/TabLayout$g;)V

    .line 151
    .line 152
    .line 153
    invoke-direct {p0, v1, v4}, Lcom/join/mgps/adapter/f6;->V(Lcom/google/android/material/tabs/TabLayout;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_1

    .line 157
    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :cond_2
    :goto_1
    return-void
.end method

.method private f0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const v0, 0x7f0a15dc

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    float-to-int p2, p2

    .line 23
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private g0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Ljava/lang/String;

    .line 14
    .line 15
    const v0, 0x7f0a1767

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object p2, p0, Lcom/join/mgps/adapter/f6;->m:Landroid/graphics/Typeface;

    .line 28
    .line 29
    if-eqz p2, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
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
    :cond_0
    :goto_0
    return-void
.end method

.method private h0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 6
    .line 7
    if-eqz v0, :cond_a

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    new-instance v3, Lcom/join/mgps/adapter/w5;

    .line 22
    .line 23
    invoke-direct {v3, p0, v0}, Lcom/join/mgps/adapter/w5;-><init>(Lcom/join/mgps/adapter/f6;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    const v2, 0x7f0a015d

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getGif_ico()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_1

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getIco()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getGif_ico()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    :goto_0
    const v3, 0x7f0a14a2

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 79
    .line 80
    invoke-static {v3, v2}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getExtraData()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    instance-of v2, v2, Ljava/lang/String;

    .line 88
    .line 89
    const v3, 0x7f0a1a40

    .line 90
    .line 91
    .line 92
    if-eqz v2, :cond_2

    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getExtraData()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {p1, v3, v2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getExtraData()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    instance-of v2, v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 111
    .line 112
    if-eqz v2, :cond_3

    .line 113
    .line 114
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getExtraData()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 119
    .line 120
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getMain_title()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {p1, v3, v4}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getItemType()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    const/4 v4, 0x7

    .line 132
    if-ne v3, v4, :cond_3

    .line 133
    .line 134
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/adapter/f6;->W(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .line 136
    .line 137
    :cond_3
    :goto_1
    const v2, 0x7f0a1a3f

    .line 138
    .line 139
    .line 140
    const v3, 0x7f0a1a3d

    .line 141
    .line 142
    .line 143
    const v4, 0x7f0a1a3c

    .line 144
    .line 145
    .line 146
    const v5, 0x7f0a1a3b

    .line 147
    .line 148
    .line 149
    const v6, 0x7f0a1a3e

    .line 150
    .line 151
    .line 152
    const-string v7, ""

    .line 153
    .line 154
    if-eqz v1, :cond_8

    .line 155
    .line 156
    :try_start_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    invoke-virtual {p1, v5, v8}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    if-nez v5, :cond_4

    .line 168
    .line 169
    move-object v5, v7

    .line 170
    goto :goto_2

    .line 171
    :cond_4
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    :goto_2
    invoke-virtual {p1, v4, v5}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    const-string v8, " | "

    .line 191
    .line 192
    invoke-static {v4, v5, v8}, Lcom/join/mgps/Util/UtilsMy;->R1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-virtual {p1, v3, v4}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    if-nez v3, :cond_6

    .line 208
    .line 209
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 214
    .line 215
    .line 216
    move-result-wide v3

    .line 217
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 218
    .line 219
    mul-double v3, v3, v8

    .line 220
    .line 221
    mul-double v3, v3, v8

    .line 222
    .line 223
    double-to-long v3, v3

    .line 224
    const-wide/16 v8, 0x0

    .line 225
    .line 226
    cmp-long v5, v3, v8

    .line 227
    .line 228
    if-lez v5, :cond_5

    .line 229
    .line 230
    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    invoke-virtual {p1, v6, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 235
    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_5
    invoke-virtual {p1, v6, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 239
    .line 240
    .line 241
    goto :goto_3

    .line 242
    :cond_6
    invoke-virtual {p1, v6, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 243
    .line 244
    .line 245
    :goto_3
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    if-eqz v3, :cond_7

    .line 254
    .line 255
    goto :goto_4

    .line 256
    :cond_7
    invoke-virtual {v1}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v7

    .line 260
    :goto_4
    invoke-virtual {p1, v2, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 261
    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_8
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {p1, v5, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v4, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, v3, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p1, v6, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v2, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 281
    .line 282
    .line 283
    :goto_5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->giftSwitch()Z

    .line 284
    .line 285
    .line 286
    move-result v0

    .line 287
    const v1, 0x7f0a09fe

    .line 288
    .line 289
    .line 290
    if-eqz v0, :cond_9

    .line 291
    .line 292
    const/4 v0, 0x1

    .line 293
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 294
    .line 295
    .line 296
    goto :goto_6

    .line 297
    :cond_9
    const/4 v0, 0x0

    .line 298
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 299
    .line 300
    .line 301
    :goto_6
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->J0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 302
    .line 303
    .line 304
    goto :goto_7

    .line 305
    :catch_0
    move-exception p1

    .line 306
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 307
    .line 308
    .line 309
    :cond_a
    :goto_7
    return-void
.end method

.method private static k0(Lcom/youth/banner/Banner;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "banner"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const v0, 0x7f0a0158

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    return-object v0
.end method

.method private l0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->i:Lcom/join/mgps/adapter/f6$g;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lcom/join/mgps/rpc/h;->W:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "source"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const-string v1, "?"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string v1, "="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, "&source=homeAd"

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, "?source=homeAd"

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->i:Lcom/join/mgps/adapter/f6$g;

    .line 67
    .line 68
    invoke-interface {v1, v0}, Lcom/join/mgps/adapter/f6$g;->p(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 72
    .line 73
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 74
    .line 75
    .line 76
    sget-object v1, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 83
    .line 84
    .line 85
    sget-object v1, Lcom/papa/sim/statistic/EventP$SecondModel;->choiceness:Lcom/papa/sim/statistic/EventP$SecondModel;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 92
    .line 93
    .line 94
    const-string v1, "\u4e91\u73a9\u4f1a\u5458\u9650\u65f6\u793c\u5305"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 97
    .line 98
    .line 99
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->AD:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 109
    .line 110
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public static m0(Ljava/util/List;I)I
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "adapterPosition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonMultiItemBean;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    if-ltz p1, :cond_4

    .line 3
    .line 4
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-lt p1, v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonMultiItemBean;->getItemType()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0xb

    .line 22
    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-ge v0, p1, :cond_3

    .line 29
    .line 30
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/join/mgps/dto/CommonMultiItemBean;->getItemType()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-ne v3, v2, :cond_2

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    return v1

    .line 48
    :cond_4
    :goto_1
    return v0
.end method

.method private n0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->i:Lcom/join/mgps/adapter/f6$g;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    sget-object v0, Lcom/join/mgps/rpc/h;->V:Ljava/lang/String;

    .line 6
    .line 7
    const-string v1, "source"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const-string v1, "?"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const-string v1, "="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v0, "&source=homeAd"

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v0, "?source=homeAd"

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->i:Lcom/join/mgps/adapter/f6$g;

    .line 67
    .line 68
    invoke-interface {v1, v0}, Lcom/join/mgps/adapter/f6$g;->p(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 72
    .line 73
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 74
    .line 75
    .line 76
    sget-object v1, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 83
    .line 84
    .line 85
    sget-object v1, Lcom/papa/sim/statistic/EventP$SecondModel;->choiceness:Lcom/papa/sim/statistic/EventP$SecondModel;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 92
    .line 93
    .line 94
    const-string v1, "\u4e91\u73a9\u65b0\u4eba\u9650\u65f6\u7279\u60e0"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 97
    .line 98
    .line 99
    sget-object v1, Lcom/papa/sim/statistic/EventP$TypeCode;->AD:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 109
    .line 110
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method private synthetic o0(Ljava/util/List;I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 6
    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v0, "1-"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    add-int/lit8 p2, p2, 0x1

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/f6;->G0(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private synthetic p0(Ljava/util/List;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 6
    .line 7
    iget v1, p0, Lcom/join/mgps/adapter/f6;->n:I

    .line 8
    .line 9
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p2, v0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 20
    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p2, "1-"

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget p2, p0, Lcom/join/mgps/adapter/f6;->n:I

    .line 33
    .line 34
    add-int/lit8 p2, p2, 0x1

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/f6;->G0(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private synthetic q0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/adapter/f6;->l0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic r0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/adapter/f6;->n0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic s0(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/f6;->i:Lcom/join/mgps/adapter/f6$g;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/join/mgps/adapter/f6;->l0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic t0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/adapter/f6;->n0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic u0(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const-string v0, "home"

    .line 6
    .line 7
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const-string v0, "choiceness"

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "10003"

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/JpInfoBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const-string v0, "AD"

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 63
    .line 64
    .line 65
    iget-object p2, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {p2, v0, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private synthetic v0(Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    sget-object v0, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    sget-object v0, Lcom/papa/sim/statistic/EventP$SecondModel;->choiceness:Lcom/papa/sim/statistic/EventP$SecondModel;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const-string v0, "10002"

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/JpInfoBean;->getCrc_link_type_val()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setResourceId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const-string v0, "speedDail"

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v1, "1_"

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    add-int/lit8 p3, p3, 0x1

    .line 74
    .line 75
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-virtual {p2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    iget-object p3, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p2, p3, v0}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 100
    .line 101
    .line 102
    iget-object p2, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 103
    .line 104
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    sget-object p3, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p2, p3, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 119
    .line 120
    .line 121
    return-void
.end method

.method private synthetic w0(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p2, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getExp_position()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/f6;->G0(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private static synthetic x0(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/findgame/data/IntentClassfyEvent;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/Util/j0;->c(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static synthetic y(Lcom/join/mgps/adapter/f6;Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->z0(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic y0(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    sget-object v0, Lcom/papa/sim/statistic/Event;->commonClick:Lcom/papa/sim/statistic/Event;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p2, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getExp_position()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/f6;->G0(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static synthetic z(Lcom/join/mgps/adapter/f6;Lcom/join/mgps/dto/HomeTopChannelBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->B0(Lcom/join/mgps/dto/HomeTopChannelBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic z0(Lcom/join/mgps/dto/CommonGameInfoBean;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getExp_position()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/f6;->G0(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public H0(Lcom/join/mgps/dto/HomeCloudActiveBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cloudActiveBean"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/f6;->l:Lcom/join/mgps/dto/HomeCloudActiveBean;

    .line 2
    .line 3
    return-void
.end method

.method public J0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a054e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/join/mgps/customview/DownloadNormalView;

    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    instance-of v1, v1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 15
    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 23
    .line 24
    new-instance v1, Lm6/c;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 27
    .line 28
    invoke-direct {v1, v2, p2}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const v1, 0x7f0a1a3f

    .line 39
    .line 40
    .line 41
    const v2, 0x7f0a1a3b

    .line 42
    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    const v4, 0x7f0a1a3e

    .line 46
    .line 47
    .line 48
    const v5, 0x7f0a1a3d

    .line 49
    .line 50
    .line 51
    const v6, 0x7f0a06d8

    .line 52
    .line 53
    .line 54
    const/4 v7, 0x0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/JpInfoBean;->getLink_type()Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eq v0, v3, :cond_0

    .line 70
    .line 71
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p1, v2, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getSub_title()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {v0, v1, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v6, v7}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v5, v7}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v4, v7}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5Game()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    .line 102
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p1, v2, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getSub_title()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {v0, v1, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v6, v7}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v5, v7}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v4, v7}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    if-eqz p2, :cond_2

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_2
    const/4 v3, 0x0

    .line 135
    :goto_0
    invoke-virtual {p1, v6, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v5, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v4, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 142
    .line 143
    .line 144
    :cond_3
    :goto_1
    return-void
.end method

.method public M0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->J0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public Y(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/HomeCloudActiveBean;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "activeBean"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a0ed0

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/widget/LinearLayout;

    .line 9
    .line 10
    if-eqz p1, :cond_f

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    if-eqz p2, :cond_e

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->getAdCfgInfo()Lcom/wufan/user/service/protobuf/MessageCloudGamingAdCfgResponse$AdCfgInfo;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_e

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->needShow()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_e

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->currentUIState()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->getUiState()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x1

    .line 38
    if-eq v1, v2, :cond_0

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 43
    :goto_0
    const/4 v2, 0x0

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 47
    .line 48
    .line 49
    iput-object v2, p0, Lcom/join/mgps/adapter/f6;->o:Landroid/view/View;

    .line 50
    .line 51
    iput-object v2, p0, Lcom/join/mgps/adapter/f6;->p:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->currentUIState()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {p2, v5}, Lcom/join/mgps/dto/HomeCloudActiveBean;->setUiState(I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->getFirstEnd()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    const/4 v6, 0x3

    .line 65
    const/4 v7, 0x2

    .line 66
    if-eqz v5, :cond_3

    .line 67
    .line 68
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->getGiftEnd()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-nez v5, :cond_2

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_2

    .line 82
    .line 83
    :cond_3
    :goto_1
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->currentUIState()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-ne v0, v6, :cond_6

    .line 91
    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 95
    .line 96
    const v1, 0x7f0d0445

    .line 97
    .line 98
    .line 99
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/join/mgps/adapter/f6;->p:Landroid/view/View;

    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 106
    .line 107
    const v1, 0x7f0d0447

    .line 108
    .line 109
    .line 110
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iput-object v0, p0, Lcom/join/mgps/adapter/f6;->o:Landroid/view/View;

    .line 115
    .line 116
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 119
    .line 120
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    const v2, 0x7f0714f9

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    float-to-int v1, v1

    .line 132
    const/4 v3, -0x2

    .line 133
    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 134
    .line 135
    .line 136
    const/high16 v1, 0x3f000000    # 0.5f

    .line 137
    .line 138
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 139
    .line 140
    iget-object v5, p0, Lcom/join/mgps/adapter/f6;->p:Landroid/view/View;

    .line 141
    .line 142
    invoke-virtual {p1, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->p:Landroid/view/View;

    .line 146
    .line 147
    new-instance v5, Lcom/join/mgps/adapter/z5;

    .line 148
    .line 149
    invoke-direct {v5, p0}, Lcom/join/mgps/adapter/z5;-><init>(Lcom/join/mgps/adapter/f6;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->o:Landroid/view/View;

    .line 156
    .line 157
    new-instance v5, Lcom/join/mgps/adapter/a6;

    .line 158
    .line 159
    invoke-direct {v5, p0}, Lcom/join/mgps/adapter/a6;-><init>(Lcom/join/mgps/adapter/f6;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .line 164
    .line 165
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 166
    .line 167
    iget-object v5, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 168
    .line 169
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    float-to-int v2, v2

    .line 178
    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 179
    .line 180
    .line 181
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 182
    .line 183
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 184
    .line 185
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    const v2, 0x7f07133d

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    float-to-int v1, v1

    .line 197
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 198
    .line 199
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->o:Landroid/view/View;

    .line 200
    .line 201
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    .line 203
    .line 204
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/adapter/f6;->p:Landroid/view/View;

    .line 205
    .line 206
    if-eqz p1, :cond_5

    .line 207
    .line 208
    invoke-direct {p0, p1, p2, v4}, Lcom/join/mgps/adapter/f6;->L0(Landroid/view/View;Lcom/join/mgps/dto/HomeCloudActiveBean;I)V

    .line 209
    .line 210
    .line 211
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/adapter/f6;->o:Landroid/view/View;

    .line 212
    .line 213
    if-eqz p1, :cond_a

    .line 214
    .line 215
    invoke-direct {p0, p1, p2, v7}, Lcom/join/mgps/adapter/f6;->L0(Landroid/view/View;Lcom/join/mgps/dto/HomeCloudActiveBean;I)V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_2

    .line 219
    .line 220
    :cond_6
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->getCurUiState()I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    const v3, 0x7f071530

    .line 225
    .line 226
    .line 227
    const/4 v5, -0x1

    .line 228
    if-ne v0, v4, :cond_8

    .line 229
    .line 230
    if-eqz v1, :cond_7

    .line 231
    .line 232
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 233
    .line 234
    const v1, 0x7f0d0444

    .line 235
    .line 236
    .line 237
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    iput-object v0, p0, Lcom/join/mgps/adapter/f6;->p:Landroid/view/View;

    .line 242
    .line 243
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 244
    .line 245
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 246
    .line 247
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    float-to-int v1, v1

    .line 256
    invoke-direct {v0, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 257
    .line 258
    .line 259
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->p:Landroid/view/View;

    .line 260
    .line 261
    new-instance v2, Lcom/join/mgps/adapter/b6;

    .line 262
    .line 263
    invoke-direct {v2, p0}, Lcom/join/mgps/adapter/b6;-><init>(Lcom/join/mgps/adapter/f6;)V

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->p:Landroid/view/View;

    .line 270
    .line 271
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    .line 273
    .line 274
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/adapter/f6;->p:Landroid/view/View;

    .line 275
    .line 276
    if-eqz p1, :cond_a

    .line 277
    .line 278
    invoke-direct {p0, p1, p2, v4}, Lcom/join/mgps/adapter/f6;->L0(Landroid/view/View;Lcom/join/mgps/dto/HomeCloudActiveBean;I)V

    .line 279
    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_8
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->getCurUiState()I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-ne v0, v7, :cond_a

    .line 287
    .line 288
    if-eqz v1, :cond_9

    .line 289
    .line 290
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 291
    .line 292
    const v1, 0x7f0d0446

    .line 293
    .line 294
    .line 295
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iput-object v0, p0, Lcom/join/mgps/adapter/f6;->o:Landroid/view/View;

    .line 300
    .line 301
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 302
    .line 303
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 304
    .line 305
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    float-to-int v1, v1

    .line 314
    invoke-direct {v0, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 315
    .line 316
    .line 317
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->o:Landroid/view/View;

    .line 318
    .line 319
    new-instance v2, Lcom/join/mgps/adapter/c6;

    .line 320
    .line 321
    invoke-direct {v2, p0}, Lcom/join/mgps/adapter/c6;-><init>(Lcom/join/mgps/adapter/f6;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    .line 326
    .line 327
    iget-object v1, p0, Lcom/join/mgps/adapter/f6;->o:Landroid/view/View;

    .line 328
    .line 329
    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    .line 331
    .line 332
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/adapter/f6;->o:Landroid/view/View;

    .line 333
    .line 334
    if-eqz p1, :cond_a

    .line 335
    .line 336
    invoke-direct {p0, p1, p2, v7}, Lcom/join/mgps/adapter/f6;->L0(Landroid/view/View;Lcom/join/mgps/dto/HomeCloudActiveBean;I)V

    .line 337
    .line 338
    .line 339
    :cond_a
    :goto_2
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->getExplore()Z

    .line 340
    .line 341
    .line 342
    move-result p1

    .line 343
    if-nez p1, :cond_f

    .line 344
    .line 345
    new-instance p1, Lcom/join/mgps/dto/ExtBean;

    .line 346
    .line 347
    invoke-direct {p1}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 348
    .line 349
    .line 350
    sget-object v0, Lcom/papa/sim/statistic/EventP$FirstModel;->home:Lcom/papa/sim/statistic/EventP$FirstModel;

    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 357
    .line 358
    .line 359
    sget-object v0, Lcom/papa/sim/statistic/EventP$SecondModel;->choiceness:Lcom/papa/sim/statistic/EventP$SecondModel;

    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 366
    .line 367
    .line 368
    sget-object v0, Lcom/papa/sim/statistic/EventP$TypeCode;->AD:Lcom/papa/sim/statistic/EventP$TypeCode;

    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 375
    .line 376
    .line 377
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->getCurUiState()I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    const-string v1, "\u4e91\u73a9\u65b0\u4eba\u9650\u65f6\u7279\u60e0"

    .line 382
    .line 383
    const-string v2, "\u4e91\u73a9\u4f1a\u5458\u9650\u65f6\u793c\u5305"

    .line 384
    .line 385
    if-ne v0, v6, :cond_b

    .line 386
    .line 387
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 388
    .line 389
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    sget-object v3, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 394
    .line 395
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    invoke-virtual {v5, v2}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 408
    .line 409
    .line 410
    move-result-object v2

    .line 411
    invoke-virtual {v0, v3, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 412
    .line 413
    .line 414
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 415
    .line 416
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 421
    .line 422
    .line 423
    move-result-object p1

    .line 424
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    invoke-virtual {v0, v3, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 437
    .line 438
    .line 439
    goto :goto_3

    .line 440
    :cond_b
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->getCurUiState()I

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    if-ne v0, v7, :cond_c

    .line 445
    .line 446
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 447
    .line 448
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    sget-object v1, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 453
    .line 454
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 459
    .line 460
    .line 461
    move-result-object p1

    .line 462
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 467
    .line 468
    .line 469
    move-result-object p1

    .line 470
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 471
    .line 472
    .line 473
    goto :goto_3

    .line 474
    :cond_c
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeCloudActiveBean;->getCurUiState()I

    .line 475
    .line 476
    .line 477
    move-result v0

    .line 478
    if-ne v0, v4, :cond_d

    .line 479
    .line 480
    iget-object v0, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 481
    .line 482
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    sget-object v2, Lcom/papa/sim/statistic/Event;->commonExp:Lcom/papa/sim/statistic/Event;

    .line 487
    .line 488
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->copy()Lcom/join/mgps/dto/ExtBean;

    .line 489
    .line 490
    .line 491
    move-result-object p1

    .line 492
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/ExtBean;->setScenesCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 497
    .line 498
    .line 499
    move-result-object p1

    .line 500
    invoke-virtual {p1}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 501
    .line 502
    .line 503
    move-result-object p1

    .line 504
    invoke-virtual {v0, v2, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 505
    .line 506
    .line 507
    :cond_d
    :goto_3
    invoke-virtual {p2, v4}, Lcom/join/mgps/dto/HomeCloudActiveBean;->setExplore(Z)V

    .line 508
    .line 509
    .line 510
    goto :goto_4

    .line 511
    :cond_e
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 512
    .line 513
    .line 514
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 515
    .line 516
    .line 517
    :cond_f
    :goto_4
    return-void
.end method

.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->j0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 6
    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 20
    .line 21
    new-instance v2, Lcom/join/mgps/adapter/p5;

    .line 22
    .line 23
    invoke-direct {v2, p0, p2}, Lcom/join/mgps/adapter/p5;-><init>(Lcom/join/mgps/adapter/f6;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getGif_ico()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getIco()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getGif_ico()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_0
    const v2, 0x7f0a14a2

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 63
    .line 64
    invoke-static {v2, v1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const v1, 0x7f0a1a3c

    .line 68
    .line 69
    .line 70
    const-string v2, ""

    .line 71
    .line 72
    const v3, 0x7f0a1a3b

    .line 73
    .line 74
    .line 75
    const v4, 0x7f0a1a3d

    .line 76
    .line 77
    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {p1, v3, v5}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    if-nez v5, :cond_2

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    :goto_1
    invoke-virtual {p1, v1, v2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    const-string v5, " | "

    .line 114
    .line 115
    invoke-static {v1, v2, v5}, Lcom/join/mgps/Util/UtilsMy;->R1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {p1, v4, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-virtual {p1, v3, v5}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v1, v2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v4, v2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 134
    .line 135
    .line 136
    :goto_2
    const v1, 0x7f0a054e

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Lcom/join/mgps/customview/DownloadNormalView;

    .line 144
    .line 145
    new-instance v2, Lm6/c;

    .line 146
    .line 147
    iget-object v5, p0, Lcom/join/mgps/adapter/f6;->h:Landroid/content/Context;

    .line 148
    .line 149
    invoke-direct {v2, v5, p2}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const/4 v2, 0x1

    .line 160
    const v5, 0x7f0a06d8

    .line 161
    .line 162
    .line 163
    const/4 v6, 0x0

    .line 164
    if-eqz v1, :cond_4

    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/join/mgps/dto/JpInfoBean;->getLink_type()Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eq v1, v2, :cond_4

    .line 179
    .line 180
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    invoke-virtual {p1, v3, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v5, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p1, v4, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_4
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5Game()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_5

    .line 199
    .line 200
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-virtual {p1, v3, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v5, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v4, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 211
    .line 212
    .line 213
    goto :goto_4

    .line 214
    :cond_5
    if-eqz v0, :cond_6

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_6
    const/4 v2, 0x0

    .line 218
    :goto_3
    invoke-virtual {p1, v5, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1, v4, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 222
    .line 223
    .line 224
    :cond_7
    :goto_4
    return-void
.end method

.method public i0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/join/mgps/dto/HomeTopChannelBean;

    .line 6
    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getData()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lcom/join/mgps/dto/HomeTopChannelBean;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeTopChannelBean;->getTheNew()Lcom/join/mgps/dto/HomeDailyNewBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_6

    .line 20
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeTopChannelBean;->getTheNew()Lcom/join/mgps/dto/HomeDailyNewBean;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/join/mgps/dto/HomeDailyNewBean;->getCount()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, "\u6b3e"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const v1, 0x7f0a19d9

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 50
    .line 51
    .line 52
    const v0, 0x7f0a0930

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Lcom/join/mgps/adapter/s5;

    .line 60
    .line 61
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/s5;-><init>(Lcom/join/mgps/adapter/f6;Lcom/join/mgps/dto/HomeTopChannelBean;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    const-string v2, "MM\u6708dd\u65e5"

    .line 72
    .line 73
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/e0;->D(JLjava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const v1, 0x7f0a1a3b

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeTopChannelBean;->getTheNew()Lcom/join/mgps/dto/HomeDailyNewBean;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeDailyNewBean;->getList()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const v1, 0x7f0a1460

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const v2, 0x7f0a0661

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const v3, 0x7f0a0662

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    const v4, 0x7f0a0663

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v4}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    const v5, 0x7f0a14a9

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 127
    .line 128
    const v6, 0x7f0a14aa

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v6}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 136
    .line 137
    const v7, 0x7f0a14ab

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v7}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v7

    .line 144
    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 145
    .line 146
    const/4 v8, 0x3

    .line 147
    if-nez v0, :cond_0

    .line 148
    .line 149
    const/4 v9, 0x0

    .line 150
    goto :goto_0

    .line 151
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    :goto_0
    invoke-direct {p0, v9, v2, v3, v4}, Lcom/join/mgps/adapter/f6;->T(ILandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v5}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Lcom/facebook/drawee/generic/a;

    .line 167
    .line 168
    const/4 v3, 0x0

    .line 169
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/a;->I(Landroid/graphics/drawable/Drawable;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v6}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Lcom/facebook/drawee/generic/a;

    .line 177
    .line 178
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/a;->I(Landroid/graphics/drawable/Drawable;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    check-cast v2, Lcom/facebook/drawee/generic/a;

    .line 186
    .line 187
    invoke-virtual {v2, v3}, Lcom/facebook/drawee/generic/a;->I(Landroid/graphics/drawable/Drawable;)V

    .line 188
    .line 189
    .line 190
    const/4 v2, 0x1

    .line 191
    if-lt v9, v2, :cond_1

    .line 192
    .line 193
    add-int/lit8 v2, v9, -0x1

    .line 194
    .line 195
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    check-cast v2, Lcom/join/mgps/dto/HomeDailyNewListBean;

    .line 200
    .line 201
    invoke-virtual {v2}, Lcom/join/mgps/dto/HomeDailyNewListBean;->getIco()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    invoke-static {v5, v2}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    :cond_1
    const/4 v2, 0x2

    .line 209
    if-lt v9, v2, :cond_2

    .line 210
    .line 211
    add-int/lit8 v3, v9, -0x2

    .line 212
    .line 213
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    check-cast v3, Lcom/join/mgps/dto/HomeDailyNewListBean;

    .line 218
    .line 219
    invoke-virtual {v3}, Lcom/join/mgps/dto/HomeDailyNewListBean;->getIco()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-static {v6, v3}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    :cond_2
    if-lt v9, v8, :cond_3

    .line 227
    .line 228
    add-int/lit8 v3, v9, -0x3

    .line 229
    .line 230
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    check-cast v0, Lcom/join/mgps/dto/HomeDailyNewListBean;

    .line 235
    .line 236
    invoke-virtual {v0}, Lcom/join/mgps/dto/HomeDailyNewListBean;->getIco()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-static {v7, v0}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :cond_3
    if-lt v9, v2, :cond_4

    .line 244
    .line 245
    invoke-virtual {v6}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 250
    .line 251
    invoke-direct {p0}, Lcom/join/mgps/adapter/f6;->E0()Landroid/graphics/drawable/Drawable;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    invoke-virtual {v0, v2}, Lcom/facebook/drawee/generic/a;->I(Landroid/graphics/drawable/Drawable;)V

    .line 256
    .line 257
    .line 258
    :cond_4
    if-lt v9, v8, :cond_5

    .line 259
    .line 260
    invoke-virtual {v7}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 265
    .line 266
    invoke-direct {p0}, Lcom/join/mgps/adapter/f6;->E0()Landroid/graphics/drawable/Drawable;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v0, v2}, Lcom/facebook/drawee/generic/a;->I(Landroid/graphics/drawable/Drawable;)V

    .line 271
    .line 272
    .line 273
    :cond_5
    new-instance v0, Lcom/join/mgps/adapter/t5;

    .line 274
    .line 275
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/t5;-><init>(Lcom/join/mgps/adapter/f6;)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    .line 280
    .line 281
    :cond_6
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeTopChannelBean;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    if-eqz v0, :cond_7

    .line 286
    .line 287
    const v0, 0x7f0a08fe

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 295
    .line 296
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeTopChannelBean;->getAd_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    new-instance v1, Lcom/join/mgps/adapter/u5;

    .line 312
    .line 313
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/adapter/u5;-><init>(Lcom/join/mgps/adapter/f6;Lcom/join/mgps/dto/HomeTopChannelBean;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    .line 318
    .line 319
    :cond_7
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeTopChannelBean;->getBroadcast()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    if-eqz v0, :cond_8

    .line 324
    .line 325
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeTopChannelBean;->getBroadcast()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 326
    .line 327
    .line 328
    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getSub_title()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    const v1, 0x7f0a0550

    .line 334
    .line 335
    .line 336
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 337
    .line 338
    .line 339
    const v0, 0x7f0a054f

    .line 340
    .line 341
    .line 342
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 347
    .line 348
    invoke-virtual {p2}, Lcom/join/mgps/dto/HomeTopChannelBean;->getBroadcast()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 349
    .line 350
    .line 351
    move-result-object v1

    .line 352
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    const v0, 0x7f0a0313

    .line 360
    .line 361
    .line 362
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 363
    .line 364
    .line 365
    move-result-object p1

    .line 366
    new-instance v0, Lcom/join/mgps/adapter/v5;

    .line 367
    .line 368
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/v5;-><init>(Lcom/join/mgps/adapter/f6;Lcom/join/mgps/dto/HomeTopChannelBean;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    .line 373
    .line 374
    :cond_8
    return-void
.end method

.method protected j0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonMultiItemBean;->getItemType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    goto :goto_0

    .line 9
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->f0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->e0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->c0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->d0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->h0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->i0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->b0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->g0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->Z(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :pswitch_a
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->a0(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :pswitch_b
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/f6;->X(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/CommonMultiItemBean;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
