.class public Lcom/xinzhu/overmind/shared/PermissionRequestActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation


# static fields
.field public static final g:I = 0x3e3

.field public static final h:Ljava/lang/String; = "extra.permission"

.field public static final i:Ljava/lang/String; = "extra.app_name"

.field public static final j:Ljava/lang/String; = "extra.user_id"

.field public static final k:Ljava/lang/String; = "extra.package_name"


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field e:Landroid/app/Dialog;

.field f:Landroidx/appcompat/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xinzhu/overmind/shared/PermissionRequestActivity;->f:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 6
    .line 7
    return-void
.end method

.method public static a([I)Z
    .locals 5

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget v3, p0, v2

    .line 7
    .line 8
    const/4 v4, -0x1

    .line 9
    if-ne v3, v4, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x1

    .line 16
    :goto_1
    return v1
.end method

.method public static b(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    invoke-virtual {p5, p4}, Lma/g;->k(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 6
    .line 7
    .line 8
    move-result-object p5

    .line 9
    if-eqz p5, :cond_0

    .line 10
    .line 11
    invoke-virtual {p5}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->E()Z

    .line 12
    .line 13
    .line 14
    move-result p5

    .line 15
    if-eqz p5, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p5

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p5

    .line 26
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v1, Landroid/content/ComponentName;

    .line 32
    .line 33
    const-class v2, Lcom/xinzhu/overmind/shared/PermissionRequestActivity;

    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v1, p5, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const-string p5, "extra.permission"

    .line 46
    .line 47
    invoke-virtual {v0, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    const-string p1, "extra.app_name"

    .line 51
    .line 52
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    const-string p1, "extra.package_name"

    .line 56
    .line 57
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    const-string p1, "extra.user_id"

    .line 61
    .line 62
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    const/high16 p1, 0x10000000

    .line 66
    .line 67
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "extra.permission"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "extra.app_name"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/xinzhu/overmind/shared/PermissionRequestActivity;->c:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "extra.package_name"

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iput-object v1, p0, Lcom/xinzhu/overmind/shared/PermissionRequestActivity;->d:Ljava/lang/String;

    .line 29
    .line 30
    const-string v1, "extra.user_id"

    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lcom/xinzhu/overmind/shared/PermissionRequestActivity;->b:I

    .line 38
    .line 39
    const/16 p1, 0x3e3

    .line 40
    .line 41
    invoke-static {p0, v0, p1}, Lcom/xinzhu/overmind/shared/m;->a(Lcom/xinzhu/overmind/shared/PermissionRequestActivity;[Ljava/lang/String;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Lcom/xinzhu/overmind/shared/PermissionRequestActivity;->a([I)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Landroid/content/Intent;

    .line 11
    .line 12
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string p2, "pkg"

    .line 16
    .line 17
    iget-object p3, p0, Lcom/xinzhu/overmind/shared/PermissionRequestActivity;->d:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string p2, "user_id"

    .line 23
    .line 24
    iget p3, p0, Lcom/xinzhu/overmind/shared/PermissionRequestActivity;->b:I

    .line 25
    .line 26
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    const/4 p2, -0x1

    .line 30
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 34
    .line 35
    .line 36
    goto :goto_5

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/PermissionRequestActivity;->e:Landroid/app/Dialog;

    .line 38
    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 42
    .line 43
    sget p3, Lcom/xinzhu/overmind/shared/R$style;->AlertDialogCustom:I

    .line 44
    .line 45
    invoke-direct {p1, p0, p3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/xinzhu/overmind/shared/PermissionRequestActivity;->f:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/PermissionRequestActivity;->f:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 59
    .line 60
    const-string p3, "\u63d0\u793a"

    .line 61
    .line 62
    invoke-virtual {p1, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 63
    .line 64
    .line 65
    array-length p1, p2

    .line 66
    const/4 p3, 0x0

    .line 67
    const/4 v0, 0x0

    .line 68
    :goto_1
    if-ge p3, p1, :cond_5

    .line 69
    .line 70
    aget-object v1, p2, p3

    .line 71
    .line 72
    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    const/4 v3, 0x1

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    :goto_2
    const/4 v0, 0x1

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    :goto_3
    add-int/lit8 p3, p3, 0x1

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    if-eqz v0, :cond_6

    .line 96
    .line 97
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/PermissionRequestActivity;->f:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 98
    .line 99
    const-string p2, "\u9700\u8981\u6253\u5f00\u8bfb\u5199\u5b58\u50a8\u6743\u9650\uff0c\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 102
    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_6
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/PermissionRequestActivity;->f:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 106
    .line 107
    const-string p2, "\u8bf7\u53bb\u8bbe\u7f6e\u4e2d\u5f00\u542f\u6743\u9650"

    .line 108
    .line 109
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 110
    .line 111
    .line 112
    :goto_4
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/PermissionRequestActivity;->f:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 113
    .line 114
    new-instance p2, Lcom/xinzhu/overmind/shared/PermissionRequestActivity$a;

    .line 115
    .line 116
    invoke-direct {p2, p0}, Lcom/xinzhu/overmind/shared/PermissionRequestActivity$a;-><init>(Lcom/xinzhu/overmind/shared/PermissionRequestActivity;)V

    .line 117
    .line 118
    .line 119
    const-string p3, "\u53bb\u6253\u5f00"

    .line 120
    .line 121
    invoke-virtual {p1, p3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/xinzhu/overmind/shared/PermissionRequestActivity;->f:Landroidx/appcompat/app/AlertDialog$Builder;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Lcom/xinzhu/overmind/shared/PermissionRequestActivity;->e:Landroid/app/Dialog;

    .line 131
    .line 132
    :goto_5
    return-void
.end method
