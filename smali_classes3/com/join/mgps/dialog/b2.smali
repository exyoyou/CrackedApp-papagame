.class public Lcom/join/mgps/dialog/b2;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/b2$b;
    }
.end annotation


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/Button;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/CheckBox;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lcom/join/mgps/dialog/b2$b;

.field private l:Z

.field private m:I

.field private n:I


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
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->g:Ljava/lang/String;

    const-string p1, "\u767b\u9646\u540e\uff0c\u5f00\u59cb\u609f\u996d\u6e38\u620f\u7684\u7cbe\u5f69\u65c5\u6e38"

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->h:Ljava/lang/String;

    const-string p1, "\u767b\u9646"

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->i:Ljava/lang/String;

    const-string p1, "\u73b0\u5728\u4e0d"

    .line 5
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->j:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/join/mgps/dialog/b2;->l:Z

    const/16 p1, 0x8

    .line 7
    iput p1, p0, Lcom/join/mgps/dialog/b2;->n:I

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
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->g:Ljava/lang/String;

    const-string p1, "\u767b\u9646\u540e\uff0c\u5f00\u59cb\u609f\u996d\u6e38\u620f\u7684\u7cbe\u5f69\u65c5\u6e38"

    .line 10
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->h:Ljava/lang/String;

    const-string p1, "\u767b\u9646"

    .line 11
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->i:Ljava/lang/String;

    const-string p1, "\u73b0\u5728\u4e0d"

    .line 12
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->j:Ljava/lang/String;

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/join/mgps/dialog/b2;->l:Z

    const/16 p1, 0x8

    .line 14
    iput p1, p0, Lcom/join/mgps/dialog/b2;->n:I

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
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->g:Ljava/lang/String;

    const-string p1, "\u767b\u9646\u540e\uff0c\u5f00\u59cb\u609f\u996d\u6e38\u620f\u7684\u7cbe\u5f69\u65c5\u6e38"

    .line 17
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->h:Ljava/lang/String;

    const-string p1, "\u767b\u9646"

    .line 18
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->i:Ljava/lang/String;

    const-string p1, "\u73b0\u5728\u4e0d"

    .line 19
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->j:Ljava/lang/String;

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/join/mgps/dialog/b2;->l:Z

    const/16 p1, 0x8

    .line 21
    iput p1, p0, Lcom/join/mgps/dialog/b2;->n:I

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/b2;)Lcom/join/mgps/dialog/b2$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/b2;->k:Lcom/join/mgps/dialog/b2$b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dialog/b2;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/b2;->f:Landroid/widget/CheckBox;

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

.method public d(Ljava/lang/String;)Lcom/join/mgps/dialog/b2;
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
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public e(I)Lcom/join/mgps/dialog/b2;
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
    iput p1, p0, Lcom/join/mgps/dialog/b2;->m:I

    .line 2
    .line 3
    return-object p0
.end method

.method public f(I)Lcom/join/mgps/dialog/b2;
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
    iput p1, p0, Lcom/join/mgps/dialog/b2;->n:I

    .line 2
    .line 3
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/join/mgps/dialog/b2;
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
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public h(Z)Lcom/join/mgps/dialog/b2;
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

.method public i(Lcom/join/mgps/dialog/b2$b;)Lcom/join/mgps/dialog/b2;
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
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->k:Lcom/join/mgps/dialog/b2$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/join/mgps/dialog/b2;
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
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/join/mgps/dialog/b2;
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
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->g:Ljava/lang/String;

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
    iget-boolean p1, p0, Lcom/join/mgps/dialog/b2;->l:Z

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 7
    .line 8
    .line 9
    const p1, 0x7f0d060c

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
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->f:Landroid/widget/CheckBox;

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
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->b:Landroid/widget/TextView;

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
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->c:Landroid/widget/TextView;

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
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->d:Landroid/widget/Button;

    .line 58
    .line 59
    const p1, 0x7f0a1060

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/join/mgps/dialog/b2;->e:Landroid/view/View;

    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/dialog/b2;->c:Landroid/widget/TextView;

    .line 69
    .line 70
    iget-object v0, p0, Lcom/join/mgps/dialog/b2;->h:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/join/mgps/dialog/b2;->d:Landroid/widget/Button;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/mgps/dialog/b2;->i:Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/dialog/b2;->f:Landroid/widget/CheckBox;

    .line 83
    .line 84
    iget v0, p0, Lcom/join/mgps/dialog/b2;->n:I

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/dialog/b2;->b:Landroid/widget/TextView;

    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/dialog/b2;->g:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .line 95
    .line 96
    iget p1, p0, Lcom/join/mgps/dialog/b2;->m:I

    .line 97
    .line 98
    if-eqz p1, :cond_1

    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/dialog/b2;->e:Landroid/view/View;

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/join/mgps/dialog/b2;->d:Landroid/widget/Button;

    .line 106
    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 112
    .line 113
    if-eqz v0, :cond_0

    .line 114
    .line 115
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const v1, 0x7f071305

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    move-object v1, p1

    .line 131
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    .line 133
    const/4 v2, 0x0

    .line 134
    invoke-virtual {v1, v0, v2, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/join/mgps/dialog/b2;->d:Landroid/widget/Button;

    .line 138
    .line 139
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    .line 141
    .line 142
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/b2;->d:Landroid/widget/Button;

    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const v1, 0x7f07148a

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 160
    .line 161
    .line 162
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/b2;->d:Landroid/widget/Button;

    .line 163
    .line 164
    new-instance v0, Lcom/join/mgps/dialog/b2$a;

    .line 165
    .line 166
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/b2$a;-><init>(Lcom/join/mgps/dialog/b2;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
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
    iget-boolean v0, p0, Lcom/join/mgps/dialog/b2;->l:Z

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
