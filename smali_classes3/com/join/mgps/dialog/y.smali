.class public Lcom/join/mgps/dialog/y;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/y$e;
    }
.end annotation


# instance fields
.field b:Landroid/content/Context;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/CheckBox;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field m:Lcom/join/mgps/dialog/y$e;

.field n:Lcom/join/mgps/dialog/y$e;

.field o:Lcom/join/mgps/dialog/y$e;

.field p:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
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

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/dialog/y;->q:Z

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dialog/y;->b:Landroid/content/Context;

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

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p0, Lcom/join/mgps/dialog/y;->q:Z

    .line 9
    iput-object p1, p0, Lcom/join/mgps/dialog/y;->b:Landroid/content/Context;

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

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/join/mgps/dialog/y;->q:Z

    .line 6
    iput-object p1, p0, Lcom/join/mgps/dialog/y;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/y$e;)Lcom/join/mgps/dialog/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/y;->n:Lcom/join/mgps/dialog/y$e;

    .line 2
    .line 3
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/join/mgps/dialog/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cancleText"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/y;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/join/mgps/dialog/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/y;->p:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/join/mgps/dialog/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/y;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public e(Lcom/join/mgps/dialog/y$e;)Lcom/join/mgps/dialog/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/y;->m:Lcom/join/mgps/dialog/y$e;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/join/mgps/dialog/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "okString"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/y;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/join/mgps/dialog/y;
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
    iput-object p1, p0, Lcom/join/mgps/dialog/y;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public h(Z)Lcom/join/mgps/dialog/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/dialog/y;->q:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public i(Lcom/join/mgps/dialog/y$e;)Lcom/join/mgps/dialog/y;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/y;->o:Lcom/join/mgps/dialog/y$e;

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
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/dialog/y;->b:Landroid/content/Context;

    .line 9
    .line 10
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const v0, 0x7f0d01c4

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v0, p0, Lcom/join/mgps/dialog/y;->b:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/join/mgps/dialog/y;->b:Landroid/content/Context;

    .line 29
    .line 30
    check-cast v1, Landroid/app/Activity;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/q;->C(Landroid/app/Activity;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v1, p0, Lcom/join/mgps/dialog/y;->b:Landroid/content/Context;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/join/mgps/dialog/y;->b:Landroid/content/Context;

    .line 43
    .line 44
    check-cast v2, Landroid/app/Activity;

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Lcom/join/android/app/common/utils/q;->k(Landroid/app/Activity;)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    .line 51
    .line 52
    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    const p1, 0x7f0a1188

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Landroid/widget/TextView;

    .line 66
    .line 67
    iput-object p1, p0, Lcom/join/mgps/dialog/y;->f:Landroid/widget/TextView;

    .line 68
    .line 69
    const p1, 0x7f0a1a6b

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroid/widget/TextView;

    .line 77
    .line 78
    iput-object p1, p0, Lcom/join/mgps/dialog/y;->d:Landroid/widget/TextView;

    .line 79
    .line 80
    const p1, 0x7f0a02fb

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Landroid/widget/TextView;

    .line 88
    .line 89
    iput-object p1, p0, Lcom/join/mgps/dialog/y;->c:Landroid/widget/TextView;

    .line 90
    .line 91
    const p1, 0x7f0a1767

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/widget/TextView;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/join/mgps/dialog/y;->g:Landroid/widget/TextView;

    .line 101
    .line 102
    const p1, 0x7f0a0424

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Landroid/widget/TextView;

    .line 110
    .line 111
    iput-object p1, p0, Lcom/join/mgps/dialog/y;->h:Landroid/widget/TextView;

    .line 112
    .line 113
    const p1, 0x7f0a0344

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Landroid/widget/CheckBox;

    .line 121
    .line 122
    iput-object p1, p0, Lcom/join/mgps/dialog/y;->e:Landroid/widget/CheckBox;

    .line 123
    .line 124
    const p1, 0x7f0a03b0

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Landroid/widget/ImageView;

    .line 132
    .line 133
    new-instance v0, Lcom/join/mgps/dialog/y$a;

    .line 134
    .line 135
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/y$a;-><init>(Lcom/join/mgps/dialog/y;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/join/mgps/dialog/y;->g:Landroid/widget/TextView;

    .line 142
    .line 143
    iget-object v0, p0, Lcom/join/mgps/dialog/y;->j:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/join/mgps/dialog/y;->h:Landroid/widget/TextView;

    .line 149
    .line 150
    iget-object v0, p0, Lcom/join/mgps/dialog/y;->k:Ljava/lang/String;

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lcom/join/mgps/dialog/y;->f:Landroid/widget/TextView;

    .line 156
    .line 157
    iget-object v0, p0, Lcom/join/mgps/dialog/y;->i:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    iget-object p1, p0, Lcom/join/mgps/dialog/y;->f:Landroid/widget/TextView;

    .line 163
    .line 164
    new-instance v0, Lcom/join/mgps/dialog/y$b;

    .line 165
    .line 166
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/y$b;-><init>(Lcom/join/mgps/dialog/y;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/join/mgps/dialog/y;->c:Landroid/widget/TextView;

    .line 173
    .line 174
    iget-object v0, p0, Lcom/join/mgps/dialog/y;->l:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, p0, Lcom/join/mgps/dialog/y;->c:Landroid/widget/TextView;

    .line 180
    .line 181
    new-instance v0, Lcom/join/mgps/dialog/y$c;

    .line 182
    .line 183
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/y$c;-><init>(Lcom/join/mgps/dialog/y;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/join/mgps/dialog/y;->d:Landroid/widget/TextView;

    .line 190
    .line 191
    new-instance v0, Lcom/join/mgps/dialog/y$d;

    .line 192
    .line 193
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/y$d;-><init>(Lcom/join/mgps/dialog/y;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .line 198
    .line 199
    iget-boolean p1, p0, Lcom/join/mgps/dialog/y;->q:Z

    .line 200
    .line 201
    const/16 v0, 0x8

    .line 202
    .line 203
    if-eqz p1, :cond_0

    .line 204
    .line 205
    iget-object p1, p0, Lcom/join/mgps/dialog/y;->d:Landroid/widget/TextView;

    .line 206
    .line 207
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/y;->d:Landroid/widget/TextView;

    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/y;->e:Landroid/widget/CheckBox;

    .line 217
    .line 218
    iget-object v0, p0, Lcom/join/mgps/dialog/y;->p:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 219
    .line 220
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 221
    .line 222
    .line 223
    return-void
.end method
