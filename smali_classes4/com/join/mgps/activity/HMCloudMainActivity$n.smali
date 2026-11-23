.class Lcom/join/mgps/activity/HMCloudMainActivity$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HMCloudMainActivity;->collectOpInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/haima/hmcp/beans/HMInputOpData;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/HMCloudMainActivity;


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
    iput-object p1, p0, Lcom/join/mgps/activity/HMCloudMainActivity$n;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/haima/hmcp/beans/HMInputOpData;)Lkotlin/Unit;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HMCloudMainActivity$n;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/HMCloudMainActivity;->hm_video_view:Lcom/haima/hmcp/widgets/HmcpVideoView;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/widgets/BaseVideoView;->sendCustomKeycode(Lcom/haima/hmcp/beans/HMInputOpData;)Z

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/haima/hmcp/beans/HMInputOpData;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HMCloudMainActivity$n;->a(Lcom/haima/hmcp/beans/HMInputOpData;)Lkotlin/Unit;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
