.class public Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final g:Ljava/lang/String; = "account"

.field public static final h:Ljava/lang/String; = "authTokenType"

.field public static final i:Ljava/lang/String; = "response"

.field public static final j:Ljava/lang/String; = "uid"


# instance fields
.field private b:Landroid/accounts/Account;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Landroid/os/Bundle;

.field protected f:Landroid/view/LayoutInflater;


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
    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->e:Landroid/os/Bundle;

    .line 6
    .line 7
    return-void
.end method

.method private a(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v1, :cond_1

    .line 13
    .line 14
    aget-object v4, v0, v3

    .line 15
    .line 16
    iget-object v5, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v5

    .line 24
    if-eqz v5, :cond_0

    .line 25
    .line 26
    :try_start_0
    iget-object v0, v4, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget v1, v4, Landroid/accounts/AuthenticatorDescription;->labelId:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object p1

    .line 39
    :catch_0
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 40
    .line 41
    return-object p1

    .line 42
    :catch_1
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 43
    .line 44
    return-object p1

    .line 45
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 49
    .line 50
    return-object p1
.end method

.method private b(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->f:Landroid/view/LayoutInflater;

    .line 2
    .line 3
    invoke-static {}, Lq9/a$b;->n()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Lq9/a$a;->s()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/widget/TextView;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public final c(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->e:Landroid/os/Bundle;

    .line 2
    .line 3
    return-void
.end method

.method public finish()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "response"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/accounts/AccountAuthenticatorResponse;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->e:Landroid/os/Bundle;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/accounts/AccountAuthenticatorResponse;->onResult(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x4

    .line 24
    const-string v2, "canceled"

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lq9/a$a;->o()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->get()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->b:Landroid/accounts/Account;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->c:Ljava/lang/String;

    .line 18
    .line 19
    iget v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->d:I

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 23
    .line 24
    .line 25
    new-instance p1, Landroid/content/Intent;

    .line 26
    .line 27
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v0, "retry"

    .line 31
    .line 32
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const/4 v0, -0x1

    .line 36
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->c(Landroid/os/Bundle;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {}, Lq9/a$a;->q()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-ne p1, v0, :cond_1

    .line 56
    .line 57
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->get()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->b:Landroid/accounts/Account;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->c:Ljava/lang/String;

    .line 64
    .line 65
    iget v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->d:I

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->finish()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lq9/a$b;->m()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lq9/a$c;->f()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    const-string p1, "layout_inflater"

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/view/LayoutInflater;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->f:Landroid/view/LayoutInflater;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const/4 v0, 0x0

    .line 37
    if-nez p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->finish()V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    const-string v1, "account"

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/accounts/Account;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->b:Landroid/accounts/Account;

    .line 55
    .line 56
    const-string v1, "authTokenType"

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->c:Ljava/lang/String;

    .line 63
    .line 64
    const-string v1, "uid"

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    iput p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->d:I

    .line 71
    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iget v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->d:I

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->b:Landroid/accounts/Account;

    .line 83
    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    iget-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->c:Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v3, :cond_3

    .line 89
    .line 90
    if-nez v1, :cond_1

    .line 91
    .line 92
    goto/16 :goto_1

    .line 93
    .line 94
    :cond_1
    :try_start_0
    invoke-direct {p0, v2}, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->a(Landroid/accounts/Account;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    invoke-static {}, Lq9/a$a;->p()I

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Landroid/widget/TextView;

    .line 107
    .line 108
    const/16 v4, 0x8

    .line 109
    .line 110
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 111
    .line 112
    .line 113
    new-instance v4, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;

    .line 114
    .line 115
    invoke-direct {v4, p0, v3}, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity$a;-><init>(Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;Landroid/widget/TextView;)V

    .line 116
    .line 117
    .line 118
    new-instance v3, Ll8/c;

    .line 119
    .line 120
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-direct {v3, v5}, Ll8/c;-><init>(Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object v5, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->b:Landroid/accounts/Account;

    .line 128
    .line 129
    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 130
    .line 131
    iget-object v6, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->c:Ljava/lang/String;

    .line 132
    .line 133
    const/4 v7, 0x0

    .line 134
    invoke-virtual {v3, v5, v6, v4, v7}, Ll8/c;->f(Ljava/lang/String;Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lq9/a$a;->o()I

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lq9/a$a;->q()I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lq9/a$a;->t()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Landroid/widget/LinearLayout;

    .line 168
    .line 169
    array-length v4, v1

    .line 170
    const/4 v5, 0x0

    .line 171
    :goto_0
    if-ge v5, v4, :cond_2

    .line 172
    .line 173
    aget-object v6, v1, v5

    .line 174
    .line 175
    :try_start_1
    invoke-virtual {p1, v6, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 176
    .line 177
    .line 178
    move-result-object v7

    .line 179
    invoke-virtual {p1, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 180
    .line 181
    .line 182
    move-result-object v7

    .line 183
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    :catch_0
    invoke-direct {p0, v6}, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->b(Ljava/lang/String;)Landroid/view/View;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 192
    .line 193
    .line 194
    add-int/lit8 v5, v5, 0x1

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_2
    invoke-static {}, Lq9/a$a;->k()I

    .line 198
    .line 199
    .line 200
    move-result p1

    .line 201
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Landroid/widget/TextView;

    .line 206
    .line 207
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->b:Landroid/accounts/Account;

    .line 208
    .line 209
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    invoke-static {}, Lq9/a$a;->n()I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    check-cast p1, Landroid/widget/TextView;

    .line 223
    .line 224
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    return-void

    .line 228
    :catch_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->finish()V

    .line 232
    .line 233
    .line 234
    return-void

    .line 235
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/GrantCredentialsPermissionActivity;->finish()V

    .line 239
    .line 240
    .line 241
    return-void
.end method
