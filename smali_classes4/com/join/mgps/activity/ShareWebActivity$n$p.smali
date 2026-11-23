.class Lcom/join/mgps/activity/ShareWebActivity$n$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ShareWebActivity$n;->goMainLabel(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/ShareWebActivity$n;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ShareWebActivity$n;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$tag_id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$p;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/ShareWebActivity$n$p;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ShareWebActivity$n$p;->c:Lcom/join/mgps/activity/ShareWebActivity$n;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/ShareWebActivity$n;->c:Lcom/join/mgps/activity/ShareWebActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/ShareWebActivity$n$p;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ShareWebActivity;->goMyMainLabel(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
