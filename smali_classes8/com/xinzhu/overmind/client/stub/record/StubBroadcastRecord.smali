.class public Lcom/xinzhu/overmind/client/stub/record/StubBroadcastRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mActivityInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mIntent:Landroid/content/Intent;

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ActivityInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/xinzhu/overmind/client/stub/record/StubBroadcastRecord;->mIntent:Landroid/content/Intent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/xinzhu/overmind/client/stub/record/StubBroadcastRecord;->mActivityInfo:Ljava/util/ArrayList;

    .line 7
    .line 8
    iput p3, p0, Lcom/xinzhu/overmind/client/stub/record/StubBroadcastRecord;->mUserId:I

    .line 9
    .line 10
    return-void
.end method

.method public static create(Landroid/content/Intent;)Lcom/xinzhu/overmind/client/stub/record/StubBroadcastRecord;
    .locals 4

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
    check-cast v0, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v1, "_VM_|_activity_info_"

    .line 10
    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "_VM_|_user_id_"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    new-instance v2, Lcom/xinzhu/overmind/client/stub/record/StubBroadcastRecord;

    .line 23
    .line 24
    invoke-direct {v2, v0, v1, p0}, Lcom/xinzhu/overmind/client/stub/record/StubBroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;I)V

    .line 25
    .line 26
    .line 27
    return-object v2
.end method

.method public static saveStub(Landroid/content/Intent;Landroid/content/Intent;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ActivityInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "_VM_|_target_"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    const-string p1, "_VM_|_activity_info_"

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

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
    return-void
.end method
