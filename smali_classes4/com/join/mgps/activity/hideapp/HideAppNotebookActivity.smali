.class public Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d006e
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field etNote:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field isFromBackground:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field prefDef:Lcom/join/mgps/pref/PrefDef_;
    .annotation build Lorg/androidannotations/annotations/sharedpreferences/Pref;
    .end annotation
.end field

.field private pwd:Ljava/lang/String;

.field statubar:Landroid/view/View;
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

.method static synthetic access$000(Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;->pwd:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method afterviews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->hide_app_pwd()Lorg/androidannotations/api/sharedpreferences/p;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;->pwd:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/high16 v1, 0x4000000

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const/16 v2, 0x500

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 33
    .line 34
    .line 35
    const/high16 v1, -0x80000000

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Lcom/join/android/app/common/utils/q;->v(Landroid/content/Context;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;->statubar:Landroid/view/View;

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;->statubar:Landroid/view/View;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;->etNote:Landroid/widget/EditText;

    .line 64
    .line 65
    new-instance v1, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity$a;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity$a;-><init>(Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;->pwd:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Landroid/content/ComponentName;

    .line 86
    .line 87
    const-string v2, "default.alias"

    .line 88
    .line 89
    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 v2, 0x1

    .line 93
    invoke-virtual {v0, v1, v2, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 94
    .line 95
    .line 96
    new-instance v1, Landroid/content/ComponentName;

    .line 97
    .line 98
    const-string v3, "com.join.mgps.activity.hideapp.HideAppNotebookActivity_"

    .line 99
    .line 100
    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/4 v3, 0x2

    .line 104
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 105
    .line 106
    .line 107
    new-instance v1, Landroid/content/ComponentName;

    .line 108
    .line 109
    const-string v4, "com.join.mgps.activity.hideapp.HideAppCalculatorActivity_"

    .line 110
    .line 111
    invoke-direct {v1, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0}, Lcom/join/mgps/Util/j2;->a(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;->context:Landroid/content/Context;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MGMainActivity_$d3;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 130
    .line 131
    .line 132
    :cond_1
    return-void
.end method

.method back_image()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method
