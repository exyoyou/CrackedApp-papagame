.class final Lcom/xinzhu/overmind/server/pm/b$d;
.super Lcom/xinzhu/overmind/server/pm/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/pm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xinzhu/overmind/server/pm/g<",
        "Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final m:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$h;",
            ">;"
        }
    .end annotation
.end field

.field private n:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/pm/g;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/b$d;->m:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xinzhu/overmind/server/pm/b$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/pm/b$d;-><init>()V

    return-void
.end method

.method static synthetic D(Lcom/xinzhu/overmind/server/pm/b$d;)Landroid/util/ArrayMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/xinzhu/overmind/server/pm/b$d;->m:Landroid/util/ArrayMap;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method protected A(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/b;->h:Ljava/util/Comparator;

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method E(Lcom/xinzhu/overmind/server/pm/MindPackage$h;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/b$d;->m:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a()Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_0

    .line 18
    .line 19
    iget-object v2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lcom/xinzhu/overmind/server/pm/g;->b(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method protected F(Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;)Z
    .locals 0

    .line 1
    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method protected G(I)[Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;
    .locals 0

    .line 1
    new-array p1, p1, [Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

    .line 2
    .line 3
    return-object p1
.end method

.method protected H(Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    .line 2
    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$h;->f:Landroid/content/pm/ServiceInfo;

    .line 8
    .line 9
    invoke-virtual {v1, v2, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->isComponentEnabled(Landroid/content/pm/ComponentInfo;I)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-object v2

    .line 17
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v3, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$h;->f:Landroid/content/pm/ServiceInfo;

    .line 22
    .line 23
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->getMindPackageSettingsInternal(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_1
    iget v2, p0, Lcom/xinzhu/overmind/server/pm/b$d;->n:I

    .line 33
    .line 34
    invoke-virtual {v1, p3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->C(I)Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v2, v1, p3}, Lcom/xinzhu/overmind/server/pm/q;->l(Lcom/xinzhu/overmind/server/pm/MindPackage$h;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ServiceInfo;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    new-instance v1, Landroid/content/pm/ResolveInfo;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 48
    .line 49
    iget p3, p0, Lcom/xinzhu/overmind/server/pm/b$d;->n:I

    .line 50
    .line 51
    and-int/lit8 p3, p3, 0x40

    .line 52
    .line 53
    if-eqz p3, :cond_2

    .line 54
    .line 55
    iget-object p3, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Landroid/content/IntentFilter;

    .line 56
    .line 57
    iput-object p3, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 58
    .line 59
    :cond_2
    iget-object p3, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->b:Landroid/content/IntentFilter;

    .line 60
    .line 61
    invoke-virtual {p3}, Landroid/content/IntentFilter;->getPriority()I

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    iput p3, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 66
    .line 67
    iget-object p3, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 68
    .line 69
    iget p3, p3, Lcom/xinzhu/overmind/server/pm/MindPackage;->n:I

    .line 70
    .line 71
    iput p3, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 72
    .line 73
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 74
    .line 75
    iget-boolean p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->c:Z

    .line 76
    .line 77
    iput-boolean p2, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 78
    .line 79
    iget p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->d:I

    .line 80
    .line 81
    iput p2, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 82
    .line 83
    iget-object p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->e:Ljava/lang/String;

    .line 84
    .line 85
    iput-object p2, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 86
    .line 87
    iget p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;->f:I

    .line 88
    .line 89
    iput p1, v1, Landroid/content/pm/ResolveInfo;->icon:I

    .line 90
    .line 91
    return-object v1
.end method

.method I(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iput p3, p0, Lcom/xinzhu/overmind/server/pm/b$d;->n:I

    .line 2
    .line 3
    const/high16 v0, 0x10000

    .line 4
    .line 5
    and-int/2addr p3, v0

    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    const/4 p3, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p3, 0x0

    .line 11
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/g;->t(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method J(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$h;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p4, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iput p3, p0, Lcom/xinzhu/overmind/server/pm/b$d;->n:I

    .line 6
    .line 7
    const/high16 v0, 0x10000

    .line 8
    .line 9
    and-int/2addr p3, v0

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p3, :cond_1

    .line 12
    .line 13
    const/4 p3, 0x1

    .line 14
    const/4 v4, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v4, 0x0

    .line 17
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result p3

    .line 21
    new-instance v5, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    :goto_1
    if-ge v0, p3, :cond_3

    .line 27
    .line 28
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-lez v2, :cond_2

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    new-array v2, v2, [Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    move-object v1, p0

    .line 60
    move-object v2, p1

    .line 61
    move-object v3, p2

    .line 62
    move v6, p5

    .line 63
    invoke-super/range {v1 .. v6}, Lcom/xinzhu/overmind/server/pm/g;->u(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1
.end method

.method K(Lcom/xinzhu/overmind/server/pm/MindPackage$h;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/b$d;->m:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a()Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_0

    .line 18
    .line 19
    iget-object v2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Lcom/xinzhu/overmind/server/pm/g;->x(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)V

    .line 28
    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method protected bridge synthetic q(Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;)Z
    .locals 0

    .line 1
    check-cast p2, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/b$d;->F(Ljava/lang/String;Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected bridge synthetic r(I)[Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/pm/b$d;->G(I)[Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected bridge synthetic s(Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;II)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/xinzhu/overmind/server/pm/b$d;->H(Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;II)Landroid/content/pm/ResolveInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public t(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    const/high16 v0, 0x10000

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :goto_0
    iput v0, p0, Lcom/xinzhu/overmind/server/pm/b$d;->n:I

    .line 8
    .line 9
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/pm/g;->t(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
