.class Lcom/BaseFragmentActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseFragmentActivity;->getUNzipPermiss(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Lcom/tbruyelle/rxpermissions2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/BaseFragmentActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$context",
            "val$gameid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/BaseFragmentActivity$c;->d:Lcom/BaseFragmentActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/BaseFragmentActivity$c;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/BaseFragmentActivity$c;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->b:Z

    .line 2
    .line 3
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object p1, p0, Lcom/BaseFragmentActivity$c;->b:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x1

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    if-eqz p1, :cond_8

    .line 21
    .line 22
    iget-object p1, p0, Lcom/BaseFragmentActivity$c;->b:Landroid/content/Context;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object v2, Lcom/papa/sim/statistic/Event;->Unzip_permissionsuccess:Lcom/papa/sim/statistic/Event;

    .line 29
    .line 30
    new-instance v3, Lcom/papa/sim/statistic/Ext;

    .line 31
    .line 32
    invoke-direct {v3}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v2, v3}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object v2, p0, Lcom/BaseFragmentActivity$c;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_8

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->MGAME:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-ne v2, v3, :cond_1

    .line 65
    .line 66
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v2, p0, Lcom/BaseFragmentActivity$c;->b:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v0, v2, p1, v1}, Lcom/join/android/app/common/servcie/j;->z(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_4

    .line 76
    .line 77
    :cond_1
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/BaseFragmentActivity$c;->b:Landroid/content/Context;

    .line 82
    .line 83
    invoke-virtual {v1, v2, p1, v0}, Lcom/join/android/app/common/servcie/j;->z(Landroid/content/Context;Lcom/github/snowdream/android/app/downloader/DownloadTask;Z)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_4

    .line 87
    .line 88
    :cond_2
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->c:Z

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    iget-object p1, p0, Lcom/BaseFragmentActivity$c;->d:Lcom/BaseFragmentActivity;

    .line 93
    .line 94
    iget-object v0, p0, Lcom/BaseFragmentActivity$c;->c:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {p1, v0}, Lcom/BaseFragmentActivity;->access$500(Lcom/BaseFragmentActivity;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_4

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/BaseFragmentActivity$c;->d:Lcom/BaseFragmentActivity;

    .line 101
    .line 102
    iget-object v2, p0, Lcom/BaseFragmentActivity$c;->c:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {v0, v2}, Lcom/BaseFragmentActivity;->access$500(Lcom/BaseFragmentActivity;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/BaseFragmentActivity$c;->d:Lcom/BaseFragmentActivity;

    .line 108
    .line 109
    iget-object v2, v0, Lcom/BaseFragmentActivity;->dialogU:Landroid/app/Dialog;

    .line 110
    .line 111
    if-nez v2, :cond_4

    .line 112
    .line 113
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 114
    .line 115
    const v3, 0x7f13000d

    .line 116
    .line 117
    .line 118
    invoke-direct {v2, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 119
    .line 120
    .line 121
    iput-object v2, v0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-eqz v0, :cond_5

    .line 129
    .line 130
    return-void

    .line 131
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/BaseFragmentActivity$c;->d:Lcom/BaseFragmentActivity;

    .line 132
    .line 133
    iget-object v0, v0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 134
    .line 135
    const-string v2, "\u63d0\u793a"

    .line 136
    .line 137
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 138
    .line 139
    .line 140
    iget-object v0, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_7

    .line 147
    .line 148
    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 149
    .line 150
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 151
    .line 152
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_6

    .line 157
    .line 158
    goto :goto_2

    .line 159
    :cond_6
    iget-object p1, p0, Lcom/BaseFragmentActivity$c;->d:Lcom/BaseFragmentActivity;

    .line 160
    .line 161
    iget-object p1, p1, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 162
    .line 163
    const-string v0, "\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 166
    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/BaseFragmentActivity$c;->d:Lcom/BaseFragmentActivity;

    .line 170
    .line 171
    iget-object p1, p1, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 172
    .line 173
    const-string v0, "\u9700\u8981\u6253\u5f00\u8bfb\u5199\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 176
    .line 177
    .line 178
    :goto_3
    iget-object p1, p0, Lcom/BaseFragmentActivity$c;->d:Lcom/BaseFragmentActivity;

    .line 179
    .line 180
    iget-object p1, p1, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 181
    .line 182
    new-instance v0, Lcom/BaseFragmentActivity$c$a;

    .line 183
    .line 184
    invoke-direct {v0, p0}, Lcom/BaseFragmentActivity$c$a;-><init>(Lcom/BaseFragmentActivity$c;)V

    .line 185
    .line 186
    .line 187
    const-string v1, "\u53bb\u6253\u5f00"

    .line 188
    .line 189
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/BaseFragmentActivity$c;->d:Lcom/BaseFragmentActivity;

    .line 193
    .line 194
    iget-object v0, p1, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 195
    .line 196
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iput-object v0, p1, Lcom/BaseFragmentActivity;->dialogU:Landroid/app/Dialog;

    .line 201
    .line 202
    :cond_8
    :goto_4
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "permission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/tbruyelle/rxpermissions2/b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/BaseFragmentActivity$c;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
