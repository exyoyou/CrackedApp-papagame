.class public Lcom/join/mgps/dialog/t;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/t$e;
    }
.end annotation


# instance fields
.field private b:Lcom/join/mgps/dialog/t$e;

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/CheckBox;


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
    iput-object p1, p0, Lcom/join/mgps/dialog/t;->c:Landroid/content/Context;

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
    iput-object p1, p0, Lcom/join/mgps/dialog/t;->c:Landroid/content/Context;

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
    iput-object p1, p0, Lcom/join/mgps/dialog/t;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/t;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/t;->d:Landroid/widget/CheckBox;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/t;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/t;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/dialog/t;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/t;->e:Landroid/widget/CheckBox;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/dialog/t;)Landroid/widget/CheckBox;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/t;->f:Landroid/widget/CheckBox;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public e(Lcom/join/mgps/dialog/t$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "choicePlug"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/t;->b:Lcom/join/mgps/dialog/t$e;

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
    const p1, 0x7f0d036c

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const p1, 0x7f0a111e

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
    const v0, 0x7f0a118c

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
    const v1, 0x7f0a1549

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
    const v2, 0x7f0a177f

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Landroid/widget/TextView;

    .line 45
    .line 46
    const-string v3, "\u8bf7\u9009\u62e9\u9ed8\u8ba4\u542f\u52a8\u63d2\u4ef6"

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    const v3, 0x7f0a1bf6

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Landroid/widget/LinearLayout;

    .line 63
    .line 64
    new-instance v4, Lcom/join/mgps/dialog/t$a;

    .line 65
    .line 66
    invoke-direct {v4, p0}, Lcom/join/mgps/dialog/t$a;-><init>(Lcom/join/mgps/dialog/t;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    new-instance v1, Lcom/join/mgps/dialog/t$b;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/t$b;-><init>(Lcom/join/mgps/dialog/t;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Lcom/join/mgps/dialog/t$c;

    .line 81
    .line 82
    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/t$c;-><init>(Lcom/join/mgps/dialog/t;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    new-instance p1, Lcom/join/mgps/dialog/t$d;

    .line 89
    .line 90
    invoke-direct {p1, p0}, Lcom/join/mgps/dialog/t$d;-><init>(Lcom/join/mgps/dialog/t;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    const p1, 0x7f0a154a

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Landroid/widget/CheckBox;

    .line 104
    .line 105
    iput-object p1, p0, Lcom/join/mgps/dialog/t;->d:Landroid/widget/CheckBox;

    .line 106
    .line 107
    const p1, 0x7f0a076e

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, Landroid/widget/CheckBox;

    .line 115
    .line 116
    iput-object p1, p0, Lcom/join/mgps/dialog/t;->e:Landroid/widget/CheckBox;

    .line 117
    .line 118
    const p1, 0x7f0a076f

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Landroid/widget/CheckBox;

    .line 126
    .line 127
    iput-object p1, p0, Lcom/join/mgps/dialog/t;->f:Landroid/widget/CheckBox;

    .line 128
    .line 129
    iget-object p1, p0, Lcom/join/mgps/dialog/t;->d:Landroid/widget/CheckBox;

    .line 130
    .line 131
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lcom/join/mgps/dialog/t;->e:Landroid/widget/CheckBox;

    .line 135
    .line 136
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/join/mgps/dialog/t;->f:Landroid/widget/CheckBox;

    .line 140
    .line 141
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/join/mgps/dialog/t;->c:Landroid/content/Context;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Lcom/papa/sim/statistic/pref/b;->n()I

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    const/4 v0, 0x1

    .line 155
    if-eqz p1, :cond_2

    .line 156
    .line 157
    if-eq p1, v0, :cond_1

    .line 158
    .line 159
    const/4 v1, 0x2

    .line 160
    if-eq p1, v1, :cond_0

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/t;->f:Landroid/widget/CheckBox;

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/t;->e:Landroid/widget/CheckBox;

    .line 170
    .line 171
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/dialog/t;->d:Landroid/widget/CheckBox;

    .line 176
    .line 177
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 178
    .line 179
    .line 180
    :goto_0
    return-void
.end method

.method public show()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/dialog/t;->d:Landroid/widget/CheckBox;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/dialog/t;->e:Landroid/widget/CheckBox;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/dialog/t;->f:Landroid/widget/CheckBox;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/dialog/t;->c:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/papa/sim/statistic/pref/b;->k(Landroid/content/Context;)Lcom/papa/sim/statistic/pref/b;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/papa/sim/statistic/pref/b;->n()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    if-eq v0, v2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/dialog/t;->f:Landroid/widget/CheckBox;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/dialog/t;->e:Landroid/widget/CheckBox;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/t;->d:Landroid/widget/CheckBox;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method
