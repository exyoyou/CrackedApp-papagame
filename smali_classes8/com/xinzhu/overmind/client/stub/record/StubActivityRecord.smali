.class public Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mActivityInfo:Landroid/content/pm/ActivityInfo;

.field public mActivityRecord:Landroid/os/IBinder;

.field public mTarget:Landroid/content/Intent;

.field public mUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mUserId:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mTarget:Landroid/content/Intent;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;->mActivityRecord:Landroid/os/IBinder;

    .line 11
    .line 12
    return-void
.end method

.method public static create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;
    .locals 4

    .line 1
    const-string v0, "_VM_|_user_id_"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "_VM_|_activity_info_"

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Landroid/content/pm/ActivityInfo;

    .line 15
    .line 16
    const-string v2, "_VM_|_target_"

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v3, "_VM_|_activity_record_v_"

    .line 25
    .line 26
    invoke-static {p0, v3}, Lsa/s;->a(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    new-instance v3, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;

    .line 31
    .line 32
    invoke-direct {v3, v0, v1, v2, p0}, Lcom/xinzhu/overmind/client/stub/record/StubActivityRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 33
    .line 34
    .line 35
    return-object v3
.end method

.method public static saveStub(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;I)V
    .locals 1

    .line 1
    const-string v0, "_VM_|_user_id_"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    const-string p4, "_VM_|_activity_info_"

    .line 7
    .line 8
    invoke-virtual {p0, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string p2, "_VM_|_target_"

    .line 12
    .line 13
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string p1, "_VM_|_activity_record_v_"

    .line 17
    .line 18
    invoke-static {p0, p1, p3}, Lsa/s;->c(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
