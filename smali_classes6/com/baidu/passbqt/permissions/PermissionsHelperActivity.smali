.class public Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final a:I = 0x1f40

.field private static final b:I = 0x1f41


# instance fields
.field private c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

.field private d:Lcom/baidu/passbqt/permissions/PermissionsCallback;

.field private e:Ljava/lang/StringBuilder;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a(Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;)Lcom/baidu/passbqt/permissions/PermissionsCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->d:Lcom/baidu/passbqt/permissions/PermissionsCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->e:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;)Lcom/baidu/passbqt/permissions/PermissionsDTO;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x1f40

    .line 5
    .line 6
    if-ne p1, p2, :cond_1

    .line 7
    .line 8
    invoke-static {}, Lcom/baidu/passbqt/permissions/PassPermissions;->a()Lcom/baidu/passbqt/permissions/PassPermissions;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {}, Lcom/baidu/passbqt/permissions/PassPermissions;->a()Lcom/baidu/passbqt/permissions/PassPermissions;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Lcom/baidu/passbqt/permissions/PassPermissions;->b()Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iget-object p2, p2, Lcom/baidu/passbqt/permissions/PermissionsDTO;->b:[Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/baidu/passbqt/permissions/PassPermissions;->a([Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->d:Lcom/baidu/passbqt/permissions/PermissionsCallback;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/baidu/passbqt/permissions/PermissionsCallback;->a()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->d:Lcom/baidu/passbqt/permissions/PermissionsCallback;

    .line 35
    .line 36
    const/4 p2, -0x1

    .line 37
    invoke-virtual {p1, p2}, Lcom/baidu/passbqt/permissions/PermissionsCallback;->a(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/baidu/passbqt/permissions/PassPermissions;->a()Lcom/baidu/passbqt/permissions/PassPermissions;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/baidu/passbqt/permissions/PassPermissions;->b()Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 13
    .line 14
    invoke-static {}, Lcom/baidu/passbqt/permissions/PassPermissions;->a()Lcom/baidu/passbqt/permissions/PassPermissions;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Lcom/baidu/passbqt/permissions/PassPermissions;->c()Lcom/baidu/passbqt/permissions/PermissionsCallback;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->d:Lcom/baidu/passbqt/permissions/PermissionsCallback;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    invoke-virtual {p1, v0}, Lcom/baidu/passbqt/permissions/PermissionsCallback;->a(I)V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->e:Ljava/lang/StringBuilder;

    .line 44
    .line 45
    iget-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/baidu/passbqt/permissions/PermissionsDTO;->b:[Ljava/lang/String;

    .line 48
    .line 49
    array-length v0, p1

    .line 50
    const/4 v1, 0x0

    .line 51
    :goto_0
    if-ge v1, v0, :cond_2

    .line 52
    .line 53
    aget-object v2, p1, v1

    .line 54
    .line 55
    iget-object v3, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->e:Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    invoke-static {p0}, Lcom/baidu/passbqt/common/SharedPreferencesUtil;->a(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->e:Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-static {p1, v0}, Lcom/baidu/passbqt/common/SharedPreferencesUtil;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-nez p1, :cond_3

    .line 85
    .line 86
    iget-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/baidu/passbqt/permissions/PermissionsDTO;->c:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_3

    .line 95
    .line 96
    new-instance p1, Lcom/baidu/passbqt/view/CommonDialog$Builder;

    .line 97
    .line 98
    invoke-direct {p1, p0}, Lcom/baidu/passbqt/view/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 102
    .line 103
    iget-object v0, v0, Lcom/baidu/passbqt/permissions/PermissionsDTO;->c:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a(Ljava/lang/String;)Lcom/baidu/passbqt/view/CommonDialog$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/baidu/passbqt/permissions/PermissionsDTO;->d:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/baidu/passbqt/view/CommonDialog$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iget-object v0, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 118
    .line 119
    iget v0, v0, Lcom/baidu/passbqt/permissions/PermissionsDTO;->i:I

    .line 120
    .line 121
    invoke-virtual {p1, v0}, Lcom/baidu/passbqt/view/CommonDialog$Builder;->b(I)Lcom/baidu/passbqt/view/CommonDialog$Builder;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 126
    .line 127
    iget-boolean v0, v0, Lcom/baidu/passbqt/permissions/PermissionsDTO;->e:Z

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Lcom/baidu/passbqt/view/CommonDialog$Builder;->b(Z)Lcom/baidu/passbqt/view/CommonDialog$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object v0, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/baidu/passbqt/permissions/PermissionsDTO;->f:Ljava/lang/String;

    .line 136
    .line 137
    new-instance v1, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$2;

    .line 138
    .line 139
    invoke-direct {v1, p0}, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$2;-><init>(Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0, v1}, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/baidu/passbqt/view/CommonDialog$Builder;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 147
    .line 148
    iget-object v0, v0, Lcom/baidu/passbqt/permissions/PermissionsDTO;->g:Ljava/lang/String;

    .line 149
    .line 150
    new-instance v1, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$1;

    .line 151
    .line 152
    invoke-direct {v1, p0}, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$1;-><init>(Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v0, v1}, Lcom/baidu/passbqt/view/CommonDialog$Builder;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/baidu/passbqt/view/CommonDialog$Builder;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a()Lcom/baidu/passbqt/view/CommonDialog;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 164
    .line 165
    .line 166
    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->f:Z

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_3
    iget-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 171
    .line 172
    iget-object p1, p1, Lcom/baidu/passbqt/permissions/PermissionsDTO;->b:[Ljava/lang/String;

    .line 173
    .line 174
    const/16 v0, 0x1f41

    .line 175
    .line 176
    invoke-static {p0, p1, v0}, Lcom/baidu/passbqt/permissions/b;->a(Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;[Ljava/lang/String;I)V

    .line 177
    .line 178
    .line 179
    :goto_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1f41

    .line 5
    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    const/4 v0, 0x1

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    :goto_0
    array-length v4, p2

    .line 15
    const/4 v5, -0x1

    .line 16
    if-ge v1, v4, :cond_4

    .line 17
    .line 18
    aget v4, p3, v1

    .line 19
    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    new-array v4, v0, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v5, "Permission check result is permission granted"

    .line 25
    .line 26
    aput-object v5, v4, p1

    .line 27
    .line 28
    const-string v5, "PassPermissions"

    .line 29
    .line 30
    invoke-static {v5, v4}, Lcom/baidu/passbqt/common/Log;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    iget-object v3, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/baidu/passbqt/permissions/PermissionsDTO;->d:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->d:Lcom/baidu/passbqt/permissions/PermissionsCallback;

    .line 45
    .line 46
    invoke-virtual {p1, v5}, Lcom/baidu/passbqt/permissions/PermissionsCallback;->a(I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    aget-object v3, p2, v1

    .line 54
    .line 55
    invoke-static {p0, v3}, Lcom/baidu/passbqt/permissions/a;->a(Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_3

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    :cond_3
    const/4 v3, 0x0

    .line 63
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    if-eqz v2, :cond_5

    .line 67
    .line 68
    iget-boolean p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->f:Z

    .line 69
    .line 70
    if-nez p1, :cond_5

    .line 71
    .line 72
    iget-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 73
    .line 74
    iget-boolean p1, p1, Lcom/baidu/passbqt/permissions/PermissionsDTO;->h:Z

    .line 75
    .line 76
    if-eqz p1, :cond_5

    .line 77
    .line 78
    new-instance p1, Lcom/baidu/passbqt/view/CommonDialog$Builder;

    .line 79
    .line 80
    invoke-direct {p1, p0}, Lcom/baidu/passbqt/view/CommonDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    .line 82
    .line 83
    iget-object p2, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 84
    .line 85
    iget-object p2, p2, Lcom/baidu/passbqt/permissions/PermissionsDTO;->c:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {p1, p2}, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a(Ljava/lang/String;)Lcom/baidu/passbqt/view/CommonDialog$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object p2, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 92
    .line 93
    iget-object p2, p2, Lcom/baidu/passbqt/permissions/PermissionsDTO;->d:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a(Ljava/lang/CharSequence;)Lcom/baidu/passbqt/view/CommonDialog$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    iget-object p2, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 100
    .line 101
    iget p2, p2, Lcom/baidu/passbqt/permissions/PermissionsDTO;->i:I

    .line 102
    .line 103
    invoke-virtual {p1, p2}, Lcom/baidu/passbqt/view/CommonDialog$Builder;->b(I)Lcom/baidu/passbqt/view/CommonDialog$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iget-object p2, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 108
    .line 109
    iget-object p2, p2, Lcom/baidu/passbqt/permissions/PermissionsDTO;->f:Ljava/lang/String;

    .line 110
    .line 111
    new-instance p3, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$4;

    .line 112
    .line 113
    invoke-direct {p3, p0}, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$4;-><init>(Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1, p2, p3}, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/baidu/passbqt/view/CommonDialog$Builder;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p2, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->c:Lcom/baidu/passbqt/permissions/PermissionsDTO;

    .line 121
    .line 122
    iget-object p2, p2, Lcom/baidu/passbqt/permissions/PermissionsDTO;->g:Ljava/lang/String;

    .line 123
    .line 124
    new-instance p3, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$3;

    .line 125
    .line 126
    invoke-direct {p3, p0}, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity$3;-><init>(Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, p2, p3}, Lcom/baidu/passbqt/view/CommonDialog$Builder;->b(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/baidu/passbqt/view/CommonDialog$Builder;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p1}, Lcom/baidu/passbqt/view/CommonDialog$Builder;->a()Lcom/baidu/passbqt/view/CommonDialog;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_5
    if-eqz v3, :cond_6

    .line 142
    .line 143
    iget-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->d:Lcom/baidu/passbqt/permissions/PermissionsCallback;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/baidu/passbqt/permissions/PermissionsCallback;->a()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    iget-object p1, p0, Lcom/baidu/passbqt/permissions/PermissionsHelperActivity;->d:Lcom/baidu/passbqt/permissions/PermissionsCallback;

    .line 153
    .line 154
    invoke-virtual {p1, v5}, Lcom/baidu/passbqt/permissions/PermissionsCallback;->a(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 158
    .line 159
    .line 160
    :goto_2
    return-void
.end method
