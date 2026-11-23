.class public Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static final A:I = 0x1

.field public static final B:I = 0x2

.field private static final C:Ljava/lang/String; = "pendingRequest"

.field private static final D:Ljava/lang/String; = "existingAccounts"

.field private static final E:Ljava/lang/String; = "selectedAccountName"

.field private static final F:Ljava/lang/String; = "selectedAddAccount"

.field private static final G:Ljava/lang/String; = "accountsList"

.field private static final H:Ljava/lang/String; = "visibilityList"

.field private static final I:I = -0x1

.field private static final J:Landroid/content/ComponentName;

.field private static final q:Ljava/lang/String; = "AccountChooser"

.field public static final r:Ljava/lang/String; = "allowableAccounts"

.field public static final s:Ljava/lang/String; = "allowableAccountTypes"

.field public static final t:Ljava/lang/String; = "addAccountOptions"

.field public static final u:Ljava/lang/String; = "addAccountRequiredFeatures"

.field public static final v:Ljava/lang/String; = "authTokenType"

.field public static final w:Ljava/lang/String; = "selectedAccount"

.field public static final x:Ljava/lang/String; = "alwaysPromptForAccount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final y:Ljava/lang/String; = "descriptionTextOverride"

.field public static final z:I


# instance fields
.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:[Landroid/os/Parcelable;

.field private k:I

.field private l:Landroid/widget/Button;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lq9/a$c;->e()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->J:Landroid/content/ComponentName;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->d:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->e:Z

    .line 9
    .line 10
    iput v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->i:I

    .line 11
    .line 12
    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->j:[Landroid/os/Parcelable;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic a(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->k:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic b(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;)Landroid/widget/Button;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->l:Landroid/widget/Button;

    .line 2
    .line 3
    return-object p0
.end method

.method private c(Lcom/xinzhu/overmind/client/frameworks/accounts/a;)Ljava/util/LinkedHashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xinzhu/overmind/client/frameworks/accounts/a;",
            ")",
            "Ljava/util/LinkedHashMap<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->n:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const/16 v2, 0x3e8

    .line 9
    .line 10
    invoke-static {v2}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p1, v1, v2, v1}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 25
    .line 26
    .line 27
    array-length v2, p1

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-ge v3, v2, :cond_3

    .line 30
    .line 31
    aget-object v4, p1, v3

    .line 32
    .line 33
    iget-object v5, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->b:Ljava/util/Set;

    .line 34
    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-nez v5, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object v5, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->c:Ljava/util/Set;

    .line 45
    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    iget-object v6, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 49
    .line 50
    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-nez v5, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    if-eqz v5, :cond_2

    .line 62
    .line 63
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {v1, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    return-object v1
.end method

.method private d(Landroid/content/Intent;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "allowableAccounts"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Landroid/os/Parcelable;

    .line 33
    .line 34
    check-cast v1, Landroid/accounts/Account;

    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v0, 0x0

    .line 41
    :cond_1
    return-object v0
.end method

.method private e(Ljava/util/ArrayList;Ljava/lang/String;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    const/4 p3, 0x0

    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ge p3, v0, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/accounts/Account;

    .line 20
    .line 21
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return p3

    .line 30
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p1, -0x1

    .line 34
    return p1
.end method

.method private f(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->o:Z

    .line 6
    .line 7
    xor-int/lit8 v1, v1, 0x1

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    new-array v0, v0, [Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/accounts/Account;

    .line 24
    .line 25
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 26
    .line 27
    aput-object v2, v0, v1

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-boolean v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->o:Z

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {}, Lq9/a$c;->d()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    aput-object v1, v0, p1

    .line 53
    .line 54
    :cond_1
    return-object v0
.end method

.method private g(Landroid/content/Intent;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "allowableAccountTypes"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Ljava/util/HashSet;

    .line 16
    .line 17
    array-length v2, v0

    .line 18
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 19
    .line 20
    .line 21
    array-length v2, v0

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_0

    .line 24
    .line 25
    aget-object v4, v0, v3

    .line 26
    .line 27
    iget-object v4, v4, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    if-eqz p1, :cond_1

    .line 36
    .line 37
    new-instance v0, Ljava/util/HashSet;

    .line 38
    .line 39
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 47
    .line 48
    .line 49
    move-object v1, v0

    .line 50
    :cond_1
    return-object v1
.end method

.method public static h(Landroid/content/Intent;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->J:Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private i(Landroid/accounts/Account;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "selected account "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 15
    .line 16
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 17
    .line 18
    invoke-direct {p0, v0, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private j(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lq9/a$a;->r()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 p1, 0x8

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method private final k([Ljava/lang/String;)V
    .locals 3

    .line 1
    const v0, 0x102000a

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/ListView;

    .line 9
    .line 10
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 11
    .line 12
    const v2, 0x109000f

    .line 13
    .line 14
    .line 15
    invoke-direct {v1, p0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity$a;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity$a;-><init>(Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 35
    .line 36
    .line 37
    iget v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->k:I

    .line 38
    .line 39
    const/4 v2, -0x1

    .line 40
    if-eq v1, v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v0, v1, p1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 43
    .line 44
    .line 45
    const-string p1, "AccountChooser"

    .line 46
    .line 47
    const/4 v0, 0x2

    .line 48
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_0

    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v0, "List item "

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->k:I

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v0, " should be selected"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    :cond_0
    return-void
.end method

.method private m(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-static {}, Lq9/a$d;->b()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->setTheme(I)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/accounts/Account;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->get()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->n:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v0, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x2

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x4

    .line 28
    if-ne v3, v4, :cond_0

    .line 29
    .line 30
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->get()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget-object v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->n:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v3, v0, v4, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x3

    .line 46
    if-ne v0, v1, :cond_1

    .line 47
    .line 48
    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v1, "authAccount"

    .line 62
    .line 63
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v1, "accountType"

    .line 67
    .line 68
    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Landroid/content/Intent;

    .line 72
    .line 73
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/4 v1, -0x1

    .line 81
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 82
    .line 83
    .line 84
    const-string v0, "AccountChooser"

    .line 85
    .line 86
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v1, "ChooseTypeAndAccountActivity.setResultAndFinish: selected account "

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p1, ", "

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method private o()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseAccountTypeActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x80000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "allowableAccountTypes"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "addAccountOptions"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "addAccountRequiredFeatures"

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "authTokenType"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x1

    .line 66
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 67
    .line 68
    .line 69
    iput v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->i:I

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method protected l(Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, "AccountChooser"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "runAddAccountForAuthenticator: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "addAccountOptions"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "addAccountRequiredFeatures"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "authTokenType"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/4 v7, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    move-object v3, p1

    .line 60
    move-object v8, p0

    .line 61
    invoke-virtual/range {v2 .. v9}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1
    const-string v0, "AccountChooser"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    :cond_0
    if-eqz p3, :cond_1

    .line 27
    .line 28
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move-object v0, v2

    .line 34
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v4, "ChooseTypeAndAccountActivity.onActivityResult(reqCode="

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v4, ", resCode="

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v4, ", extras="

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, ")"

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    :cond_2
    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->i:I

    .line 70
    .line 71
    if-nez p2, :cond_4

    .line 72
    .line 73
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 85
    .line 86
    .line 87
    :cond_3
    return-void

    .line 88
    :cond_4
    const/4 v3, -0x1

    .line 89
    if-ne p2, v3, :cond_c

    .line 90
    .line 91
    const-string p2, "accountType"

    .line 92
    .line 93
    const/4 v3, 0x1

    .line 94
    if-ne p1, v3, :cond_5

    .line 95
    .line 96
    if-eqz p3, :cond_c

    .line 97
    .line 98
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_c

    .line 103
    .line 104
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->l(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :cond_5
    if-ne p1, v1, :cond_c

    .line 109
    .line 110
    if-eqz p3, :cond_6

    .line 111
    .line 112
    const-string p1, "authAccount"

    .line 113
    .line 114
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    goto :goto_1

    .line 123
    :cond_6
    move-object p1, v2

    .line 124
    :goto_1
    if-eqz v2, :cond_7

    .line 125
    .line 126
    if-nez p1, :cond_a

    .line 127
    .line 128
    :cond_7
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->get()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    iget-object p3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->n:Ljava/lang/String;

    .line 133
    .line 134
    iget v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->m:I

    .line 135
    .line 136
    invoke-virtual {p2, p3, v1, p3}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    new-instance p3, Ljava/util/HashSet;

    .line 141
    .line 142
    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 143
    .line 144
    .line 145
    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->j:[Landroid/os/Parcelable;

    .line 146
    .line 147
    array-length v3, v1

    .line 148
    const/4 v4, 0x0

    .line 149
    :goto_2
    if-ge v4, v3, :cond_8

    .line 150
    .line 151
    aget-object v5, v1, v4

    .line 152
    .line 153
    check-cast v5, Landroid/accounts/Account;

    .line 154
    .line 155
    invoke-interface {p3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    add-int/lit8 v4, v4, 0x1

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_8
    array-length v1, p2

    .line 162
    const/4 v3, 0x0

    .line 163
    :goto_3
    if-ge v3, v1, :cond_a

    .line 164
    .line 165
    aget-object v4, p2, v3

    .line 166
    .line 167
    invoke-interface {p3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-nez v5, :cond_9

    .line 172
    .line 173
    iget-object v2, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 174
    .line 175
    iget-object p1, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_a
    :goto_4
    if-nez v2, :cond_b

    .line 182
    .line 183
    if-eqz p1, :cond_c

    .line 184
    .line 185
    :cond_b
    invoke-direct {p0, v2, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_c
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 193
    .line 194
    .line 195
    return-void
.end method

.method public onCancelButtonClicked(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    const-string v0, "AccountChooser"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "ChooseTypeAndAccountActivity.onCreate(savedInstanceState="

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v3, ")"

    .line 24
    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    :try_start_0
    new-instance v3, Lcom/xinzhu/haunted/android/app/a;

    .line 30
    .line 31
    invoke-direct {v3, p0}, Lcom/xinzhu/haunted/android/app/a;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/xinzhu/haunted/android/app/a;->g()Landroid/os/IBinder;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4, v3}, Lcom/xinzhu/overmind/server/am/f;->getLaunchedFromUid(Landroid/os/IBinder;)I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    iput v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->m:I

    .line 47
    .line 48
    invoke-static {}, Lcom/xinzhu/overmind/server/am/f;->get()Lcom/xinzhu/overmind/server/am/f;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {v4, v3}, Lcom/xinzhu/overmind/server/am/f;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    iput-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->n:Ljava/lang/String;

    .line 57
    .line 58
    iget v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->m:I

    .line 59
    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    iput-boolean v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->o:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception v3

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v5, "Unable to get caller identity \n"

    .line 74
    .line 75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-direct {p0, v3}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->d(Landroid/content/Intent;)Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iput-object v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->b:Ljava/util/Set;

    .line 90
    .line 91
    invoke-direct {p0, v3}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g(Landroid/content/Intent;)Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    iput-object v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->c:Ljava/util/Set;

    .line 96
    .line 97
    const-string v4, "descriptionTextOverride"

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    iput-object v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->f:Ljava/lang/String;

    .line 104
    .line 105
    if-eqz p1, :cond_2

    .line 106
    .line 107
    const-string v3, "pendingRequest"

    .line 108
    .line 109
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    iput v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->i:I

    .line 114
    .line 115
    const-string v3, "existingAccounts"

    .line 116
    .line 117
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    iput-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->j:[Landroid/os/Parcelable;

    .line 122
    .line 123
    const-string v3, "selectedAccountName"

    .line 124
    .line 125
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    iput-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->d:Ljava/lang/String;

    .line 130
    .line 131
    const-string v3, "selectedAddAccount"

    .line 132
    .line 133
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    iput-boolean v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->e:Z

    .line 138
    .line 139
    const-string v3, "accountsList"

    .line 140
    .line 141
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    const-string v4, "visibilityList"

    .line 146
    .line 147
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 152
    .line 153
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 154
    .line 155
    .line 156
    iput-object v5, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/LinkedHashMap;

    .line 157
    .line 158
    const/4 v5, 0x0

    .line 159
    :goto_1
    array-length v6, v3

    .line 160
    if-ge v5, v6, :cond_4

    .line 161
    .line 162
    iget-object v6, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/LinkedHashMap;

    .line 163
    .line 164
    aget-object v7, v3, v5

    .line 165
    .line 166
    check-cast v7, Landroid/accounts/Account;

    .line 167
    .line 168
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    check-cast v8, Ljava/lang/Integer;

    .line 173
    .line 174
    invoke-virtual {v6, v7, v8}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    add-int/lit8 v5, v5, 0x1

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_2
    iput v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->i:I

    .line 181
    .line 182
    const/4 v4, 0x0

    .line 183
    iput-object v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->j:[Landroid/os/Parcelable;

    .line 184
    .line 185
    const-string v4, "selectedAccount"

    .line 186
    .line 187
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    check-cast v3, Landroid/accounts/Account;

    .line 192
    .line 193
    if-eqz v3, :cond_3

    .line 194
    .line 195
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 196
    .line 197
    iput-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->d:Ljava/lang/String;

    .line 198
    .line 199
    :cond_3
    invoke-static {}, Lcom/xinzhu/overmind/client/frameworks/accounts/a;->get()Lcom/xinzhu/overmind/client/frameworks/accounts/a;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-direct {p0, v3}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->c(Lcom/xinzhu/overmind/client/frameworks/accounts/a;)Ljava/util/LinkedHashMap;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    iput-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/LinkedHashMap;

    .line 208
    .line 209
    :cond_4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_5

    .line 214
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    const-string v1, "selected account name is "

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->d:Ljava/lang/String;

    .line 226
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    .line 231
    .line 232
    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/LinkedHashMap;

    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 239
    .line 240
    .line 241
    iput-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:Ljava/util/ArrayList;

    .line 242
    .line 243
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/LinkedHashMap;

    .line 244
    .line 245
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_7

    .line 258
    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    check-cast v1, Ljava/util/Map$Entry;

    .line 264
    .line 265
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    check-cast v3, Ljava/lang/Integer;

    .line 270
    .line 271
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    const/4 v4, 0x3

    .line 276
    if-eq v4, v3, :cond_6

    .line 277
    .line 278
    iget-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    check-cast v1, Landroid/accounts/Account;

    .line 285
    .line 286
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_7
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:Ljava/util/ArrayList;

    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    const/4 v1, 0x1

    .line 297
    if-eqz v0, :cond_8

    .line 298
    .line 299
    iget-boolean v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->o:Z

    .line 300
    .line 301
    if-eqz v0, :cond_8

    .line 302
    .line 303
    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 304
    .line 305
    .line 306
    invoke-static {}, Lq9/a$b;->h()I

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 311
    .line 312
    .line 313
    iput-boolean v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->p:Z

    .line 314
    .line 315
    :cond_8
    iget-boolean v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->p:Z

    .line 316
    .line 317
    if-eqz v0, :cond_9

    .line 318
    .line 319
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 320
    .line 321
    .line 322
    return-void

    .line 323
    :cond_9
    iget v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->i:I

    .line 324
    .line 325
    if-nez v0, :cond_b

    .line 326
    .line 327
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_b

    .line 334
    .line 335
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->m(Landroid/os/Bundle;)V

    .line 336
    .line 337
    .line 338
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->c:Ljava/util/Set;

    .line 339
    .line 340
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    if-ne v0, v1, :cond_a

    .line 345
    .line 346
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->c:Ljava/util/Set;

    .line 347
    .line 348
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    check-cast v0, Ljava/lang/String;

    .line 357
    .line 358
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->l(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    goto :goto_3

    .line 362
    :cond_a
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->o()V

    .line 363
    .line 364
    .line 365
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:Ljava/util/ArrayList;

    .line 366
    .line 367
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->f(Ljava/util/ArrayList;)[Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    iget-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:Ljava/util/ArrayList;

    .line 372
    .line 373
    iget-object v4, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->d:Ljava/lang/String;

    .line 374
    .line 375
    iget-boolean v5, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->e:Z

    .line 376
    .line 377
    invoke-direct {p0, v3, v4, v5}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->e(Ljava/util/ArrayList;Ljava/lang/String;Z)I

    .line 378
    .line 379
    .line 380
    move-result v3

    .line 381
    iput v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->k:I

    .line 382
    .line 383
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 384
    .line 385
    .line 386
    invoke-static {}, Lq9/a$b;->l()I

    .line 387
    .line 388
    .line 389
    move-result p1

    .line 390
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 391
    .line 392
    .line 393
    iget-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->f:Ljava/lang/String;

    .line 394
    .line 395
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->j(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->k([Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    const p1, 0x102001a

    .line 402
    .line 403
    .line 404
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    check-cast p1, Landroid/widget/Button;

    .line 409
    .line 410
    iput-object p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->l:Landroid/widget/Button;

    .line 411
    .line 412
    iget v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->k:I

    .line 413
    .line 414
    const/4 v3, -0x1

    .line 415
    if-eq v0, v3, :cond_c

    .line 416
    .line 417
    const/4 v2, 0x1

    .line 418
    :cond_c
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 419
    .line 420
    .line 421
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onOkButtonClicked(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->k:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ne p1, v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->o()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget p1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->k:I

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    if-eq p1, v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/accounts/Account;

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->i(Landroid/accounts/Account;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "pendingRequest"

    .line 5
    .line 6
    iget v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->i:I

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->i:I

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    const-string v0, "existingAccounts"

    .line 17
    .line 18
    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->j:[Landroid/os/Parcelable;

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->k:I

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eq v0, v1, :cond_2

    .line 28
    .line 29
    iget-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const-string v3, "selectedAddAccount"

    .line 36
    .line 37
    if-ne v0, v1, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->h:Ljava/util/ArrayList;

    .line 48
    .line 49
    iget v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->k:I

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Landroid/accounts/Account;

    .line 56
    .line 57
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 58
    .line 59
    const-string v1, "selectedAccountName"

    .line 60
    .line 61
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/LinkedHashMap;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    new-array v0, v0, [Landroid/os/Parcelable;

    .line 71
    .line 72
    new-instance v1, Ljava/util/ArrayList;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/LinkedHashMap;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/util/AbstractMap;->size()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    .line 82
    .line 83
    iget-object v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->g:Ljava/util/LinkedHashMap;

    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-eqz v4, :cond_3

    .line 98
    .line 99
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    check-cast v4, Ljava/util/Map$Entry;

    .line 104
    .line 105
    add-int/lit8 v5, v2, 0x1

    .line 106
    .line 107
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    check-cast v6, Landroid/os/Parcelable;

    .line 112
    .line 113
    aput-object v6, v0, v2

    .line 114
    .line 115
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Ljava/lang/Integer;

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move v2, v5

    .line 125
    goto :goto_1

    .line 126
    :cond_3
    const-string v2, "accountsList"

    .line 127
    .line 128
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 129
    .line 130
    .line 131
    const-string v0, "visibilityList"

    .line 132
    .line 133
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/os/Bundle;

    .line 6
    .line 7
    const-string v0, "intent"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/content/Intent;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    iput v0, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->i:I

    .line 19
    .line 20
    invoke-static {}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->get()Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->n:Ljava/lang/String;

    .line 25
    .line 26
    iget v3, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->m:I

    .line 27
    .line 28
    invoke-virtual {v1, v2, v3, v2}, Lcom/xinzhu/overmind/server/accounts/MindAccountManagerService;->getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/xinzhu/overmind/client/frameworks/accounts/ChooseTypeAndAccountActivity;->j:[Landroid/os/Parcelable;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const v2, -0x10000001

    .line 39
    .line 40
    .line 41
    and-int/2addr v1, v2

    .line 42
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catch_0
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v0, "errorMessage"

    .line 55
    .line 56
    const-string v1, "error communicating with server"

    .line 57
    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Landroid/content/Intent;

    .line 62
    .line 63
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const/4 v0, -0x1

    .line 71
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :catch_1
    const/4 p1, 0x0

    .line 79
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 83
    .line 84
    .line 85
    return-void
.end method
