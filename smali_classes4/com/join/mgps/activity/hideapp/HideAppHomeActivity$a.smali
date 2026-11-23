.class Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;->e:Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;

    .line 2
    .line 3
    const v0, 0x7f0d0441

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->access$000(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, v0, p1}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic r(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;->v(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic s(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;->u(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;Landroid/view/View;)V

    return-void
.end method

.method private synthetic u(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;->e:Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->access$100(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;)I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity_$c;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;->getType()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity_$c;->a(I)Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity_$c;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 24
    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;->e:Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;

    .line 28
    .line 29
    invoke-static {p2}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->access$100(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;->getType()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-ne p2, p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;->e:Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->access$200(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;->e:Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->access$100(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    const/4 v0, 0x1

    .line 52
    if-ne p2, v0, :cond_2

    .line 53
    .line 54
    const-string p2, "\u8bb0\u4e8b\u672c"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const-string p2, "\u8ba1\u7b97\u5668\u4f2a\u88c5\u529f\u80fd\u4f7f\u7528\u4e2d\uff0c\u8bf7\u5148\u89e3\u9664\u9690\u8eab\u72b6\u6001"

    .line 58
    .line 59
    :goto_0
    invoke-virtual {p1, p2}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->showMessage(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :goto_1
    return-void
.end method

.method private synthetic v(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity_$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/16 v0, 0x64

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity_$c;->a(I)Lcom/join/mgps/activity/hideapp/HideAppSetPwdActivity_$c;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;->t(Lcom/join/mgps/base/b;Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected t(Lcom/join/mgps/base/b;Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;)V
    .locals 5
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\u5c06\u81ea\u8eab\u4f2a\u88c5\u6210"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const v1, 0x7f0a18f6

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "\u4ece"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;->b()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v2, "\u4e2d\u8f93\u51656\u4f4d\u5bc6\u7801\u8fdb\u5165\u609f\u996d"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const v2, 0x7f0a1872

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;->e:Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->access$100(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;)I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p2}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;->getType()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-ne v1, v2, :cond_0

    .line 73
    .line 74
    const-string v1, "\u89e3\u9664\u9690\u8eab\u72b6\u6001"

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const-string v1, "\u7acb\u5373\u4f7f\u7528"

    .line 78
    .line 79
    :goto_0
    const v2, 0x7f0a1857

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;->e:Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;

    .line 87
    .line 88
    invoke-static {v1}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->access$100(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {p2}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;->getType()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-ne v1, v3, :cond_1

    .line 97
    .line 98
    const v1, 0x7f081062

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_1
    const v1, 0x7f081162

    .line 103
    .line 104
    .line 105
    :goto_1
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;->e:Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;

    .line 110
    .line 111
    invoke-static {v1}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;->access$100(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity;)I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-virtual {p2}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;->getType()I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-ne v1, v3, :cond_2

    .line 120
    .line 121
    const/4 v1, 0x1

    .line 122
    goto :goto_2

    .line 123
    :cond_2
    const/4 v1, 0x0

    .line 124
    :goto_2
    const v3, 0x7f0a18d2

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v3, v1}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const v1, 0x7f0a084d

    .line 132
    .line 133
    .line 134
    invoke-virtual {p2}, Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;->a()I

    .line 135
    .line 136
    .line 137
    move-result v4

    .line 138
    invoke-virtual {v0, v1, v4}, Lcom/join/mgps/base/b;->setImageResource(II)Lcom/join/mgps/base/b;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    new-instance v1, Lcom/join/mgps/activity/hideapp/a;

    .line 146
    .line 147
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/activity/hideapp/a;-><init>(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$b;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v3}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    new-instance p2, Lcom/join/mgps/activity/hideapp/b;

    .line 158
    .line 159
    invoke-direct {p2, p0}, Lcom/join/mgps/activity/hideapp/b;-><init>(Lcom/join/mgps/activity/hideapp/HideAppHomeActivity$a;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .line 164
    .line 165
    return-void
.end method
