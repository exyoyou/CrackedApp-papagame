.class public Lcom/join/mgps/dialog/CustomerAlertDialog;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "CustomerAlertDialog"

.field private static final g:Ljava/lang/String; = "title"

.field private static final h:Ljava/lang/String; = "hint"

.field private static final i:Ljava/lang/String; = "cancel_str"

.field private static final j:Ljava/lang/String; = "ok_str"


# instance fields
.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/Button;

.field e:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dialog/CustomerAlertDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "hint",
            "leftBtnStr",
            "rightBtnStr"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/CustomerAlertDialog;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dialog/CustomerAlertDialog;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "title"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p0, "hint"

    .line 17
    .line 18
    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string p0, "cancel_str"

    .line 22
    .line 23
    invoke-virtual {v1, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p0, "ok_str"

    .line 27
    .line 28
    invoke-virtual {v1, p0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
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
    new-instance p1, Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f1301b0

    .line 8
    .line 9
    .line 10
    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "layout_inflater"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroid/view/LayoutInflater;

    .line 24
    .line 25
    const v1, 0x7f0d01cd

    .line 26
    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const v1, 0x7f0a1762

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/widget/TextView;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->b:Landroid/widget/TextView;

    .line 44
    .line 45
    const v1, 0x7f0a04bb

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/widget/TextView;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->c:Landroid/widget/TextView;

    .line 55
    .line 56
    const v1, 0x7f0a04b2

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/widget/Button;

    .line 64
    .line 65
    iput-object v1, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->d:Landroid/widget/Button;

    .line 66
    .line 67
    const v1, 0x7f0a04b8

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Landroid/widget/Button;

    .line 75
    .line 76
    iput-object v1, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->e:Landroid/widget/Button;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_0

    .line 83
    .line 84
    const-string v2, "title"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget-object v4, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->b:Landroid/widget/TextView;

    .line 91
    .line 92
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    .line 94
    .line 95
    const-string v2, "hint"

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iget-object v4, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->c:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    const-string v2, "cancel_str"

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    iget-object v4, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->d:Landroid/widget/Button;

    .line 113
    .line 114
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    const-string v2, "ok_str"

    .line 118
    .line 119
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v2, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->e:Landroid/widget/Button;

    .line 124
    .line 125
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->d:Landroid/widget/Button;

    .line 129
    .line 130
    new-instance v2, Lcom/join/mgps/dialog/CustomerAlertDialog$a;

    .line 131
    .line 132
    invoke-direct {v2, p0}, Lcom/join/mgps/dialog/CustomerAlertDialog$a;-><init>(Lcom/join/mgps/dialog/CustomerAlertDialog;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, p0, Lcom/join/mgps/dialog/CustomerAlertDialog;->e:Landroid/widget/Button;

    .line 139
    .line 140
    new-instance v2, Lcom/join/mgps/dialog/CustomerAlertDialog$b;

    .line 141
    .line 142
    invoke-direct {v2, p0}, Lcom/join/mgps/dialog/CustomerAlertDialog$b;-><init>(Lcom/join/mgps/dialog/CustomerAlertDialog;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 152
    .line 153
    .line 154
    new-instance v0, Lcom/join/mgps/dialog/CustomerAlertDialog$c;

    .line 155
    .line 156
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/CustomerAlertDialog$c;-><init>(Lcom/join/mgps/dialog/CustomerAlertDialog;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 160
    .line 161
    .line 162
    return-object p1
.end method
