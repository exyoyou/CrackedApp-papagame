.class Lcom/join/mgps/fragment/v$l$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v$l;->shareToOneImageOrText(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/join/mgps/fragment/v$l;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v$l;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
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
    iput-object p1, p0, Lcom/join/mgps/fragment/v$l$e;->e:Lcom/join/mgps/fragment/v$l;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/fragment/v$l$e;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/fragment/v$l$e;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput p4, p0, Lcom/join/mgps/fragment/v$l$e;->d:I

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
    iget-object v0, p0, Lcom/join/mgps/fragment/v$l$e;->e:Lcom/join/mgps/fragment/v$l;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/v$l;->a:Lcom/join/mgps/fragment/v;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/fragment/v;->Y(Lcom/join/mgps/fragment/v;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/join/mgps/fragment/v$l$e;->b:I

    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/fragment/v$l$e;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget v3, p0, Lcom/join/mgps/fragment/v$l$e;->d:I

    .line 14
    .line 15
    const/4 v4, 0x5

    .line 16
    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/w;->q(Landroid/content/Context;ILjava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
