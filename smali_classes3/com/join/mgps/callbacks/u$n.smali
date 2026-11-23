.class Lcom/join/mgps/callbacks/u$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/callbacks/u;->shareToOneImageOrText(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/callbacks/u;


# direct methods
.method constructor <init>(Lcom/join/mgps/callbacks/u;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$shareTo",
            "val$message",
            "val$shareType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/callbacks/u$n;->e:Lcom/join/mgps/callbacks/u;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/callbacks/u$n;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/callbacks/u$n;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/callbacks/u$n;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/callbacks/u$n;->e:Lcom/join/mgps/callbacks/u;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/callbacks/u;->c(Lcom/join/mgps/callbacks/u;)Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/Context;

    .line 12
    .line 13
    iget v1, p0, Lcom/join/mgps/callbacks/u$n;->b:I

    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/callbacks/u$n;->c:Ljava/lang/String;

    .line 16
    .line 17
    iget v3, p0, Lcom/join/mgps/callbacks/u$n;->d:I

    .line 18
    .line 19
    const/4 v4, 0x5

    .line 20
    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/w;->q(Landroid/content/Context;ILjava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
