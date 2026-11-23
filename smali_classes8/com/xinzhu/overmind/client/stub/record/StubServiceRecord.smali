.class public Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mFlags:I

.field public mServiceInfo:Landroid/content/pm/ServiceInfo;

.field public mServiceIntent:Landroid/content/Intent;

.field public mStartId:I

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceIntent:Landroid/content/Intent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 7
    .line 8
    iput p3, p0, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mUserId:I

    .line 9
    .line 10
    iput p4, p0, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mStartId:I

    .line 11
    .line 12
    iput p5, p0, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;->mFlags:I

    .line 13
    .line 14
    return-void
.end method

.method public static create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;
    .locals 7

    .line 1
    const-string v0, "_VM_|_target_"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    move-object v2, v0

    .line 8
    check-cast v2, Landroid/content/Intent;

    .line 9
    .line 10
    const-string v0, "_VM_|_service_info_"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    move-object v3, v0

    .line 17
    check-cast v3, Landroid/content/pm/ServiceInfo;

    .line 18
    .line 19
    const-string v0, "_VM_|_user_id_"

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const-string v0, "_VM_|_start_id_"

    .line 27
    .line 28
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const-string v0, "_VM_|_flags_"

    .line 33
    .line 34
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    new-instance p0, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;

    .line 39
    .line 40
    move-object v1, p0

    .line 41
    invoke-direct/range {v1 .. v6}, Lcom/xinzhu/overmind/client/stub/record/StubServiceRecord;-><init>(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;III)V

    .line 42
    .line 43
    .line 44
    return-object p0
.end method

.method public static saveStub(Landroid/content/Intent;Landroid/content/Intent;Landroid/content/pm/ServiceInfo;III)V
    .locals 1

    .line 1
    const-string v0, "_VM_|_target_"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    const-string p1, "_VM_|_service_info_"

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string p1, "_VM_|_user_id_"

    .line 12
    .line 13
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    const-string p1, "_VM_|_start_id_"

    .line 17
    .line 18
    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    const-string p1, "_VM_|_flags_"

    .line 22
    .line 23
    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    return-void
.end method
