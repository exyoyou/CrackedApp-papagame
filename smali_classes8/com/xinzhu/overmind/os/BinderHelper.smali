.class public Lcom/xinzhu/overmind/os/BinderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static b()Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/xinzhu/overmind/server/h;->b(I)Lcom/xinzhu/overmind/server/ProcessRecord;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;

    .line 14
    .line 15
    invoke-direct {v2}, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;-><init>()V

    .line 16
    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iput v0, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 21
    .line 22
    iget v0, v1, Lcom/xinzhu/overmind/server/ProcessRecord;->vuid:I

    .line 23
    .line 24
    iput v0, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 25
    .line 26
    iget v1, v1, Lcom/xinzhu/overmind/server/ProcessRecord;->userId:I

    .line 27
    .line 28
    iput v1, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 29
    .line 30
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/x;->c(I)Lcom/xinzhu/haunted/android/os/x;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lcom/xinzhu/haunted/android/os/x;->a:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, Landroid/os/UserHandle;

    .line 37
    .line 38
    iput-object v0, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->e:Landroid/os/UserHandle;

    .line 39
    .line 40
    return-object v2

    .line 41
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iput v0, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->b:I

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iput v0, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->c:I

    .line 52
    .line 53
    invoke-static {v0}, Lcom/xinzhu/overmind/server/user/MindUserHandle;->x(I)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    iput v0, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->d:I

    .line 58
    .line 59
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, v2, Lcom/xinzhu/overmind/os/BinderHelper$CallingInfo;->e:Landroid/os/UserHandle;

    .line 64
    .line 65
    return-object v2
.end method

.method public static c(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
