.class public Lcom/xinzhu/overmind/server/os/h;
.super Lcom/xinzhu/overmind/server/os/c$b;
.source "SourceFile"

# interfaces
.implements Lcom/xinzhu/overmind/server/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/server/os/h$a;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "h"

.field private static sService:Lcom/xinzhu/overmind/server/os/h;


# instance fields
.field cached_notifications:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/xinzhu/overmind/server/os/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/os/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/os/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/xinzhu/overmind/server/os/h;->sService:Lcom/xinzhu/overmind/server/os/h;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/os/c$b;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xinzhu/overmind/server/os/h;->cached_notifications:Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "notification"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Landroid/app/NotificationManager;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/xinzhu/overmind/server/os/h;->mNotificationManager:Landroid/app/NotificationManager;

    .line 24
    .line 25
    return-void
.end method

.method public static get()Lcom/xinzhu/overmind/server/os/h;
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/server/os/h;->sService:Lcom/xinzhu/overmind/server/os/h;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public solveAddNotification(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/os/h;->cached_notifications:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/xinzhu/overmind/server/os/h$a;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/xinzhu/overmind/server/os/h$a;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v2, p4}, Lcom/xinzhu/overmind/utils/wrappers/ObjectsWrapper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget v2, v1, Lcom/xinzhu/overmind/server/os/h$a;->c:I

    .line 28
    .line 29
    if-ne v2, p3, :cond_0

    .line 30
    .line 31
    iget-object v2, v1, Lcom/xinzhu/overmind/server/os/h$a;->a:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget v2, v1, Lcom/xinzhu/overmind/server/os/h$a;->b:I

    .line 40
    .line 41
    if-ne v2, p2, :cond_0

    .line 42
    .line 43
    iget-object p1, v1, Lcom/xinzhu/overmind/server/os/h$a;->e:Ljava/lang/String;

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_1
    sget-object v0, Lcom/xinzhu/overmind/server/os/h;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v2, "CachedNotificationInfo "

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v2, " "

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/xinzhu/overmind/server/os/h$a;

    .line 77
    .line 78
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xinzhu/overmind/server/os/h$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/xinzhu/overmind/server/os/h;->cached_notifications:Ljava/util/HashSet;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    iget-object p1, v0, Lcom/xinzhu/overmind/server/os/h$a;->e:Ljava/lang/String;

    .line 87
    .line 88
    return-object p1
.end method

.method public solveCancelAllNotifications(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/os/h;->cached_notifications:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/xinzhu/overmind/server/os/h$a;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/xinzhu/overmind/server/os/h$a;->a:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget v2, v1, Lcom/xinzhu/overmind/server/os/h$a;->b:I

    .line 28
    .line 29
    if-ne v2, p2, :cond_0

    .line 30
    .line 31
    iget-object v2, p0, Lcom/xinzhu/overmind/server/os/h;->mNotificationManager:Landroid/app/NotificationManager;

    .line 32
    .line 33
    iget-object v3, v1, Lcom/xinzhu/overmind/server/os/h$a;->e:Ljava/lang/String;

    .line 34
    .line 35
    iget v4, v1, Lcom/xinzhu/overmind/server/os/h$a;->c:I

    .line 36
    .line 37
    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    iget-object v2, p0, Lcom/xinzhu/overmind/server/os/h;->cached_notifications:Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    return-void
.end method

.method public solveCancelNotification(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/os/h;->cached_notifications:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/xinzhu/overmind/server/os/h$a;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/xinzhu/overmind/server/os/h$a;->d:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v2, p4}, Lcom/xinzhu/overmind/utils/wrappers/ObjectsWrapper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget v2, v1, Lcom/xinzhu/overmind/server/os/h$a;->c:I

    .line 28
    .line 29
    if-ne v2, p3, :cond_0

    .line 30
    .line 31
    iget-object v2, v1, Lcom/xinzhu/overmind/server/os/h$a;->a:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget v2, v1, Lcom/xinzhu/overmind/server/os/h$a;->b:I

    .line 40
    .line 41
    if-ne v2, p2, :cond_0

    .line 42
    .line 43
    iget-object p1, p0, Lcom/xinzhu/overmind/server/os/h;->cached_notifications:Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    iget-object p1, v1, Lcom/xinzhu/overmind/server/os/h$a;->e:Ljava/lang/String;

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_1
    const/4 p1, 0x0

    .line 52
    return-object p1
.end method

.method public systemReady()V
    .locals 0

    return-void
.end method
