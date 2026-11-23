.class public Lcom/join/android/app/common/dialog/f;
.super Landroid/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "style"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/join/android/app/common/dialog/f;->h:I

    .line 5
    .line 6
    return-void
.end method

.method static synthetic a(Lcom/join/android/app/common/dialog/f;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/f;->f:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/android/app/common/dialog/f;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/f;->g:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/android/app/common/dialog/f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/f;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/android/app/common/dialog/f;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/f;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/android/app/common/dialog/f;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/android/app/common/dialog/f;->b:Landroid/widget/Button;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public f(Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clickListener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/f;->b:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "txt",
            "clickListener"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/f;->b:Landroid/widget/Button;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/join/android/app/common/dialog/f;->b:Landroid/widget/Button;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x106000d

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x11

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 21
    .line 22
    .line 23
    const v0, 0x7f0d01fb

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 27
    .line 28
    .line 29
    const v0, 0x7f0a0f77

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/Button;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/join/android/app/common/dialog/f;->b:Landroid/widget/Button;

    .line 39
    .line 40
    const v0, 0x7f0a0f7b

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object v0, p0, Lcom/join/android/app/common/dialog/f;->d:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f0a0f79

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object v0, p0, Lcom/join/android/app/common/dialog/f;->c:Landroid/widget/TextView;

    .line 61
    .line 62
    const v0, 0x7f0a0f7a

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/join/android/app/common/dialog/f;->e:Landroid/widget/TextView;

    .line 72
    .line 73
    const v0, 0x7f0a0f78

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/widget/ImageView;

    .line 81
    .line 82
    iput-object v0, p0, Lcom/join/android/app/common/dialog/f;->f:Landroid/widget/ImageView;

    .line 83
    .line 84
    const v0, 0x7f0a0f7c

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Landroid/widget/ImageView;

    .line 92
    .line 93
    iput-object v0, p0, Lcom/join/android/app/common/dialog/f;->g:Landroid/widget/ImageView;

    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/android/app/common/dialog/f;->e:Landroid/widget/TextView;

    .line 96
    .line 97
    new-instance v1, Lcom/join/android/app/common/dialog/f$a;

    .line 98
    .line 99
    invoke-direct {v1, p0}, Lcom/join/android/app/common/dialog/f$a;-><init>(Lcom/join/android/app/common/dialog/f;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/join/android/app/common/dialog/f;->f:Landroid/widget/ImageView;

    .line 106
    .line 107
    new-instance v1, Lcom/join/android/app/common/dialog/f$b;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/join/android/app/common/dialog/f$b;-><init>(Lcom/join/android/app/common/dialog/f;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    iget v0, p0, Lcom/join/android/app/common/dialog/f;->h:I

    .line 116
    .line 117
    const/4 v1, 0x1

    .line 118
    if-nez v0, :cond_0

    .line 119
    .line 120
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f;->d:Landroid/widget/TextView;

    .line 124
    .line 125
    const-string v0, "\u672c\u5730\u6e38\u620f\u8fd0\u884c\u5e2e\u52a9"

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f;->c:Landroid/widget/TextView;

    .line 131
    .line 132
    const-string v0, "\u609f\u996d\u652f\u6301\u672c\u5730\u626b\u63cf\u4e86\uff0c\u4e0b\u8f7d\u6587\u4ef6\u81f3\'Download\'\u6587\u4ef6\u5939\uff0c\u70b9\u51fb\u4e0b\u65b9\u7684\u626b\u63cf\u6e38\u620f\uff0c\u5373\u53ef\u6dfb\u52a0\u6e38\u620f\u81f3\u6211\u7684\u6e38\u620f\u3002"

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/join/android/app/common/dialog/f;->f:Landroid/widget/ImageView;

    .line 138
    .line 139
    const/4 v0, 0x4

    .line 140
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_0
    if-ne v0, v1, :cond_1

    .line 145
    .line 146
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-string v1, "onFindNewFile"

    .line 151
    .line 152
    invoke-static {v0, v1}, Lcom/join/kotlin/utils/extention/MobclickAgentKt;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/join/android/app/common/dialog/f;->d:Landroid/widget/TextView;

    .line 159
    .line 160
    const-string v1, "\u65b0\u589e\u6587\u4ef6\u63d0\u793a"

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/join/android/app/common/dialog/f;->c:Landroid/widget/TextView;

    .line 166
    .line 167
    const-string v1, "\u68c0\u6d4b\u5230\'Download\'\u76ee\u5f55\u4e0b\u6709\u65b0\u589ezip\u6587\u4ef6\uff0c\u662f\u5426\u8fdb\u884c\u626b\u63cf\u8bc6\u522b\uff1f"

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/join/android/app/common/dialog/f;->f:Landroid/widget/ImageView;

    .line 173
    .line 174
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    :cond_1
    :goto_0
    return-void
.end method
