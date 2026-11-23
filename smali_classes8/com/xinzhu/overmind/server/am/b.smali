.class public Lcom/xinzhu/overmind/server/am/b;
.super Landroid/os/Binder;
.source "SourceFile"


# instance fields
.field public component:Landroid/content/ComponentName;

.field public finished:Z

.field public info:Landroid/content/pm/ActivityInfo;

.field public intent:Landroid/content/Intent;

.field public launchedFromPackage:Ljava/lang/String;

.field public launchedFromUid:I

.field public processRecord:Lcom/xinzhu/overmind/server/ProcessRecord;

.field public resultTo:Landroid/os/IBinder;

.field public task:Lcom/xinzhu/overmind/server/am/h;

.field public token:Landroid/os/IBinder;

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static create(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;ILjava/lang/String;I)Lcom/xinzhu/overmind/server/am/b;
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/am/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/am/b;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p0, v0, Lcom/xinzhu/overmind/server/am/b;->intent:Landroid/content/Intent;

    .line 7
    .line 8
    iput-object p1, v0, Lcom/xinzhu/overmind/server/am/b;->info:Landroid/content/pm/ActivityInfo;

    .line 9
    .line 10
    new-instance p0, Landroid/content/ComponentName;

    .line 11
    .line 12
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 13
    .line 14
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 15
    .line 16
    invoke-direct {p0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p0, v0, Lcom/xinzhu/overmind/server/am/b;->component:Landroid/content/ComponentName;

    .line 20
    .line 21
    iput-object p2, v0, Lcom/xinzhu/overmind/server/am/b;->resultTo:Landroid/os/IBinder;

    .line 22
    .line 23
    iput p3, v0, Lcom/xinzhu/overmind/server/am/b;->userId:I

    .line 24
    .line 25
    iput-object p4, v0, Lcom/xinzhu/overmind/server/am/b;->launchedFromPackage:Ljava/lang/String;

    .line 26
    .line 27
    iput p5, v0, Lcom/xinzhu/overmind/server/am/b;->launchedFromUid:I

    .line 28
    .line 29
    return-object v0
.end method
