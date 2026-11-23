.class Lcom/join/mgps/customview/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/f;->i(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/join/mgps/customview/f;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/f;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$pid",
            "val$success"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/f$c;->d:Lcom/join/mgps/customview/f;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/customview/f$c;->b:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/join/mgps/customview/f$c;->c:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/f$c;->d:Lcom/join/mgps/customview/f;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/customview/f$c;->b:I

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/join/mgps/customview/f$c;->c:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/join/mgps/customview/f;->u(Lcom/join/mgps/customview/f;IZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
