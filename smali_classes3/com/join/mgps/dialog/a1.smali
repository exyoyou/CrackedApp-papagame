.class public Lcom/join/mgps/dialog/a1;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/a1$f;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/CheckBox;

.field private g:Landroid/widget/CheckBox;

.field private h:I

.field private i:Lcom/join/mgps/pref/PrefDef_;

.field private j:Lcom/join/mgps/dialog/a1$f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/a1;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "theme"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/a1;->b:Landroid/content/Context;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cancelable",
            "cancelListener"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dialog/a1;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/a1;)Lcom/join/mgps/dialog/a1$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/a1;->j:Lcom/join/mgps/dialog/a1$f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/a1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/dialog/a1;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/join/mgps/dialog/a1;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/a1;->c:Landroid/widget/CheckBox;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/dialog/a1;)Lcom/join/mgps/pref/PrefDef_;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/a1;->i:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/dialog/a1;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/a1;->d:Landroid/widget/CheckBox;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/dialog/a1;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/a1;->e:Landroid/widget/CheckBox;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/dialog/a1;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/a1;->f:Landroid/widget/CheckBox;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/join/mgps/dialog/a1;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/a1;->g:Landroid/widget/CheckBox;

    .line 2
    .line 3
    return-object p0
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/a1;->c:Landroid/widget/CheckBox;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/dialog/a1;->d:Landroid/widget/CheckBox;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/dialog/a1;->e:Landroid/widget/CheckBox;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/dialog/a1;->f:Landroid/widget/CheckBox;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/dialog/a1;->g:Landroid/widget/CheckBox;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public j(Lcom/join/mgps/dialog/a1$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "choiceAlowGrps"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/a1;->j:Lcom/join/mgps/dialog/a1$f;

    .line 2
    .line 3
    return-void
.end method

.method public k(Lcom/join/mgps/pref/PrefDef_;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefDef"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/a1;->i:Lcom/join/mgps/pref/PrefDef_;

    .line 2
    .line 3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0371

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0a115d

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/LinearLayout;

    .line 18
    .line 19
    const v0, 0x7f0a1154

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/widget/LinearLayout;

    .line 27
    .line 28
    const v1, 0x7f0a1158

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/widget/LinearLayout;

    .line 36
    .line 37
    const v2, 0x7f0a1155

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/widget/LinearLayout;

    .line 45
    .line 46
    const v3, 0x7f0a1160

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Landroid/widget/LinearLayout;

    .line 54
    .line 55
    const v4, 0x7f0a115e

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Landroid/widget/CheckBox;

    .line 63
    .line 64
    iput-object v4, p0, Lcom/join/mgps/dialog/a1;->c:Landroid/widget/CheckBox;

    .line 65
    .line 66
    const v4, 0x7f0a1157

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    check-cast v4, Landroid/widget/CheckBox;

    .line 74
    .line 75
    iput-object v4, p0, Lcom/join/mgps/dialog/a1;->d:Landroid/widget/CheckBox;

    .line 76
    .line 77
    const v4, 0x7f0a1159

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Landroid/widget/CheckBox;

    .line 85
    .line 86
    iput-object v4, p0, Lcom/join/mgps/dialog/a1;->e:Landroid/widget/CheckBox;

    .line 87
    .line 88
    const v4, 0x7f0a1156

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Landroid/widget/CheckBox;

    .line 96
    .line 97
    iput-object v4, p0, Lcom/join/mgps/dialog/a1;->f:Landroid/widget/CheckBox;

    .line 98
    .line 99
    const v4, 0x7f0a1161

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Landroid/widget/CheckBox;

    .line 107
    .line 108
    iput-object v4, p0, Lcom/join/mgps/dialog/a1;->g:Landroid/widget/CheckBox;

    .line 109
    .line 110
    new-instance v4, Lcom/join/mgps/dialog/a1$a;

    .line 111
    .line 112
    invoke-direct {v4, p0}, Lcom/join/mgps/dialog/a1$a;-><init>(Lcom/join/mgps/dialog/a1;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    .line 117
    .line 118
    new-instance p1, Lcom/join/mgps/dialog/a1$b;

    .line 119
    .line 120
    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/a1$b;-><init>(Lcom/join/mgps/dialog/a1;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    .line 125
    .line 126
    new-instance p1, Lcom/join/mgps/dialog/a1$c;

    .line 127
    .line 128
    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/a1$c;-><init>(Lcom/join/mgps/dialog/a1;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    .line 133
    .line 134
    new-instance p1, Lcom/join/mgps/dialog/a1$d;

    .line 135
    .line 136
    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/a1$d;-><init>(Lcom/join/mgps/dialog/a1;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    .line 141
    .line 142
    new-instance p1, Lcom/join/mgps/dialog/a1$e;

    .line 143
    .line 144
    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/a1$e;-><init>(Lcom/join/mgps/dialog/a1;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/a1;->c:Landroid/widget/CheckBox;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/dialog/a1;->d:Landroid/widget/CheckBox;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/dialog/a1;->e:Landroid/widget/CheckBox;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/dialog/a1;->f:Landroid/widget/CheckBox;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/dialog/a1;->g:Landroid/widget/CheckBox;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/dialog/a1;->i:Lcom/join/mgps/pref/PrefDef_;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->gprsNoticeInfo()Lorg/androidannotations/api/sharedpreferences/i;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lorg/androidannotations/api/sharedpreferences/b;->d()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    iput v0, p0, Lcom/join/mgps/dialog/a1;->h:I

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    if-eq v0, v1, :cond_3

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    if-eq v0, v2, :cond_2

    .line 55
    .line 56
    const/4 v2, 0x3

    .line 57
    if-eq v0, v2, :cond_1

    .line 58
    .line 59
    const/4 v2, 0x4

    .line 60
    if-eq v0, v2, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/a1;->g:Landroid/widget/CheckBox;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/a1;->f:Landroid/widget/CheckBox;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/a1;->e:Landroid/widget/CheckBox;

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/dialog/a1;->d:Landroid/widget/CheckBox;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/dialog/a1;->c:Landroid/widget/CheckBox;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 90
    .line 91
    .line 92
    :goto_0
    return-void
.end method
