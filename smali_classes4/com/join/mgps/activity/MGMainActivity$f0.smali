.class Lcom/join/mgps/activity/MGMainActivity$f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/p2$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$f0;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$f0;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$f0;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/pref/b;->F(Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$f0;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/join/mgps/Util/z;->e(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$f0;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastApplyReadPhonePermission()Lorg/androidannotations/api/sharedpreferences/k;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$f0;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->lastApplyReadPhonePermissionOnRecom()Lorg/androidannotations/api/sharedpreferences/k;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$f0;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->firstShowUserPermiss()Lorg/androidannotations/api/sharedpreferences/d;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$f0;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 90
    .line 91
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const/4 v2, 0x0

    .line 100
    invoke-virtual {v0, v2}, Lcom/papa/sim/statistic/pref/b;->L(Z)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$f0;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 104
    .line 105
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->dialogBack:Landroid/widget/TextView;

    .line 106
    .line 107
    const/16 v2, 0x8

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$f0;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 113
    .line 114
    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->initOM()V

    .line 115
    .line 116
    .line 117
    sget-object v0, Lcom/MApplication;->z:Lcom/MApplication;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/MApplication;->B()V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$f0;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->getRootUrl()V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$f0;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->preLogin(Z)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$f0;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/MGMainActivity;->afterViewsInitData(Z)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$f0;->a:Lcom/join/mgps/activity/MGMainActivity;

    .line 138
    .line 139
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$300(Lcom/join/mgps/activity/MGMainActivity;)V

    .line 140
    .line 141
    .line 142
    invoke-static {}, Lcom/constant/a;->a()Lh8/a;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    if-eqz v0, :cond_1

    .line 147
    .line 148
    invoke-interface {v0}, Lh8/a;->a()V

    .line 149
    .line 150
    .line 151
    :cond_1
    return-void
.end method
