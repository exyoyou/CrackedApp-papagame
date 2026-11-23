.class Lcom/join/mgps/activity/message/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/b;->Y(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/join/mgps/activity/message/b;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/b;IILjava/lang/String;)V
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
            "val$pid",
            "val$rid",
            "val$name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/b$g;->e:Lcom/join/mgps/activity/message/b;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/message/b$g;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/activity/message/b$g;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/join/mgps/activity/message/b$g;->d:Ljava/lang/String;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/b$g;->e:Lcom/join/mgps/activity/message/b;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/activity/message/b$g;->b:I

    .line 4
    .line 5
    iget v2, p0, Lcom/join/mgps/activity/message/b$g;->c:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/join/mgps/activity/message/b$g;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/activity/message/b;->i0(Lcom/join/mgps/activity/message/b;IILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
