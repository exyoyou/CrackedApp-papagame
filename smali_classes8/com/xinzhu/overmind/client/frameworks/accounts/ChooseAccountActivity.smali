.class public Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;,
        Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$b;,
        Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$d;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String; = "AccountManager"


# instance fields
.field private b:[Landroid/os/Parcelable;

.field private c:Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;

.field private d:Landroid/os/Bundle;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


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
    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->b:[Landroid/os/Parcelable;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->c:Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->g:Ljava/util/HashMap;

    .line 15
    .line 16
    return-void
.end method

.method private a()V
    .locals 6

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
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    .line 13
    aget-object v3, v0, v2

    .line 14
    .line 15
    iget-object v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->g:Ljava/util/HashMap;

    .line 16
    .line 17
    iget-object v5, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 1
    const-string v0, "AccountManager"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->g:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x5

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->g:Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    .line 19
    .line 20
    iget-object v3, v2, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iget v2, v2, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    .line 32
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    nop

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v1, "No icon resource for account type "

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_1
    nop

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v1, "No icon name for account type "

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 76
    :goto_1
    return-object p1
.end method


# virtual methods
.method protected c(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->b:[Landroid/os/Parcelable;

    .line 2
    .line 3
    aget-object p1, p1, p3

    .line 4
    .line 5
    check-cast p1, Landroid/accounts/Account;

    .line 6
    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->get()Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    iget-object p3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->f:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2, p1, p3}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    if-eqz p3, :cond_0

    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    const/4 p4, 0x4

    .line 28
    if-ne p3, p4, :cond_0

    .line 29
    .line 30
    iget-object p3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->f:Ljava/lang/String;

    .line 31
    .line 32
    const/4 p4, 0x2

    .line 33
    invoke-virtual {p2, p1, p3, p4}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string p3, "selected account "

    .line 42
    .line 43
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    new-instance p2, Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object p3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 55
    .line 56
    const-string p4, "authAccount"

    .line 57
    .line 58
    invoke-virtual {p2, p4, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string p3, "accountType"

    .line 62
    .line 63
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {p2, p3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    iput-object p2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->d:Landroid/os/Bundle;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->finish()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public finish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->c:Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->d:Landroid/os/Bundle;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;->b(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x4

    .line 14
    const-string v2, "canceled"

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;->a(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

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
    const-string v0, "accounts"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->b:[Landroid/os/Parcelable;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "accountManagerResponse"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->c:Lcom/xinzhu/overmind/server/accounts/AccountManagerResponse;

    .line 29
    .line 30
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->b:[Landroid/os/Parcelable;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    if-nez p1, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->finish()V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    :try_start_0
    new-instance p1, Lcom/xinzhu/haunted/android/app/a;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/xinzhu/haunted/android/app/a;-><init>(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/app/a;->g()Landroid/os/IBinder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/am/f;->getLaunchedFromUid(Landroid/os/IBinder;)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    iput v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->e:I

    .line 60
    .line 61
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, p1}, Lcom/xinzhu/overmind/server/am/f;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->f:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p1

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v2, "Unable to get caller identity \n"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    :goto_0
    iget p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->e:I

    .line 87
    .line 88
    const/16 v1, 0x3e8

    .line 89
    .line 90
    invoke-static {p1, v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->B(II)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    const-string v2, "androidPackageName"

    .line 95
    .line 96
    if-eqz p1, :cond_1

    .line 97
    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_1

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->f:Ljava/lang/String;

    .line 117
    .line 118
    :cond_1
    iget p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->e:I

    .line 119
    .line 120
    invoke-static {p1, v1}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->B(II)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-nez p1, :cond_2

    .line 125
    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v1, "Non-system Uid: "

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->e:I

    .line 147
    .line 148
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v1, " tried to override packageName \n"

    .line 152
    .line 153
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    :cond_2
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->a()V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->b:[Landroid/os/Parcelable;

    .line 160
    .line 161
    array-length p1, p1

    .line 162
    new-array p1, p1, [Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;

    .line 163
    .line 164
    :goto_1
    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->b:[Landroid/os/Parcelable;

    .line 165
    .line 166
    array-length v2, v1

    .line 167
    if-ge v0, v2, :cond_3

    .line 168
    .line 169
    new-instance v2, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;

    .line 170
    .line 171
    aget-object v1, v1, v0

    .line 172
    .line 173
    move-object v3, v1

    .line 174
    check-cast v3, Landroid/accounts/Account;

    .line 175
    .line 176
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 177
    .line 178
    check-cast v1, Landroid/accounts/Account;

    .line 179
    .line 180
    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 181
    .line 182
    invoke-direct {p0, v1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-direct {v2, v3, v1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 187
    .line 188
    .line 189
    aput-object v2, p1, v0

    .line 190
    .line 191
    add-int/lit8 v0, v0, 0x1

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_3
    invoke-static {}, Lq9/a$b;->i()I

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 199
    .line 200
    .line 201
    const v0, 0x102000a

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Landroid/widget/ListView;

    .line 209
    .line 210
    new-instance v1, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$b;

    .line 211
    .line 212
    const v2, 0x1090003

    .line 213
    .line 214
    .line 215
    invoke-direct {v1, p0, v2, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$b;-><init>(Landroid/content/Context;I[Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$c;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    .line 220
    .line 221
    const/4 p1, 0x1

    .line 222
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setTextFilterEnabled(Z)V

    .line 226
    .line 227
    .line 228
    new-instance p1, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$a;

    .line 229
    .line 230
    invoke-direct {p1, p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity$a;-><init>(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountActivity;)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 234
    .line 235
    .line 236
    return-void
.end method
