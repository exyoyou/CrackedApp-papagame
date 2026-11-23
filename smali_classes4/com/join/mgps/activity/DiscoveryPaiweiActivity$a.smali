.class Lcom/join/mgps/activity/DiscoveryPaiweiActivity$a;
.super Lcom/join/android/app/common/http/d$p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->getPaiweiGameList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/android/app/common/http/d$p<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$a;->b:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/join/android/app/common/http/d$p;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public d(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "request",
            "e"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$a;->b:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->showLodingFailed()V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$a;->b:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-static {p1, p2}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->access$002(Lcom/join/mgps/activity/DiscoveryPaiweiActivity;Z)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "rs"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$a;->f(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rs"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/DiscoveryPaiweiActivity$a;->b:Lcom/join/mgps/activity/DiscoveryPaiweiActivity;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/DiscoveryPaiweiActivity;->updateGameList(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
