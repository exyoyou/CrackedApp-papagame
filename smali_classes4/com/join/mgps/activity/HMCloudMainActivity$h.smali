.class Lcom/join/mgps/activity/HMCloudMainActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/OnSendMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HMCloudMainActivity;->sendMessage(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/activity/HMCloudMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HMCloudMainActivity;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$payload",
            "val$retry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$h;->c:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/HMCloudMainActivity$h;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/activity/HMCloudMainActivity$h;->b:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public result(ZLjava/lang/String;)V
    .locals 1
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
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$h;->b:Z

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$h;->c:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 9
    .line 10
    iget-object p2, p0, Lcom/join/mgps/activity/HMCloudMainActivity$h;->a:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p1, p2, v0}, Lcom/join/mgps/activity/HMCloudMainActivity;->access$000(Lcom/join/mgps/activity/HMCloudMainActivity;Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method
