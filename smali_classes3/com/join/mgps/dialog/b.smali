.class public Lcom/join/mgps/dialog/b;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/b$c;
    }
.end annotation


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/CheckBox;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/join/mgps/dialog/b$c;

.field private m:Z

.field private n:I

.field private o:I


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

    const-string p1, "\u63d0\u793a"

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->h:Ljava/lang/String;

    const-string p1, "\u767b\u9646\u540e\uff0c\u5f00\u59cb\u609f\u996d\u6e38\u620f\u7684\u7cbe\u5f69\u65c5\u6e38"

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->i:Ljava/lang/String;

    const-string p1, "\u767b\u9646"

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->j:Ljava/lang/String;

    const-string p1, "\u73b0\u5728\u4e0d"

    .line 5
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->k:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/dialog/b;->m:Z

    const/16 p1, 0x8

    .line 7
    iput p1, p0, Lcom/join/mgps/dialog/b;->o:I

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
            "themeResId"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const-string p1, "\u63d0\u793a"

    .line 9
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->h:Ljava/lang/String;

    const-string p1, "\u767b\u9646\u540e\uff0c\u5f00\u59cb\u609f\u996d\u6e38\u620f\u7684\u7cbe\u5f69\u65c5\u6e38"

    .line 10
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->i:Ljava/lang/String;

    const-string p1, "\u767b\u9646"

    .line 11
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->j:Ljava/lang/String;

    const-string p1, "\u73b0\u5728\u4e0d"

    .line 12
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->k:Ljava/lang/String;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/join/mgps/dialog/b;->m:Z

    const/16 p1, 0x8

    .line 14
    iput p1, p0, Lcom/join/mgps/dialog/b;->o:I

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

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const-string p1, "\u63d0\u793a"

    .line 16
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->h:Ljava/lang/String;

    const-string p1, "\u767b\u9646\u540e\uff0c\u5f00\u59cb\u609f\u996d\u6e38\u620f\u7684\u7cbe\u5f69\u65c5\u6e38"

    .line 17
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->i:Ljava/lang/String;

    const-string p1, "\u767b\u9646"

    .line 18
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->j:Ljava/lang/String;

    const-string p1, "\u73b0\u5728\u4e0d"

    .line 19
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->k:Ljava/lang/String;

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/join/mgps/dialog/b;->m:Z

    const/16 p1, 0x8

    .line 21
    iput p1, p0, Lcom/join/mgps/dialog/b;->o:I

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/b;)Lcom/join/mgps/dialog/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/b;->l:Lcom/join/mgps/dialog/b$c;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dialog/b;->n:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/b;->g:Landroid/widget/CheckBox;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/join/mgps/dialog/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cancleButnTitle"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public e(I)Lcom/join/mgps/dialog/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cancleButnVisibility"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dialog/b;->n:I

    .line 2
    .line 3
    return-object p0
.end method

.method public f(I)Lcom/join/mgps/dialog/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dialog/b;->o:I

    .line 2
    .line 3
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentText"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public h(Z)Lcom/join/mgps/dialog/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flag"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->l:Lcom/join/mgps/dialog/b$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "okButnTitle"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
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
    iget-boolean p1, p0, Lcom/join/mgps/dialog/b;->m:Z

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 7
    .line 8
    .line 9
    const p1, 0x7f0d001f

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    const p1, 0x7f0a04a1

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/CheckBox;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->g:Landroid/widget/CheckBox;

    .line 25
    .line 26
    const p1, 0x7f0a1762

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->b:Landroid/widget/TextView;

    .line 36
    .line 37
    const p1, 0x7f0a04bb

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Landroid/widget/TextView;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->c:Landroid/widget/TextView;

    .line 47
    .line 48
    const p1, 0x7f0a04b8

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/Button;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->d:Landroid/widget/Button;

    .line 58
    .line 59
    const p1, 0x7f0a04b2

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/widget/Button;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->e:Landroid/widget/Button;

    .line 69
    .line 70
    const p1, 0x7f0a1060

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/join/mgps/dialog/b;->f:Landroid/view/View;

    .line 78
    .line 79
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->e:Landroid/widget/Button;

    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/dialog/b;->k:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->c:Landroid/widget/TextView;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/join/mgps/dialog/b;->i:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->d:Landroid/widget/Button;

    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/dialog/b;->j:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->g:Landroid/widget/CheckBox;

    .line 101
    .line 102
    iget v0, p0, Lcom/join/mgps/dialog/b;->o:I

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->b:Landroid/widget/TextView;

    .line 108
    .line 109
    iget-object v0, p0, Lcom/join/mgps/dialog/b;->h:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    iget p1, p0, Lcom/join/mgps/dialog/b;->n:I

    .line 115
    .line 116
    if-eqz p1, :cond_1

    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/dialog/b;->e:Landroid/widget/Button;

    .line 119
    .line 120
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->f:Landroid/view/View;

    .line 124
    .line 125
    iget v0, p0, Lcom/join/mgps/dialog/b;->n:I

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->d:Landroid/widget/Button;

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 137
    .line 138
    if-eqz v0, :cond_0

    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    const v1, 0x7f071305

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    move-object v1, p1

    .line 156
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 157
    .line 158
    const/4 v2, 0x0

    .line 159
    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/join/mgps/dialog/b;->d:Landroid/widget/Button;

    .line 163
    .line 164
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .line 166
    .line 167
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->d:Landroid/widget/Button;

    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const v1, 0x7f07148a

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 185
    .line 186
    .line 187
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->e:Landroid/widget/Button;

    .line 188
    .line 189
    new-instance v0, Lcom/join/mgps/dialog/b$a;

    .line 190
    .line 191
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/b$a;-><init>(Lcom/join/mgps/dialog/b;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p0, Lcom/join/mgps/dialog/b;->d:Landroid/widget/Button;

    .line 198
    .line 199
    new-instance v0, Lcom/join/mgps/dialog/b$b;

    .line 200
    .line 201
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/b$b;-><init>(Lcom/join/mgps/dialog/b;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/join/mgps/dialog/b;->m:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method
