.class Lcom/join/mgps/activity/HMCloudMainActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnSendMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HMCloudMainActivity;->onCloudDeviceStatus(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/HMCloudMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HMCloudMainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$i;->a:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public result(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "b",
            "s"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$i;->a:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/HMCloudMainActivity;->toastLive:Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    const-string p2, "\u622a\u56fe\u5931\u8d25"

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
