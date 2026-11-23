.class public Lcom/join/mgps/dialog/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Lcom/join/mgps/activity/posting/PostingActivity$m;


# direct methods
.method public varargs constructor <init>(Landroid/app/Activity;Lcom/join/mgps/activity/posting/PostingActivity$m;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "callback",
            "type",
            "params"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/join/mgps/dialog/a2;->b:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 5
    .line 6
    invoke-virtual {p0, p1, p3, p4}, Lcom/join/mgps/dialog/a2;->d(Landroid/app/Activity;I[Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/dialog/a2;)Lcom/join/mgps/activity/posting/PostingActivity$m;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/a2;->b:Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/dialog/a2;)Landroid/app/Dialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/dialog/a2;->a:Landroid/app/Dialog;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/a2;->a:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method varargs d(Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "activity",
            "type",
            "params"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/app/Dialog;

    .line 2
    .line 3
    const v1, 0x7f130584

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/dialog/a2;->a:Landroid/app/Dialog;

    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x1c

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    if-lt v1, v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0, v3}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/join/mgps/dialog/a2;->a:Landroid/app/Dialog;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const v0, 0x7f0d0214

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    const v0, 0x7f0a1762

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    const v1, 0x7f0a04bb

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Landroid/widget/TextView;

    .line 67
    .line 68
    const v2, 0x7f0a04b2

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroid/widget/Button;

    .line 76
    .line 77
    const v4, 0x7f0a04b8

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    check-cast v4, Landroid/widget/Button;

    .line 85
    .line 86
    const/4 v5, 0x0

    .line 87
    aget-object v6, p3, v5

    .line 88
    .line 89
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    aget-object v0, p3, v3

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    array-length v0, p3

    .line 98
    const/4 v1, 0x2

    .line 99
    const/4 v3, 0x3

    .line 100
    if-ne v0, v3, :cond_1

    .line 101
    .line 102
    const/16 v0, 0x8

    .line 103
    .line 104
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    aget-object p3, p3, v1

    .line 108
    .line 109
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_1
    aget-object v0, p3, v1

    .line 114
    .line 115
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    aget-object p3, p3, v3

    .line 119
    .line 120
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    :goto_0
    new-instance p3, Lcom/join/mgps/dialog/a2$a;

    .line 124
    .line 125
    invoke-direct {p3, p0, p2}, Lcom/join/mgps/dialog/a2$a;-><init>(Lcom/join/mgps/dialog/a2;I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    new-instance p3, Lcom/join/mgps/dialog/a2$b;

    .line 132
    .line 133
    invoke-direct {p3, p0, p2}, Lcom/join/mgps/dialog/a2$b;-><init>(Lcom/join/mgps/dialog/a2;I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v4, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    iget-object p2, p0, Lcom/join/mgps/dialog/a2;->a:Landroid/app/Dialog;

    .line 140
    .line 141
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/join/mgps/dialog/a2;->a:Landroid/app/Dialog;

    .line 145
    .line 146
    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/join/mgps/dialog/a2;->a:Landroid/app/Dialog;

    .line 150
    .line 151
    new-instance p2, Lcom/join/mgps/dialog/a2$c;

    .line 152
    .line 153
    invoke-direct {p2, p0}, Lcom/join/mgps/dialog/a2$c;-><init>(Lcom/join/mgps/dialog/a2;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/join/mgps/dialog/a2;->a:Landroid/app/Dialog;

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 166
    .line 167
    .line 168
    move-result-object p2

    .line 169
    const/4 p3, -0x1

    .line 170
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 171
    .line 172
    const/4 p3, -0x2

    .line 173
    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 174
    .line 175
    const/16 p2, 0x11

    .line 176
    .line 177
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/a2;->a:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/dialog/a2;->a:Landroid/app/Dialog;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
