.class public Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d006f
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field hideType:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field isHide:Z

.field llPwd:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field rvKeyBoard:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field statubar:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->deleteNum()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->addNum(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->clearInput()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->change(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addNum(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->llPwd:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_6

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->llPwd:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, v0, :cond_6

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->llPwd:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_5

    .line 27
    .line 28
    const v3, 0x7f0a18af

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_5

    .line 46
    .line 47
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    const p1, 0x7f0a0949

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    const-string v2, "#FFFFFF"

    .line 60
    .line 61
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 66
    .line 67
    .line 68
    :cond_0
    const/4 p1, 0x1

    .line 69
    sub-int/2addr v0, p1

    .line 70
    if-ne v1, v0, :cond_6

    .line 71
    .line 72
    iget v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->hideType:I

    .line 73
    .line 74
    if-nez v0, :cond_1

    .line 75
    .line 76
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->cancelPretend()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    const/16 v1, 0x63

    .line 81
    .line 82
    if-ne v0, v1, :cond_2

    .line 83
    .line 84
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->checkOldPwd()V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_2
    const/16 v1, 0x64

    .line 89
    .line 90
    if-ne v0, v1, :cond_3

    .line 91
    .line 92
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->showConfirmDialog()V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    if-eq v0, p1, :cond_4

    .line 97
    .line 98
    const/4 p1, 0x2

    .line 99
    if-ne v0, p1, :cond_6

    .line 100
    .line 101
    :cond_4
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->showConfirmDialog()V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    :goto_1
    return-void
.end method

.method private cancelPretend()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->getInputPwd()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->hide_app_pwd()Lorg/androidannotations/api/sharedpreferences/p;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->showConfirmDialog()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v0, "\u5bc6\u7801\u6821\u9a8c\u672a\u901a\u8fc7"

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->showMessage(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->clearInput()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method

.method private change(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pwd"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->hide_app_pwd()Lorg/androidannotations/api/sharedpreferences/p;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->isHide:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    :cond_0
    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->hide_app_switch()Lorg/androidannotations/api/sharedpreferences/i;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-boolean v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->isHide:Z

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->hideType:I

    .line 29
    .line 30
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v0, Landroid/content/ComponentName;

    .line 42
    .line 43
    const-string v1, "default.alias"

    .line 44
    .line 45
    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-boolean v1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->isHide:Z

    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    const/4 v3, 0x1

    .line 52
    if-nez v1, :cond_2

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const/4 v1, 0x1

    .line 57
    :goto_1
    invoke-virtual {p1, v0, v1, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Landroid/content/ComponentName;

    .line 61
    .line 62
    const-string v1, "com.join.mgps.activity.hideapp.HideAppNotebookActivity_"

    .line 63
    .line 64
    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-boolean v1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->isHide:Z

    .line 68
    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    iget v1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->hideType:I

    .line 72
    .line 73
    if-ne v1, v3, :cond_3

    .line 74
    .line 75
    const/4 v1, 0x1

    .line 76
    goto :goto_2

    .line 77
    :cond_3
    const/4 v1, 0x2

    .line 78
    :goto_2
    invoke-virtual {p1, v0, v1, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Landroid/content/ComponentName;

    .line 82
    .line 83
    const-string v1, "com.join.mgps.activity.hideapp.HideAppCalculatorActivity_"

    .line 84
    .line 85
    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-boolean v1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->isHide:Z

    .line 89
    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    iget v1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->hideType:I

    .line 93
    .line 94
    if-ne v1, v2, :cond_4

    .line 95
    .line 96
    const/4 v1, 0x1

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    const/4 v1, 0x2

    .line 99
    :goto_3
    invoke-virtual {p1, v0, v1, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 100
    .line 101
    .line 102
    iget-boolean p1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->isHide:Z

    .line 103
    .line 104
    if-nez p1, :cond_7

    .line 105
    .line 106
    iget p1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->hideType:I

    .line 107
    .line 108
    if-ne p1, v3, :cond_5

    .line 109
    .line 110
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->context:Landroid/content/Context;

    .line 111
    .line 112
    invoke-static {p1}, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity_$b;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1, v3}, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity_$b;->a(Z)Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity_$b;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_5
    if-ne p1, v2, :cond_6

    .line 125
    .line 126
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->context:Landroid/content/Context;

    .line 127
    .line 128
    invoke-static {p1}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity_$e;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1, v3}, Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity_$e;->a(Z)Lcom/join/mgps/activity/hideapp/HideAppCalculatorActivity_$e;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 137
    .line 138
    .line 139
    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->context:Landroid/content/Context;

    .line 140
    .line 141
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    sget-object v0, Lcom/papa/sim/statistic/Event;->usefakeAPP:Lcom/papa/sim/statistic/Event;

    .line 146
    .line 147
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 148
    .line 149
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 153
    .line 154
    .line 155
    invoke-static {p0}, Lcom/join/mgps/Util/j2;->f(Landroid/content/Context;)V

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_7
    invoke-static {p0}, Lcom/join/mgps/Util/j2;->a(Landroid/content/Context;)V

    .line 160
    .line 161
    .line 162
    :goto_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 163
    .line 164
    .line 165
    return-void
.end method

.method private checkOldPwd()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->getInputPwd()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/join/mgps/pref/PrefDef_;->hide_app_pwd()Lorg/androidannotations/api/sharedpreferences/p;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/16 v0, 0x64

    .line 24
    .line 25
    iput v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->hideType:I

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->clearInput()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->initView()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v0, "\u5bc6\u7801\u6821\u9a8c\u672a\u901a\u8fc7"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->showMessage(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->clearInput()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method private clearInput()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->llPwd:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->llPwd:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const v3, 0x7f0a18af

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/widget/TextView;

    .line 26
    .line 27
    const-string v4, ""

    .line 28
    .line 29
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    const v3, 0x7f0a0949

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    const-string v3, "#FF656565"

    .line 42
    .line 43
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    .line 49
    .line 50
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    return-void
.end method

.method private deleteNum()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->llPwd:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->llPwd:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, v0, :cond_1

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->llPwd:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    add-int/lit8 v3, v0, -0x1

    .line 23
    .line 24
    sub-int/2addr v3, v1

    .line 25
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    const v3, 0x7f0a18af

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    const-string v0, ""

    .line 51
    .line 52
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    const v0, 0x7f0a0949

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    const-string v1, "#FF656565"

    .line 65
    .line 66
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    :goto_1
    return-void
.end method

.method private getInputPwd()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->llPwd:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_1

    .line 11
    .line 12
    iget-object v3, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->llPwd:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    const v4, 0x7f0a18af

    .line 21
    .line 22
    .line 23
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_0

    .line 38
    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return-object v1
.end method

.method private initKeyBoard()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "7"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    const-string v1, "8"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const-string v1, "9"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const-string v1, "4"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    const-string v1, "5"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    const-string v1, "6"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    const-string v1, "1"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    const-string v1, "2"

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    const-string v1, "3"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    const-string v1, "0"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    const-string v1, "."

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    const-string v1, "\u00d7"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->rvKeyBoard:Landroidx/recyclerview/widget/RecyclerView;

    .line 67
    .line 68
    new-instance v2, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 69
    .line 70
    iget-object v3, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->context:Landroid/content/Context;

    .line 71
    .line 72
    const/4 v4, 0x3

    .line 73
    invoke-direct {v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$c;

    .line 80
    .line 81
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$c;-><init>(Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;Ljava/util/List;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->rvKeyBoard:Landroidx/recyclerview/widget/RecyclerView;

    .line 85
    .line 86
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 87
    .line 88
    .line 89
    new-instance v2, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$a;

    .line 90
    .line 91
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$a;-><init>(Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;Ljava/util/ArrayList;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Lcom/join/mgps/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/join/mgps/base/BaseQuickAdapter$j;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method private initView()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->hideType:I

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    const/16 v2, 0x63

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    if-eq v0, v3, :cond_0

    .line 9
    .line 10
    const/4 v4, 0x2

    .line 11
    if-eq v0, v4, :cond_0

    .line 12
    .line 13
    if-eq v0, v2, :cond_0

    .line 14
    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v3, 0x0

    .line 19
    :goto_0
    iput-boolean v3, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->isHide:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->title_textview:Landroid/widget/TextView;

    .line 24
    .line 25
    const-string v1, "\u8f93\u5165\u4f2a\u88c5\u5bc6\u7801"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    if-ne v0, v2, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->title_textview:Landroid/widget/TextView;

    .line 34
    .line 35
    const-string v1, "\u8f93\u5165\u65e7\u5bc6\u7801"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    if-ne v0, v1, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->title_textview:Landroid/widget/TextView;

    .line 44
    .line 45
    const-string v1, "\u8f93\u5165\u65b0\u5bc6\u7801"

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->initKeyBoard()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private showConfirmDialog()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->getInputPwd()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/join/mgps/dialog/c1;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    iget-boolean v3, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->isHide:Z

    .line 10
    .line 11
    invoke-direct {v1, v2, v0, v3}, Lcom/join/mgps/dialog/c1;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$b;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity$b;-><init>(Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/c1;->a(Lcom/join/mgps/dialog/c1$a;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method afterviews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/high16 v1, 0x4000000

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/16 v2, 0x500

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 19
    .line 20
    .line 21
    const/high16 v1, -0x80000000

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->v(Landroid/content/Context;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->statubar:Landroid/view/View;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->statubar:Landroid/view/View;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->initView()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
