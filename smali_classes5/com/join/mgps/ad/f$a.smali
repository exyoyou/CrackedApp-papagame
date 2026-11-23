.class Lcom/join/mgps/ad/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qq/e/comm/listeners/NegativeFeedbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/ad/f;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/ad/f;


# direct methods
.method constructor <init>(Lcom/join/mgps/ad/f;)V
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
    iput-object p1, p0, Lcom/join/mgps/ad/f$a;->a:Lcom/join/mgps/ad/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onComplainSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/ad/f$a;->a:Lcom/join/mgps/ad/f;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/ad/d;->d:Ljava/lang/String;

    .line 4
    .line 5
    return-void
.end method
