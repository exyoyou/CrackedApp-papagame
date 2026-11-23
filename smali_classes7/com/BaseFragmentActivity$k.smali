.class Lcom/BaseFragmentActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/BaseFragmentActivity;->requestPermission(Lcom/BaseFragmentActivity$m;)V
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
.field final synthetic b:Lcom/BaseFragmentActivity;


# direct methods
.method constructor <init>(Lcom/BaseFragmentActivity;)V
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
    iput-object p1, p0, Lcom/BaseFragmentActivity$k;->b:Lcom/BaseFragmentActivity;

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
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 6
    .line 7
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_6

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
    goto :goto_3

    .line 36
    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_0
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->c:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    goto :goto_3

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/BaseFragmentActivity$k;->b:Lcom/BaseFragmentActivity;

    .line 47
    .line 48
    iget-object v1, v0, Lcom/BaseFragmentActivity;->dialogU:Landroid/app/Dialog;

    .line 49
    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 53
    .line 54
    const v2, 0x7f13000d

    .line 55
    .line 56
    .line 57
    invoke-direct {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 58
    .line 59
    .line 60
    iput-object v1, v0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    return-void

    .line 70
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/BaseFragmentActivity$k;->b:Lcom/BaseFragmentActivity;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 73
    .line 74
    const-string v1, "\u63d0\u793a"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 77
    .line 78
    .line 79
    iget-object v0, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 80
    .line 81
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_5

    .line 88
    .line 89
    iget-object p1, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 90
    .line 91
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_4

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    iget-object p1, p0, Lcom/BaseFragmentActivity$k;->b:Lcom/BaseFragmentActivity;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 103
    .line 104
    const-string v0, "\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/BaseFragmentActivity$k;->b:Lcom/BaseFragmentActivity;

    .line 111
    .line 112
    iget-object p1, p1, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 113
    .line 114
    const-string v0, "\u9700\u8981\u6253\u5f00\u8bfb\u5199\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 117
    .line 118
    .line 119
    :goto_2
    iget-object p1, p0, Lcom/BaseFragmentActivity$k;->b:Lcom/BaseFragmentActivity;

    .line 120
    .line 121
    iget-object p1, p1, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 122
    .line 123
    new-instance v0, Lcom/BaseFragmentActivity$k$a;

    .line 124
    .line 125
    invoke-direct {v0, p0}, Lcom/BaseFragmentActivity$k$a;-><init>(Lcom/BaseFragmentActivity$k;)V

    .line 126
    .line 127
    .line 128
    const-string v1, "\u53bb\u6253\u5f00"

    .line 129
    .line 130
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/BaseFragmentActivity$k;->b:Lcom/BaseFragmentActivity;

    .line 134
    .line 135
    iget-object v0, p1, Lcom/BaseFragmentActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 136
    .line 137
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    iput-object v0, p1, Lcom/BaseFragmentActivity;->dialogU:Landroid/app/Dialog;

    .line 142
    .line 143
    :cond_6
    :goto_3
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
    invoke-virtual {p0, p1}, Lcom/BaseFragmentActivity$k;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
