.class public Lcom/xinzhu/overmind/server/pm/MindPackage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/pm/MindPackage$b;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$g;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$ProviderIntentInfo;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$h;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$d;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$e;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$f;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$SigningDetails;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$c;,
        Lcom/xinzhu/overmind/server/pm/MindPackage$IntentInfo;
    }
.end annotation


# static fields
.field private static final A:I = 0x1

.field static final B:Ljava/lang/String; = "android.test.base"

.field static final C:Ljava/lang/String; = "android.test.mock"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage;",
            ">;"
        }
    .end annotation
.end field

.field static final D:Ljava/lang/String; = "android.test.runner"

.field static final E:Ljava/lang/String; = "org.apache.http.legacy"

.field private static final z:Ljava/lang/String; = "MindPackage"


# instance fields
.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$g;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$h;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$d;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$e;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackage$f;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public j:[Landroid/content/pm/Signature;

.field public k:Landroid/content/pm/PackageParser$SigningDetails;

.field public l:Landroid/os/Bundle;

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Ljava/lang/String;

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:I

.field public s:Landroid/content/pm/ApplicationInfo;

.field public t:Ljava/lang/String;

.field public u:[Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:I

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackage$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackage$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->i:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->x:Ljava/util/ArrayList;

    .line 11
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->y:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    .line 13
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    .line 14
    new-instance v3, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    invoke-direct {v3, v2}, Lcom/xinzhu/overmind/server/pm/MindPackage$b;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 15
    iget-object v2, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;

    .line 16
    iput-object v3, v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    goto :goto_1

    .line 17
    :cond_0
    iput-object p0, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 18
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    .line 20
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    .line 21
    new-instance v3, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    invoke-direct {v3, v2}, Lcom/xinzhu/overmind/server/pm/MindPackage$b;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 22
    iget-object v2, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;

    .line 23
    iput-object v3, v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    goto :goto_3

    .line 24
    :cond_2
    iput-object p0, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 25
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 26
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    .line 27
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .line 28
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 29
    iget-object v4, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    aget-object v3, v3, v1

    iput-object v3, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 30
    new-instance v3, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    invoke-direct {v3, v2}, Lcom/xinzhu/overmind/server/pm/MindPackage$g;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 31
    iget-object v2, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ProviderIntentInfo;

    .line 32
    iput-object v3, v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ProviderIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    goto :goto_5

    .line 33
    :cond_4
    iput-object p0, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 34
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 35
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    .line 36
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Service;

    .line 37
    new-instance v2, Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    invoke-direct {v2, v1}, Lcom/xinzhu/overmind/server/pm/MindPackage$h;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 38
    iget-object v1, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

    .line 39
    iput-object v2, v3, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    goto :goto_7

    .line 40
    :cond_6
    iput-object p0, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 41
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 42
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    .line 43
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Instrumentation;

    .line 44
    new-instance v2, Lcom/xinzhu/overmind/server/pm/MindPackage$d;

    invoke-direct {v2, v1}, Lcom/xinzhu/overmind/server/pm/MindPackage$d;-><init>(Landroid/content/pm/PackageParser$Instrumentation;)V

    .line 45
    iput-object p0, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 46
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 47
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    .line 48
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Permission;

    .line 49
    new-instance v2, Lcom/xinzhu/overmind/server/pm/MindPackage$e;

    invoke-direct {v2, v1}, Lcom/xinzhu/overmind/server/pm/MindPackage$e;-><init>(Landroid/content/pm/PackageParser$Permission;)V

    .line 50
    iput-object p0, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 51
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 52
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    .line 53
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$PermissionGroup;

    .line 54
    new-instance v2, Lcom/xinzhu/overmind/server/pm/MindPackage$f;

    invoke-direct {v2, v1}, Lcom/xinzhu/overmind/server/pm/MindPackage$f;-><init>(Landroid/content/pm/PackageParser$PermissionGroup;)V

    .line 55
    iput-object p0, v2, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 56
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 57
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->i:Ljava/util/ArrayList;

    .line 58
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 59
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->k:Landroid/content/pm/PackageParser$SigningDetails;

    .line 60
    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->j:[Landroid/content/pm/Signature;

    goto :goto_b

    .line 61
    :cond_b
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->j:[Landroid/content/pm/Signature;

    .line 62
    :goto_b
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->l:Landroid/os/Bundle;

    .line 63
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 64
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->n:I

    .line 65
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->o:Ljava/lang/String;

    .line 66
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->p:Ljava/util/ArrayList;

    .line 67
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->q:Ljava/util/ArrayList;

    .line 68
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->r:I

    .line 69
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 70
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->t:Ljava/lang/String;

    .line 71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_c

    .line 72
    invoke-static {v0}, Lcom/xinzhu/overmind/server/pm/h;->a(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->u:[Ljava/lang/String;

    .line 73
    :cond_c
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    .line 74
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->w:I

    .line 75
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->x:Ljava/util/ArrayList;

    .line 76
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->y:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->i:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->x:Ljava/util/ArrayList;

    .line 87
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->y:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    .line 90
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$b;-><init>(Landroid/os/Parcel;)V

    .line 91
    iget-object v3, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;

    .line 92
    iput-object v0, v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    goto :goto_1

    .line 93
    :cond_0
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 94
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_3

    .line 97
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$b;-><init>(Landroid/os/Parcel;)V

    .line 98
    iget-object v3, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;

    .line 99
    iput-object v0, v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ActivityIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    goto :goto_3

    .line 100
    :cond_2
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 101
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_2

    .line 102
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_5

    .line 104
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$g;-><init>(Landroid/os/Parcel;)V

    .line 105
    iget-object v3, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 106
    iget-object v4, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    aget-object v3, v3, v1

    iput-object v3, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 107
    iget-object v3, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ProviderIntentInfo;

    .line 108
    iput-object v0, v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ProviderIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    goto :goto_5

    .line 109
    :cond_4
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 110
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_4

    .line 111
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    :goto_6
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_7

    .line 113
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$h;-><init>(Landroid/os/Parcel;)V

    .line 114
    iget-object v3, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;

    .line 115
    iput-object v0, v4, Lcom/xinzhu/overmind/server/pm/MindPackage$ServiceIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    goto :goto_7

    .line 116
    :cond_6
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 117
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_6

    .line 118
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    :goto_8
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_8

    .line 120
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackage$d;

    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$d;-><init>(Landroid/os/Parcel;)V

    .line 121
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 122
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_8

    .line 123
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    :goto_9
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_9

    .line 125
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackage$e;

    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$e;-><init>(Landroid/os/Parcel;)V

    .line 126
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 127
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_9

    .line 128
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    :goto_a
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_a

    .line 130
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackage$f;

    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackage$f;-><init>(Landroid/os/Parcel;)V

    .line 131
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 132
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_a

    .line 133
    :cond_a
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 134
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 135
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    const-string v0, "MindPackage$SigningDetails"

    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 139
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackage;->z:Ljava/lang/String;

    const-string v2, "Legacy signing details found, solve it"

    invoke-static {v0, v2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-class v0, Lcom/xinzhu/overmind/server/pm/MindPackage$SigningDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xinzhu/overmind/server/pm/MindPackage$SigningDetails;

    .line 141
    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackage$SigningDetails;->b:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Lcom/xinzhu/haunted/android/content/pm/n$a;->n([Landroid/content/pm/Signature;I)Lcom/xinzhu/haunted/android/content/pm/n$a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/xinzhu/haunted/android/content/pm/n$a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->k:Landroid/content/pm/PackageParser$SigningDetails;

    goto :goto_b

    .line 142
    :cond_b
    const-class v0, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->k:Landroid/content/pm/PackageParser$SigningDetails;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    :cond_c
    :goto_b
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->j:[Landroid/content/pm/Signature;

    .line 145
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->l:Landroid/os/Bundle;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->n:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->o:Ljava/lang/String;

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->p:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->q:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->r:I

    .line 152
    const-class v0, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->t:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->w:I

    .line 156
    sget-object v0, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->x:Ljava/util/ArrayList;

    .line 157
    sget-object v0, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->y:Ljava/util/ArrayList;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 159
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appendVersion"

    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->u:[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_d
    return-void

    .line 163
    :catchall_1
    :cond_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->p:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->q:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 21
    :goto_1
    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 28
    .line 29
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    .line 40
    .line 41
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    .line 43
    .line 44
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    .line 54
    .line 55
    :goto_1
    add-int/lit8 v3, v2, -0x1

    .line 56
    .line 57
    if-lez v2, :cond_0

    .line 58
    .line 59
    iget-object v2, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Landroid/os/Parcelable;

    .line 66
    .line 67
    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 68
    .line 69
    .line 70
    move v2, v3

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->c:Ljava/util/ArrayList;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$b;

    .line 102
    .line 103
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->c:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    .line 109
    .line 110
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 111
    .line 112
    .line 113
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$b;->f:Landroid/content/pm/ActivityInfo;

    .line 114
    .line 115
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 116
    .line 117
    .line 118
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 119
    .line 120
    if-eqz v3, :cond_4

    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    .line 128
    .line 129
    :goto_3
    add-int/lit8 v4, v3, -0x1

    .line 130
    .line 131
    if-lez v3, :cond_3

    .line 132
    .line 133
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    check-cast v3, Landroid/os/Parcelable;

    .line 140
    .line 141
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 142
    .line 143
    .line 144
    move v3, v4

    .line 145
    goto :goto_3

    .line 146
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    .line 158
    .line 159
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->d:Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_8

    .line 170
    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$g;

    .line 176
    .line 177
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->c:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    .line 183
    .line 184
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 185
    .line 186
    .line 187
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$g;->f:Landroid/content/pm/ProviderInfo;

    .line 188
    .line 189
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 190
    .line 191
    .line 192
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 193
    .line 194
    if-eqz v3, :cond_7

    .line 195
    .line 196
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    .line 202
    .line 203
    :goto_5
    add-int/lit8 v4, v3, -0x1

    .line 204
    .line 205
    if-lez v3, :cond_6

    .line 206
    .line 207
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    check-cast v3, Landroid/os/Parcelable;

    .line 214
    .line 215
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 216
    .line 217
    .line 218
    move v3, v4

    .line 219
    goto :goto_5

    .line 220
    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    .line 222
    .line 223
    goto :goto_4

    .line 224
    :cond_8
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->e:Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    :cond_9
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_b

    .line 244
    .line 245
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$h;

    .line 250
    .line 251
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->c:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    .line 257
    .line 258
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 259
    .line 260
    .line 261
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$h;->f:Landroid/content/pm/ServiceInfo;

    .line 262
    .line 263
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 264
    .line 265
    .line 266
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 267
    .line 268
    if-eqz v3, :cond_a

    .line 269
    .line 270
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    .line 276
    .line 277
    :goto_7
    add-int/lit8 v4, v3, -0x1

    .line 278
    .line 279
    if-lez v3, :cond_9

    .line 280
    .line 281
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    check-cast v3, Landroid/os/Parcelable;

    .line 288
    .line 289
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 290
    .line 291
    .line 292
    move v3, v4

    .line 293
    goto :goto_7

    .line 294
    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_b
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    .line 299
    .line 300
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    .line 306
    .line 307
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->f:Ljava/util/ArrayList;

    .line 308
    .line 309
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    :cond_c
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-eqz v1, :cond_e

    .line 318
    .line 319
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$d;

    .line 324
    .line 325
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->c:Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    .line 331
    .line 332
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 333
    .line 334
    .line 335
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$d;->f:Landroid/content/pm/InstrumentationInfo;

    .line 336
    .line 337
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 338
    .line 339
    .line 340
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 341
    .line 342
    if-eqz v3, :cond_d

    .line 343
    .line 344
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 345
    .line 346
    .line 347
    move-result v3

    .line 348
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    .line 350
    .line 351
    :goto_9
    add-int/lit8 v4, v3, -0x1

    .line 352
    .line 353
    if-lez v3, :cond_c

    .line 354
    .line 355
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 356
    .line 357
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v3

    .line 361
    check-cast v3, Landroid/os/Parcelable;

    .line 362
    .line 363
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 364
    .line 365
    .line 366
    move v3, v4

    .line 367
    goto :goto_9

    .line 368
    :cond_d
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    .line 370
    .line 371
    goto :goto_8

    .line 372
    :cond_e
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    .line 373
    .line 374
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    .line 380
    .line 381
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->g:Ljava/util/ArrayList;

    .line 382
    .line 383
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    :cond_f
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    if-eqz v1, :cond_11

    .line 392
    .line 393
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 394
    .line 395
    .line 396
    move-result-object v1

    .line 397
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$e;

    .line 398
    .line 399
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->c:Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    .line 405
    .line 406
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 407
    .line 408
    .line 409
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$e;->f:Landroid/content/pm/PermissionInfo;

    .line 410
    .line 411
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 412
    .line 413
    .line 414
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 415
    .line 416
    if-eqz v3, :cond_10

    .line 417
    .line 418
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 419
    .line 420
    .line 421
    move-result v3

    .line 422
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    .line 424
    .line 425
    :goto_b
    add-int/lit8 v4, v3, -0x1

    .line 426
    .line 427
    if-lez v3, :cond_f

    .line 428
    .line 429
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 430
    .line 431
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 432
    .line 433
    .line 434
    move-result-object v3

    .line 435
    check-cast v3, Landroid/os/Parcelable;

    .line 436
    .line 437
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 438
    .line 439
    .line 440
    move v3, v4

    .line 441
    goto :goto_b

    .line 442
    :cond_10
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    .line 444
    .line 445
    goto :goto_a

    .line 446
    :cond_11
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    .line 447
    .line 448
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 449
    .line 450
    .line 451
    move-result v0

    .line 452
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    .line 454
    .line 455
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->h:Ljava/util/ArrayList;

    .line 456
    .line 457
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    :cond_12
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    if-eqz v1, :cond_14

    .line 466
    .line 467
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v1

    .line 471
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackage$f;

    .line 472
    .line 473
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->c:Ljava/lang/String;

    .line 474
    .line 475
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->d:Landroid/os/Bundle;

    .line 479
    .line 480
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 481
    .line 482
    .line 483
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$f;->f:Landroid/content/pm/PermissionGroupInfo;

    .line 484
    .line 485
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 486
    .line 487
    .line 488
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 489
    .line 490
    if-eqz v3, :cond_13

    .line 491
    .line 492
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 493
    .line 494
    .line 495
    move-result v3

    .line 496
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    .line 498
    .line 499
    :goto_d
    add-int/lit8 v4, v3, -0x1

    .line 500
    .line 501
    if-lez v3, :cond_12

    .line 502
    .line 503
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackage$c;->b:Ljava/util/ArrayList;

    .line 504
    .line 505
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v3

    .line 509
    check-cast v3, Landroid/os/Parcelable;

    .line 510
    .line 511
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 512
    .line 513
    .line 514
    move v3, v4

    .line 515
    goto :goto_d

    .line 516
    :cond_13
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    .line 518
    .line 519
    goto :goto_c

    .line 520
    :cond_14
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->i:Ljava/util/ArrayList;

    .line 521
    .line 522
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 523
    .line 524
    .line 525
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    if-eqz v0, :cond_15

    .line 530
    .line 531
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->k:Landroid/content/pm/PackageParser$SigningDetails;

    .line 532
    .line 533
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 534
    .line 535
    .line 536
    :cond_15
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->j:[Landroid/content/pm/Signature;

    .line 537
    .line 538
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 539
    .line 540
    .line 541
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->l:Landroid/os/Bundle;

    .line 542
    .line 543
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 544
    .line 545
    .line 546
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 547
    .line 548
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    iget v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->n:I

    .line 552
    .line 553
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    .line 555
    .line 556
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->o:Ljava/lang/String;

    .line 557
    .line 558
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->p:Ljava/util/ArrayList;

    .line 562
    .line 563
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 564
    .line 565
    .line 566
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->q:Ljava/util/ArrayList;

    .line 567
    .line 568
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 569
    .line 570
    .line 571
    iget v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->r:I

    .line 572
    .line 573
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    .line 575
    .line 576
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 577
    .line 578
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 579
    .line 580
    .line 581
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->t:Ljava/lang/String;

    .line 582
    .line 583
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    .line 587
    .line 588
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    iget p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->w:I

    .line 592
    .line 593
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    .line 595
    .line 596
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->x:Ljava/util/ArrayList;

    .line 597
    .line 598
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 599
    .line 600
    .line 601
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->y:Ljava/util/ArrayList;

    .line 602
    .line 603
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 604
    .line 605
    .line 606
    const-string p2, "appendVersion"

    .line 607
    .line 608
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 609
    .line 610
    .line 611
    const/4 p2, 0x1

    .line 612
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    .line 614
    .line 615
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackage;->u:[Ljava/lang/String;

    .line 616
    .line 617
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    return-void
.end method
