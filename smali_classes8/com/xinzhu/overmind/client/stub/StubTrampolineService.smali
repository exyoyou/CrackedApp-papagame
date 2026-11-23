.class public Lcom/xinzhu/overmind/client/stub/StubTrampolineService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "StubTrampolineService"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 1
    sget-object p3, Lcom/xinzhu/overmind/client/stub/StubTrampolineService;->b:Ljava/lang/String;

    .line 2
    .line 3
    const-string v0, "StubTrampolineService onStartCommand"

    .line 4
    .line 5
    invoke-static {p3, v0}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    const/4 p3, 0x2

    .line 9
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->sanityCheck()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return p3

    .line 20
    :cond_0
    iget-object v0, p1, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mTarget:Landroid/content/Intent;

    .line 21
    .line 22
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget v3, p1, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mUserId:I

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    invoke-virtual {v1, v0, v4, v2, v3}, Lma/g;->C(Landroid/content/Intent;ILjava/lang/String;I)Landroid/content/pm/ResolveInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindActivityManager()Lma/a;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget p1, p1, Lcom/xinzhu/overmind/client/stub/record/StubTrampolineRecord;->mUserId:I

    .line 48
    .line 49
    invoke-virtual {v1, v0, v2, p1, p2}, Lma/a;->startService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return p3
.end method
