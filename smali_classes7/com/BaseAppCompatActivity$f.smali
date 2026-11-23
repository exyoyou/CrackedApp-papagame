.class Lcom/BaseAppCompatActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseAppCompatActivity;->requestPermission(Lcom/BaseAppCompatActivity$t;)V
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
.field final synthetic b:Lcom/BaseAppCompatActivity;


# direct methods
.method constructor <init>(Lcom/BaseAppCompatActivity;)V
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
    iput-object p1, p0, Lcom/BaseAppCompatActivity$f;->b:Lcom/BaseAppCompatActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 3
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
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_7

    .line 14
    .line 15
    sget-object p1, Lcom/MApplication;->z:Lcom/MApplication;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/join/android/app/common/utils/q;->i()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sput-object p1, Lcom/MApplication;->A:Ljava/lang/String;

    .line 26
    .line 27
    :try_start_0
    const-string v0, ""

    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/join/mgps/Util/a;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sput-object p1, Lcom/MApplication;->A:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_3

    .line 42
    .line 43
    :cond_0
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->c:Z

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_1
    iget-object v0, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/BaseAppCompatActivity$f;->b:Lcom/BaseAppCompatActivity;

    .line 58
    .line 59
    iget-object v1, v0, Lcom/BaseAppCompatActivity;->dialogU:Landroid/app/Dialog;

    .line 60
    .line 61
    if-nez v1, :cond_3

    .line 62
    .line 63
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 64
    .line 65
    const v2, 0x7f13000d

    .line 66
    .line 67
    .line 68
    invoke-direct {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 69
    .line 70
    .line 71
    iput-object v1, v0, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_4

    .line 79
    .line 80
    return-void

    .line 81
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/BaseAppCompatActivity$f;->b:Lcom/BaseAppCompatActivity;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 84
    .line 85
    const-string v1, "\u63d0\u793a"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 88
    .line 89
    .line 90
    iget-object v0, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 91
    .line 92
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_6

    .line 99
    .line 100
    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 101
    .line 102
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_5

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    iget-object p1, p0, Lcom/BaseAppCompatActivity$f;->b:Lcom/BaseAppCompatActivity;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 114
    .line 115
    const-string v0, "\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/BaseAppCompatActivity$f;->b:Lcom/BaseAppCompatActivity;

    .line 122
    .line 123
    iget-object p1, p1, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 124
    .line 125
    const-string v0, "\u9700\u8981\u6253\u5f00\u8bfb\u5199\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 128
    .line 129
    .line 130
    :goto_2
    iget-object p1, p0, Lcom/BaseAppCompatActivity$f;->b:Lcom/BaseAppCompatActivity;

    .line 131
    .line 132
    iget-object p1, p1, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 133
    .line 134
    new-instance v0, Lcom/BaseAppCompatActivity$f$a;

    .line 135
    .line 136
    invoke-direct {v0, p0}, Lcom/BaseAppCompatActivity$f$a;-><init>(Lcom/BaseAppCompatActivity$f;)V

    .line 137
    .line 138
    .line 139
    const-string v1, "\u53bb\u6253\u5f00"

    .line 140
    .line 141
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/BaseAppCompatActivity$f;->b:Lcom/BaseAppCompatActivity;

    .line 145
    .line 146
    iget-object v0, p1, Lcom/BaseAppCompatActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iput-object v0, p1, Lcom/BaseAppCompatActivity;->dialogU:Landroid/app/Dialog;

    .line 153
    .line 154
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/BaseAppCompatActivity$f;->b:Lcom/BaseAppCompatActivity;

    .line 155
    .line 156
    invoke-static {p1}, Lcom/BaseAppCompatActivity;->access$200(Lcom/BaseAppCompatActivity;)Lv6/d;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-eqz p1, :cond_8

    .line 161
    .line 162
    iget-object p1, p0, Lcom/BaseAppCompatActivity$f;->b:Lcom/BaseAppCompatActivity;

    .line 163
    .line 164
    invoke-static {p1}, Lcom/BaseAppCompatActivity;->access$200(Lcom/BaseAppCompatActivity;)Lv6/d;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-interface {p1}, Lv6/d;->b()V

    .line 169
    .line 170
    .line 171
    :cond_8
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
    invoke-virtual {p0, p1}, Lcom/BaseAppCompatActivity$f;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
