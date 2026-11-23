.class Lcom/join/mgps/activity/GameInformationActivityV2$n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameInformationActivityV2$n;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameInformationActivityV2$n;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameInformationActivityV2$n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public intentCommentList()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$200(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$a;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n$a;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public playVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "videoUrl",
            "imageUrl"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$200(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$b;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1, p2}, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$b;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public startIntent(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "json"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$n$a;->a:Lcom/join/mgps/activity/GameInformationActivityV2$n;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/GameInformationActivityV2$n;->e:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/activity/GameInformationActivityV2;->access$200(Lcom/join/mgps/activity/GameInformationActivityV2;)Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$c;

    .line 10
    .line 11
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/GameInformationActivityV2$n$a$c;-><init>(Lcom/join/mgps/activity/GameInformationActivityV2$n$a;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
