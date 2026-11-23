.class Lcom/join/mgps/activity/MGMainActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->sanLocalGameIv(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/activity/MGMainActivity$i;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/activity/MGMainActivity$i;->b(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1400(Lcom/join/mgps/activity/MGMainActivity;)Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/join/mgps/Util/a2;->g(Landroid/app/Activity;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1200(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/l;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1200(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/l;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->access$1202(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/android/app/common/dialog/l;)Lcom/join/android/app/common/dialog/l;

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1300(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/j;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    :try_start_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1300(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/j;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 39
    .line 40
    .line 41
    :catch_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 42
    .line 43
    invoke-static {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->access$1302(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/android/app/common/dialog/j;)Lcom/join/android/app/common/dialog/j;

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 47
    .line 48
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 53
    .line 54
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1, v1}, Lcom/join/mgps/Util/UtilsMy;->e3(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/a2;->d()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-nez p1, :cond_4

    .line 75
    .line 76
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1400(Lcom/join/mgps/activity/MGMainActivity;)Landroid/app/Activity;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 87
    .line 88
    invoke-static {v1}, Lcom/join/mgps/activity/MGMainActivity;->access$1400(Lcom/join/mgps/activity/MGMainActivity;)Landroid/app/Activity;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    const-string v1, "\u9700\u8981\u6587\u4ef6\u7ba1\u7406\u6743\u9650"

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    const-string v1, "\u626b\u63cf\u4e0b\u8f7d\u76ee\u5f55\u4e2d\u7684\u6e38\u620f\u538b\u7f29\u5305\uff0c\u9700\u8981\u5f00\u542f\u7cfb\u7edf\u7684\u300c\u6240\u6709\u6587\u4ef6\u8bbf\u95ee\u6743\u9650\u300d\uff08\u90e8\u5206\u673a\u578b\u4e3a\u300c\u5141\u8bb8\u7ba1\u7406\u6240\u6709\u6587\u4ef6\u300d\uff09\u3002\u4ec5\u300c\u5b58\u50a8\u300d\u6743\u9650\u901a\u5e38\u65e0\u6cd5\u5217\u51fa\u6587\u4ef6\u3002"

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance v1, Lcom/join/mgps/activity/f7;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/f7;-><init>(Lcom/join/mgps/activity/MGMainActivity$i;)V

    .line 110
    .line 111
    .line 112
    const-string v2, "\u53bb\u8bbe\u7f6e"

    .line 113
    .line 114
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const/high16 v1, 0x1040000

    .line 119
    .line 120
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 125
    .line 126
    .line 127
    :cond_3
    return-void

    .line 128
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 129
    .line 130
    new-instance v0, Lcom/join/android/app/common/dialog/l;

    .line 131
    .line 132
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 133
    .line 134
    invoke-static {v1}, Lcom/join/mgps/activity/MGMainActivity;->access$1400(Lcom/join/mgps/activity/MGMainActivity;)Landroid/app/Activity;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-direct {v0, v1}, Lcom/join/android/app/common/dialog/l;-><init>(Landroid/content/Context;)V

    .line 139
    .line 140
    .line 141
    invoke-static {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->access$1202(Lcom/join/mgps/activity/MGMainActivity;Lcom/join/android/app/common/dialog/l;)Lcom/join/android/app/common/dialog/l;

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1200(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/l;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 151
    .line 152
    .line 153
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 154
    .line 155
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1200(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/l;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$i$a;

    .line 160
    .line 161
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity$i$a;-><init>(Lcom/join/mgps/activity/MGMainActivity$i;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v0}, Lcom/join/android/app/common/dialog/l;->e(Landroid/view/View$OnClickListener;)V

    .line 165
    .line 166
    .line 167
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 168
    .line 169
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1600(Lcom/join/mgps/activity/MGMainActivity;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 173
    .line 174
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1200(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/l;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    const-string v0, "\u8bc6\u522b\u4e2d..."

    .line 179
    .line 180
    invoke-virtual {p1, v0}, Lcom/join/android/app/common/dialog/l;->d(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 184
    .line 185
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1200(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/l;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lcom/join/android/app/common/dialog/l;->b()V

    .line 190
    .line 191
    .line 192
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/join/mgps/activity/MGMainActivity;->checkSNKGame()V

    .line 195
    .line 196
    .line 197
    :try_start_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$i;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 198
    .line 199
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$1500(Lcom/join/mgps/activity/MGMainActivity;)Lcom/join/android/app/common/dialog/f;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 204
    .line 205
    .line 206
    :catch_2
    return-void
.end method
