.class public Lcom/join/mgps/dialog/n1;
.super Lcom/join/mgps/dialog/p;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/n1$a;
    }
.end annotation


# instance fields
.field private k:Lcom/join/mgps/dto/DomainInfoBean;

.field private l:Lcom/join/mgps/dialog/n1$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const v0, 0x7f13015d

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/dialog/p;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/n1;->l:Lcom/join/mgps/dialog/n1$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/join/mgps/dto/DomainInfoBean;)V
    .locals 1
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
            "domainInfoBean"
        }
    .end annotation

    const v0, 0x7f13015d

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/join/mgps/dialog/p;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/n1;->l:Lcom/join/mgps/dialog/n1$a;

    .line 5
    iput-object p2, p0, Lcom/join/mgps/dialog/n1;->k:Lcom/join/mgps/dto/DomainInfoBean;

    return-void
.end method

.method public static synthetic m(Lcom/join/mgps/dialog/n1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/n1;->s(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n(Lcom/join/mgps/dialog/n1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/n1;->q(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcom/join/mgps/dialog/n1;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/dialog/n1;->r(Landroid/view/View;)V

    return-void
.end method

.method private p()V
    .locals 7

    .line 1
    const v0, 0x7f0a09e4

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 9
    .line 10
    const v1, 0x7f0a0262

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/widget/TextView;

    .line 18
    .line 19
    const v2, 0x7f0a025d

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroid/widget/TextView;

    .line 27
    .line 28
    const v3, 0x7f0a08ee

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/join/mgps/dialog/n1;->k:Lcom/join/mgps/dto/DomainInfoBean;

    .line 38
    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/join/mgps/dto/DomainInfoBean;->getPic()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-static {v0, v4}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/dialog/n1;->k:Lcom/join/mgps/dto/DomainInfoBean;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/dto/DomainInfoBean;->getInfo()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v4

    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-static {v0}, Lcom/join/mgps/Util/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-class v5, Lcom/join/mgps/dto/WxProgram;

    .line 69
    .line 70
    invoke-virtual {v4, v0, v5}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/join/mgps/dto/WxProgram;

    .line 75
    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/join/mgps/dto/WxProgram;->getButton_pic()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    const/4 v5, 0x0

    .line 87
    const/16 v6, 0x8

    .line 88
    .line 89
    if-nez v4, :cond_0

    .line 90
    .line 91
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/join/mgps/dto/WxProgram;->getButton_pic()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sget-object v4, Lcom/facebook/drawee/drawable/s$c;->e:Lcom/facebook/drawee/drawable/s$c;

    .line 102
    .line 103
    invoke-static {v3, v0, v4}, Lcom/join/android/app/common/utils/l;->q(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/WxProgram;->getButton_text()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    if-nez v4, :cond_1

    .line 116
    .line 117
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/join/mgps/dto/WxProgram;->getButton_text()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    const-string v0, "\u9886\u53d6\u653b\u7565"

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .line 141
    .line 142
    :cond_2
    :goto_0
    new-instance v0, Lcom/join/mgps/dialog/k1;

    .line 143
    .line 144
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/k1;-><init>(Lcom/join/mgps/dialog/n1;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    new-instance v0, Lcom/join/mgps/dialog/l1;

    .line 151
    .line 152
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/l1;-><init>(Lcom/join/mgps/dialog/n1;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    new-instance v0, Lcom/join/mgps/dialog/m1;

    .line 159
    .line 160
    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/m1;-><init>(Lcom/join/mgps/dialog/n1;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 169
    .line 170
    .line 171
    :goto_1
    return-void
.end method

.method private synthetic q(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/n1;->l:Lcom/join/mgps/dialog/n1$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/join/mgps/dialog/n1$a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic r(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/n1;->l:Lcom/join/mgps/dialog/n1$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/join/mgps/dialog/n1$a;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private synthetic s(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/n1;->l:Lcom/join/mgps/dialog/n1$a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lcom/join/mgps/dialog/n1$a;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/dialog/p;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0d0206

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lcom/join/mgps/dialog/n1;->p()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-super {p0}, Lcom/join/mgps/dialog/p;->show()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public t(Lcom/join/mgps/dialog/n1$a;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/n1;->l:Lcom/join/mgps/dialog/n1$a;

    .line 2
    .line 3
    return-void
.end method
