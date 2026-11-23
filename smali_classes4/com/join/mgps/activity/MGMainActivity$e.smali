.class Lcom/join/mgps/activity/MGMainActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->onMygameSelected()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$e;->b:Lcom/join/mgps/activity/MGMainActivity;

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
    .locals 5
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
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$e;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 8
    .line 9
    iget-boolean v0, p1, Lcom/join/mgps/activity/MGMainActivity;->hasWritePermission:Z

    .line 10
    .line 11
    if-nez v0, :cond_8

    .line 12
    .line 13
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iput-boolean v0, p1, Lcom/join/mgps/activity/MGMainActivity;->hasWritePermission:Z

    .line 27
    .line 28
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$e;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 29
    .line 30
    iget-boolean v0, p1, Lcom/join/mgps/activity/MGMainActivity;->hasWritePermission:Z

    .line 31
    .line 32
    if-eqz v0, :cond_8

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MGMainActivity;->startBackups(Z)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :cond_1
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->c:Z

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    goto :goto_4

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$e;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 45
    .line 46
    iget-object v2, v0, Lcom/join/mgps/activity/MGMainActivity;->dialogU:Landroid/app/Dialog;

    .line 47
    .line 48
    if-nez v2, :cond_3

    .line 49
    .line 50
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const v4, 0x7f13000d

    .line 57
    .line 58
    .line 59
    invoke-direct {v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 60
    .line 61
    .line 62
    iput-object v2, v0, Lcom/join/mgps/activity/MGMainActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    :goto_1
    iget-object v0, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 73
    .line 74
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    return-void

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$e;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 84
    .line 85
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 86
    .line 87
    const-string v2, "\u63d0\u793a"

    .line 88
    .line 89
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 90
    .line 91
    .line 92
    iget-object v0, p1, Lcom/tbruyelle/rxpermissions2/b;->a:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_7

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
    if-eqz p1, :cond_6

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$e;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 112
    .line 113
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 114
    .line 115
    const-string v0, "\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    .line 116
    .line 117
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$e;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 122
    .line 123
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 124
    .line 125
    const-string v0, "\u9700\u8981\u6253\u5f00\u8bfb\u5199\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 128
    .line 129
    .line 130
    :goto_3
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$e;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 131
    .line 132
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 133
    .line 134
    new-instance v0, Lcom/join/mgps/activity/MGMainActivity$e$a;

    .line 135
    .line 136
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MGMainActivity$e$a;-><init>(Lcom/join/mgps/activity/MGMainActivity$e;)V

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
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$e;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 145
    .line 146
    iget-object v0, p1, Lcom/join/mgps/activity/MGMainActivity;->dialog:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 147
    .line 148
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    iput-object v0, p1, Lcom/join/mgps/activity/MGMainActivity;->dialogU:Landroid/app/Dialog;

    .line 153
    .line 154
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MGMainActivity$e;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
