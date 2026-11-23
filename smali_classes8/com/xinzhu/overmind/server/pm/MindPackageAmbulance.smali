.class public Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;,
        Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ActivityIntentInfo;,
        Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$g;,
        Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ProviderIntentInfo;,
        Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$h;,
        Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ServiceIntentInfo;,
        Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$d;,
        Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$e;,
        Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$f;,
        Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$SigningDetails;,
        Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;,
        Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$IntentInfo;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "MindPackageAmbulance"

.field private static final B:I = 0x1

.field static final C:Ljava/lang/String; = "android.test.base"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;",
            ">;"
        }
    .end annotation
.end field

.field static final D:Ljava/lang/String; = "android.test.mock"

.field static final E:Ljava/lang/String; = "android.test.runner"

.field static final F:Ljava/lang/String; = "org.apache.http.legacy"


# instance fields
.field private b:Z

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$g;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$h;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$d;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$e;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$f;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:[Landroid/content/pm/Signature;

.field public l:Landroid/content/pm/PackageParser$SigningDetails;

.field public m:Landroid/os/Bundle;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:Ljava/lang/String;

.field public q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:I

.field public t:Landroid/content/pm/ApplicationInfo;

.field public u:Ljava/lang/String;

.field public v:[Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:I

.field public y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ConfigurationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public z:Ljava/util/ArrayList;
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
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->b:Z

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->c:Ljava/util/ArrayList;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->d:Ljava/util/ArrayList;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->e:Ljava/util/ArrayList;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->f:Ljava/util/ArrayList;

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->g:Ljava/util/ArrayList;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->h:Ljava/util/ArrayList;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->i:Ljava/util/ArrayList;

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->y:Ljava/util/ArrayList;

    .line 12
    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->z:Ljava/util/ArrayList;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->c:Ljava/util/ArrayList;

    .line 14
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    .line 15
    new-instance v3, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;

    invoke-direct {v3, v2}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 16
    iget-object v2, v3, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ActivityIntentInfo;

    .line 17
    iput-object v3, v4, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ActivityIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;

    goto :goto_1

    .line 18
    :cond_0
    iput-object p0, v3, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 19
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->d:Ljava/util/ArrayList;

    .line 21
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    .line 22
    new-instance v3, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;

    invoke-direct {v3, v2}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 23
    iget-object v2, v3, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ActivityIntentInfo;

    .line 24
    iput-object v3, v4, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ActivityIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;

    goto :goto_3

    .line 25
    :cond_2
    iput-object p0, v3, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 26
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 27
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->e:Ljava/util/ArrayList;

    .line 28
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Provider;

    .line 29
    iget-object v3, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 30
    iget-object v4, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    aget-object v3, v3, v0

    iput-object v3, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 31
    new-instance v3, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$g;

    invoke-direct {v3, v2}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$g;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 32
    iget-object v2, v3, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ProviderIntentInfo;

    .line 33
    iput-object v3, v4, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ProviderIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$g;

    goto :goto_5

    .line 34
    :cond_4
    iput-object p0, v3, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 35
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 36
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->f:Ljava/util/ArrayList;

    .line 37
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

    .line 38
    new-instance v2, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$h;

    invoke-direct {v2, v1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$h;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 39
    iget-object v1, v2, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ServiceIntentInfo;

    .line 40
    iput-object v2, v3, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ServiceIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$h;

    goto :goto_7

    .line 41
    :cond_6
    iput-object p0, v2, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 42
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 43
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->g:Ljava/util/ArrayList;

    .line 44
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

    .line 45
    new-instance v2, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$d;

    invoke-direct {v2, v1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$d;-><init>(Landroid/content/pm/PackageParser$Instrumentation;)V

    .line 46
    iput-object p0, v2, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 47
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 48
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->h:Ljava/util/ArrayList;

    .line 49
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

    .line 50
    new-instance v2, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$e;

    invoke-direct {v2, v1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$e;-><init>(Landroid/content/pm/PackageParser$Permission;)V

    .line 51
    iput-object p0, v2, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 52
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 53
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->i:Ljava/util/ArrayList;

    .line 54
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

    .line 55
    new-instance v2, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$f;

    invoke-direct {v2, v1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$f;-><init>(Landroid/content/pm/PackageParser$PermissionGroup;)V

    .line 56
    iput-object p0, v2, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 57
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 58
    :cond_a
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->j:Ljava/util/ArrayList;

    .line 59
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 60
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->l:Landroid/content/pm/PackageParser$SigningDetails;

    .line 61
    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->k:[Landroid/content/pm/Signature;

    goto :goto_b

    .line 62
    :cond_b
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->k:[Landroid/content/pm/Signature;

    .line 63
    :goto_b
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->m:Landroid/os/Bundle;

    .line 64
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->n:Ljava/lang/String;

    .line 65
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->o:I

    .line 66
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->p:Ljava/lang/String;

    .line 67
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->q:Ljava/util/ArrayList;

    .line 68
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->r:Ljava/util/ArrayList;

    .line 69
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->s:I

    .line 70
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->t:Landroid/content/pm/ApplicationInfo;

    .line 71
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->u:Ljava/lang/String;

    .line 72
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_c

    .line 73
    invoke-static {v0}, Lcom/xinzhu/overmind/server/pm/h;->a(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->v:[Ljava/lang/String;

    .line 74
    :cond_c
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->w:Ljava/lang/String;

    .line 75
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->x:I

    .line 76
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->y:Ljava/util/ArrayList;

    .line 77
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->z:Ljava/util/ArrayList;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->b:Z

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->c:Ljava/util/ArrayList;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->d:Ljava/util/ArrayList;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->e:Ljava/util/ArrayList;

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->f:Ljava/util/ArrayList;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->g:Ljava/util/ArrayList;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->h:Ljava/util/ArrayList;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->i:Ljava/util/ArrayList;

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 88
    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->y:Ljava/util/ArrayList;

    .line 89
    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->z:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->c:Ljava/util/ArrayList;

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    .line 93
    new-instance v2, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;

    invoke-direct {v2, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;-><init>(Landroid/os/Parcel;)V

    .line 94
    iget-object v4, v2, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ActivityIntentInfo;

    .line 95
    iput-object v2, v5, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ActivityIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;

    goto :goto_1

    .line 96
    :cond_0
    iput-object p0, v2, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 97
    iget-object v4, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move v2, v3

    goto :goto_0

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->d:Ljava/util/ArrayList;

    :goto_2
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_3

    .line 100
    new-instance v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;

    invoke-direct {v1, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;-><init>(Landroid/os/Parcel;)V

    .line 101
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ActivityIntentInfo;

    .line 102
    iput-object v1, v4, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ActivityIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;

    goto :goto_3

    .line 103
    :cond_2
    iput-object p0, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 104
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_2

    .line 105
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->e:Ljava/util/ArrayList;

    :goto_4
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_5

    .line 107
    new-instance v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$g;

    invoke-direct {v1, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$g;-><init>(Landroid/os/Parcel;)V

    .line 108
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$g;->f:Landroid/content/pm/ProviderInfo;

    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 109
    iget-object v4, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$g;->f:Landroid/content/pm/ProviderInfo;

    aget-object v3, v3, v0

    iput-object v3, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 110
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ProviderIntentInfo;

    .line 111
    iput-object v1, v4, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ProviderIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$g;

    goto :goto_5

    .line 112
    :cond_4
    iput-object p0, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 113
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_4

    .line 114
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->f:Ljava/util/ArrayList;

    :goto_6
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_7

    .line 116
    new-instance v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$h;

    invoke-direct {v1, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$h;-><init>(Landroid/os/Parcel;)V

    .line 117
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ServiceIntentInfo;

    .line 118
    iput-object v1, v4, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ServiceIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$h;

    goto :goto_7

    .line 119
    :cond_6
    iput-object p0, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 120
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_6

    .line 121
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->g:Ljava/util/ArrayList;

    :goto_8
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_8

    .line 123
    new-instance v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$d;

    invoke-direct {v1, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$d;-><init>(Landroid/os/Parcel;)V

    .line 124
    iput-object p0, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 125
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_8

    .line 126
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->h:Ljava/util/ArrayList;

    :goto_9
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_9

    .line 128
    new-instance v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$e;

    invoke-direct {v1, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$e;-><init>(Landroid/os/Parcel;)V

    .line 129
    iput-object p0, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 130
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_9

    .line 131
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->i:Ljava/util/ArrayList;

    :goto_a
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_a

    .line 133
    new-instance v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$f;

    invoke-direct {v1, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$f;-><init>(Landroid/os/Parcel;)V

    .line 134
    iput-object p0, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 135
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_a

    .line 136
    :cond_a
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 137
    sget-object v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->A:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permissions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 139
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "what class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    const-string v4, "MindPackage$SigningDetails"

    .line 143
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v2, "Legacy signing details found, solve it"

    .line 144
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-class v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$SigningDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$SigningDetails;

    .line 146
    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$SigningDetails;->b:[Landroid/content/pm/Signature;

    invoke-static {v1, v0}, Lcom/xinzhu/haunted/android/content/pm/n$a;->n([Landroid/content/pm/Signature;I)Lcom/xinzhu/haunted/android/content/pm/n$a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/xinzhu/haunted/android/content/pm/n$a;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->l:Landroid/content/pm/PackageParser$SigningDetails;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_b

    .line 147
    :cond_b
    :try_start_2
    invoke-static {p1}, Lsa/g0;->a(Landroid/os/Parcel;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->l:Landroid/content/pm/PackageParser$SigningDetails;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trying to restore signing details corrupt "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->l:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v0

    .line 149
    :try_start_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->A:Ljava/lang/String;

    const-string v1, "fallback to system signingdetails read"

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-class v0, Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->l:Landroid/content/pm/PackageParser$SigningDetails;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    :cond_c
    :goto_b
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/Signature;

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->k:[Landroid/content/pm/Signature;

    .line 155
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->m:Landroid/os/Bundle;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->n:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->o:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->p:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->q:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->r:Ljava/util/ArrayList;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->s:I

    .line 162
    :try_start_4
    invoke-static {p1}, Lsa/q;->a(Landroid/os/Parcel;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->t:Landroid/content/pm/ApplicationInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_c

    :catchall_2
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->u:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->w:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->x:I

    .line 167
    sget-object v0, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->y:Ljava/util/ArrayList;

    .line 168
    sget-object v0, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->z:Ljava/util/ArrayList;

    .line 169
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check san "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->t:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 171
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "appendVersion"

    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->v:[Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_d
    return-void

    .line 175
    :catchall_3
    :cond_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 176
    :catchall_4
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->A:Ljava/lang/String;

    const-string v2, "MindPackage run into ambulance routine"

    invoke-static {v0, v2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 178
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->q:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->r:Ljava/util/ArrayList;

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
.method protected a(Landroid/os/Parcel;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->c:Ljava/util/ArrayList;

    .line 11
    .line 12
    sget-object v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->A:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "how much act "

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .line 35
    .line 36
    if-lez v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;-><init>(Landroid/os/Parcel;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ActivityIntentInfo;

    .line 60
    .line 61
    iput-object v0, v3, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ActivityIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 65
    .line 66
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->c:Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move v0, v1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->d:Ljava/util/ArrayList;

    .line 83
    .line 84
    :goto_2
    add-int/lit8 v1, v0, -0x1

    .line 85
    .line 86
    if-lez v0, :cond_3

    .line 87
    .line 88
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;

    .line 89
    .line 90
    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;-><init>(Landroid/os/Parcel;)V

    .line 91
    .line 92
    .line 93
    iget-object v2, v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    if-eqz v3, :cond_2

    .line 104
    .line 105
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ActivityIntentInfo;

    .line 110
    .line 111
    iput-object v0, v3, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ActivityIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_2
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 115
    .line 116
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->d:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move v0, v1

    .line 122
    goto :goto_2

    .line 123
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .line 131
    .line 132
    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->e:Ljava/util/ArrayList;

    .line 133
    .line 134
    :goto_4
    add-int/lit8 v1, v0, -0x1

    .line 135
    .line 136
    const/4 v2, 0x0

    .line 137
    if-lez v0, :cond_5

    .line 138
    .line 139
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$g;

    .line 140
    .line 141
    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$g;-><init>(Landroid/os/Parcel;)V

    .line 142
    .line 143
    .line 144
    iget-object v3, v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$g;->f:Landroid/content/pm/ProviderInfo;

    .line 145
    .line 146
    iget-object v3, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 147
    .line 148
    const-string v4, ";"

    .line 149
    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    iget-object v4, v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$g;->f:Landroid/content/pm/ProviderInfo;

    .line 155
    .line 156
    aget-object v2, v3, v2

    .line 157
    .line 158
    iput-object v2, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 159
    .line 160
    iget-object v2, v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

    .line 161
    .line 162
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eqz v3, :cond_4

    .line 171
    .line 172
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    check-cast v3, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ProviderIntentInfo;

    .line 177
    .line 178
    iput-object v0, v3, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ProviderIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$g;

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_4
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 182
    .line 183
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->e:Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move v0, v1

    .line 189
    goto :goto_4

    .line 190
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    .line 198
    .line 199
    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->f:Ljava/util/ArrayList;

    .line 200
    .line 201
    :goto_6
    add-int/lit8 v1, v0, -0x1

    .line 202
    .line 203
    if-lez v0, :cond_7

    .line 204
    .line 205
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$h;

    .line 206
    .line 207
    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$h;-><init>(Landroid/os/Parcel;)V

    .line 208
    .line 209
    .line 210
    iget-object v3, v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

    .line 211
    .line 212
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 213
    .line 214
    .line 215
    move-result-object v3

    .line 216
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 217
    .line 218
    .line 219
    move-result v4

    .line 220
    if-eqz v4, :cond_6

    .line 221
    .line 222
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    check-cast v4, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ServiceIntentInfo;

    .line 227
    .line 228
    iput-object v0, v4, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$ServiceIntentInfo;->i:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$h;

    .line 229
    .line 230
    goto :goto_7

    .line 231
    :cond_6
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 232
    .line 233
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->f:Ljava/util/ArrayList;

    .line 234
    .line 235
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .line 237
    .line 238
    move v0, v1

    .line 239
    goto :goto_6

    .line 240
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    .line 245
    .line 246
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    .line 248
    .line 249
    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->g:Ljava/util/ArrayList;

    .line 250
    .line 251
    :goto_8
    add-int/lit8 v1, v0, -0x1

    .line 252
    .line 253
    if-lez v0, :cond_8

    .line 254
    .line 255
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$d;

    .line 256
    .line 257
    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$d;-><init>(Landroid/os/Parcel;)V

    .line 258
    .line 259
    .line 260
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 261
    .line 262
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->g:Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move v0, v1

    .line 268
    goto :goto_8

    .line 269
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 276
    .line 277
    .line 278
    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->h:Ljava/util/ArrayList;

    .line 279
    .line 280
    :goto_9
    add-int/lit8 v1, v0, -0x1

    .line 281
    .line 282
    if-lez v0, :cond_9

    .line 283
    .line 284
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$e;

    .line 285
    .line 286
    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$e;-><init>(Landroid/os/Parcel;)V

    .line 287
    .line 288
    .line 289
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 290
    .line 291
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->h:Ljava/util/ArrayList;

    .line 292
    .line 293
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move v0, v1

    .line 297
    goto :goto_9

    .line 298
    :cond_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    new-instance v1, Ljava/util/ArrayList;

    .line 303
    .line 304
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    .line 306
    .line 307
    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->i:Ljava/util/ArrayList;

    .line 308
    .line 309
    :goto_a
    add-int/lit8 v1, v0, -0x1

    .line 310
    .line 311
    if-lez v0, :cond_a

    .line 312
    .line 313
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$f;

    .line 314
    .line 315
    invoke-direct {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$f;-><init>(Landroid/os/Parcel;)V

    .line 316
    .line 317
    .line 318
    iput-object p0, v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->a:Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;

    .line 319
    .line 320
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->i:Ljava/util/ArrayList;

    .line 321
    .line 322
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move v0, v1

    .line 326
    goto :goto_a

    .line 327
    :cond_a
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->j:Ljava/util/ArrayList;

    .line 328
    .line 329
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 330
    .line 331
    .line 332
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->A:Ljava/lang/String;

    .line 333
    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    const-string v3, "permissions "

    .line 340
    .line 341
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->j:Ljava/util/ArrayList;

    .line 345
    .line 346
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->v()Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    if-eqz v1, :cond_c

    .line 361
    .line 362
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v3

    .line 370
    new-instance v4, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    .line 375
    const-string v5, "what class "

    .line 376
    .line 377
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 384
    .line 385
    .line 386
    move-result-object v4

    .line 387
    invoke-static {v0, v4}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .line 389
    .line 390
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 391
    .line 392
    .line 393
    const-string v1, "MindPackage$SigningDetails"

    .line 394
    .line 395
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 396
    .line 397
    .line 398
    move-result v1

    .line 399
    if-eqz v1, :cond_b

    .line 400
    .line 401
    const-string v1, "Legacy signing details found, solve it"

    .line 402
    .line 403
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    const-class v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$SigningDetails;

    .line 407
    .line 408
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    check-cast v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$SigningDetails;

    .line 417
    .line 418
    iget-object v0, v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$SigningDetails;->b:[Landroid/content/pm/Signature;

    .line 419
    .line 420
    invoke-static {v0, v2}, Lcom/xinzhu/haunted/android/content/pm/n$a;->n([Landroid/content/pm/Signature;I)Lcom/xinzhu/haunted/android/content/pm/n$a;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    iget-object v0, v0, Lcom/xinzhu/haunted/android/content/pm/n$a;->a:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v0, Landroid/content/pm/PackageParser$SigningDetails;

    .line 430
    .line 431
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->l:Landroid/content/pm/PackageParser$SigningDetails;

    .line 432
    .line 433
    goto :goto_b

    .line 434
    :cond_b
    invoke-static {p1}, Lsa/g0;->a(Landroid/os/Parcel;)Landroid/content/pm/PackageParser$SigningDetails;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->l:Landroid/content/pm/PackageParser$SigningDetails;

    .line 439
    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    .line 441
    .line 442
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 443
    .line 444
    .line 445
    const-string v2, "trying to restore signing details corrupt "

    .line 446
    .line 447
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->l:Landroid/content/pm/PackageParser$SigningDetails;

    .line 451
    .line 452
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    .line 461
    .line 462
    goto :goto_b

    .line 463
    :catchall_0
    move-exception v0

    .line 464
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 465
    .line 466
    .line 467
    :cond_c
    :goto_b
    sget-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 468
    .line 469
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    check-cast v0, [Landroid/content/pm/Signature;

    .line 474
    .line 475
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->k:[Landroid/content/pm/Signature;

    .line 476
    .line 477
    const-class v0, Landroid/os/Bundle;

    .line 478
    .line 479
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->m:Landroid/os/Bundle;

    .line 488
    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->n:Ljava/lang/String;

    .line 494
    .line 495
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->o:I

    .line 500
    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v0

    .line 505
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->p:Ljava/lang/String;

    .line 506
    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->q:Ljava/util/ArrayList;

    .line 512
    .line 513
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->r:Ljava/util/ArrayList;

    .line 518
    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->s:I

    .line 524
    .line 525
    :try_start_1
    invoke-static {p1}, Lsa/q;->a(Landroid/os/Parcel;)Landroid/content/pm/ApplicationInfo;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->t:Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 530
    .line 531
    goto :goto_c

    .line 532
    :catchall_1
    move-exception v0

    .line 533
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 534
    .line 535
    .line 536
    :goto_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->u:Ljava/lang/String;

    .line 541
    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->w:Ljava/lang/String;

    .line 547
    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 549
    .line 550
    .line 551
    move-result v0

    .line 552
    iput v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->x:I

    .line 553
    .line 554
    sget-object v0, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 555
    .line 556
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->y:Ljava/util/ArrayList;

    .line 561
    .line 562
    sget-object v0, Landroid/content/pm/FeatureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 563
    .line 564
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 565
    .line 566
    .line 567
    move-result-object v0

    .line 568
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->z:Ljava/util/ArrayList;

    .line 569
    .line 570
    sget-object v0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->A:Ljava/lang/String;

    .line 571
    .line 572
    new-instance v1, Ljava/lang/StringBuilder;

    .line 573
    .line 574
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 575
    .line 576
    .line 577
    const-string v2, "check san "

    .line 578
    .line 579
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->t:Landroid/content/pm/ApplicationInfo;

    .line 583
    .line 584
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 585
    .line 586
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    .line 588
    .line 589
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .line 595
    .line 596
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v1

    .line 604
    const-string v2, "appendVersion"

    .line 605
    .line 606
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    move-result v1

    .line 610
    if-eqz v1, :cond_e

    .line 611
    .line 612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 613
    .line 614
    .line 615
    move-result v1

    .line 616
    const/4 v2, 0x1

    .line 617
    if-ne v1, v2, :cond_d

    .line 618
    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->v:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 624
    .line 625
    :cond_d
    return-void

    .line 626
    :catchall_2
    :cond_e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 627
    .line 628
    .line 629
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->c:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->c:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;

    .line 28
    .line 29
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->d:Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;->f:Landroid/content/pm/ActivityInfo;

    .line 40
    .line 41
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 42
    .line 43
    .line 44
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

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
    iget-object v2, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->d:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->d:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;

    .line 102
    .line 103
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->c:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->d:Landroid/os/Bundle;

    .line 109
    .line 110
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 111
    .line 112
    .line 113
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$b;->f:Landroid/content/pm/ActivityInfo;

    .line 114
    .line 115
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 116
    .line 117
    .line 118
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

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
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->e:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->e:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$g;

    .line 176
    .line 177
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->c:Ljava/lang/String;

    .line 178
    .line 179
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->d:Landroid/os/Bundle;

    .line 183
    .line 184
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 185
    .line 186
    .line 187
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$g;->f:Landroid/content/pm/ProviderInfo;

    .line 188
    .line 189
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 190
    .line 191
    .line 192
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

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
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->f:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->f:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$h;

    .line 250
    .line 251
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->c:Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->d:Landroid/os/Bundle;

    .line 257
    .line 258
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 259
    .line 260
    .line 261
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$h;->f:Landroid/content/pm/ServiceInfo;

    .line 262
    .line 263
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 264
    .line 265
    .line 266
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

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
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->g:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->g:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$d;

    .line 324
    .line 325
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->c:Ljava/lang/String;

    .line 326
    .line 327
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->d:Landroid/os/Bundle;

    .line 331
    .line 332
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 333
    .line 334
    .line 335
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$d;->f:Landroid/content/pm/InstrumentationInfo;

    .line 336
    .line 337
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 338
    .line 339
    .line 340
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

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
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->h:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->h:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$e;

    .line 398
    .line 399
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->c:Ljava/lang/String;

    .line 400
    .line 401
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->d:Landroid/os/Bundle;

    .line 405
    .line 406
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 407
    .line 408
    .line 409
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$e;->f:Landroid/content/pm/PermissionInfo;

    .line 410
    .line 411
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 412
    .line 413
    .line 414
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

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
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->i:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->i:Ljava/util/ArrayList;

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
    check-cast v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$f;

    .line 472
    .line 473
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->c:Ljava/lang/String;

    .line 474
    .line 475
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->d:Landroid/os/Bundle;

    .line 479
    .line 480
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 481
    .line 482
    .line 483
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$f;->f:Landroid/content/pm/PermissionGroupInfo;

    .line 484
    .line 485
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 486
    .line 487
    .line 488
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

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
    iget-object v3, v1, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance$c;->b:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->j:Ljava/util/ArrayList;

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
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->l:Landroid/content/pm/PackageParser$SigningDetails;

    .line 532
    .line 533
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 534
    .line 535
    .line 536
    :cond_15
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->k:[Landroid/content/pm/Signature;

    .line 537
    .line 538
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 539
    .line 540
    .line 541
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->m:Landroid/os/Bundle;

    .line 542
    .line 543
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 544
    .line 545
    .line 546
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->n:Ljava/lang/String;

    .line 547
    .line 548
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    iget v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->o:I

    .line 552
    .line 553
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    .line 555
    .line 556
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->p:Ljava/lang/String;

    .line 557
    .line 558
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->q:Ljava/util/ArrayList;

    .line 562
    .line 563
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 564
    .line 565
    .line 566
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->r:Ljava/util/ArrayList;

    .line 567
    .line 568
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 569
    .line 570
    .line 571
    iget v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->s:I

    .line 572
    .line 573
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    .line 575
    .line 576
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->t:Landroid/content/pm/ApplicationInfo;

    .line 577
    .line 578
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 579
    .line 580
    .line 581
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->u:Ljava/lang/String;

    .line 582
    .line 583
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->w:Ljava/lang/String;

    .line 587
    .line 588
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    iget p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->x:I

    .line 592
    .line 593
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    .line 595
    .line 596
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->y:Ljava/util/ArrayList;

    .line 597
    .line 598
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 599
    .line 600
    .line 601
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->z:Ljava/util/ArrayList;

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
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/MindPackageAmbulance;->v:[Ljava/lang/String;

    .line 616
    .line 617
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    return-void
.end method
